package repository

import (
	"strings"

	"hultergard.com/expenses_tracker/models"
)

func GetTransactions(offset int, limit int) ([]models.Transaction, error) {
	var transactions []models.Transaction

	rows, err := DB.Query("SELECT * FROM transactions LIMIT ? OFFSET ?", limit, offset)
	if err != nil {
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var t models.Transaction
		if err := rows.Scan(&t.ID, &t.Date, &t.Account, &t.VerificationNumber, &t.Text, &t.Description, &t.Amount, &t.CategoryId); err != nil {
			return nil, err
		}
		transactions = append(transactions, t)
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return transactions, nil
}

// Add a new transaction to the database.
//
// The id of the transaction is returned if successfull.
func AddTransactions(transactions []models.Transaction) error {

	query := "INSERT INTO transactions (date, account, verification_number, text, description, amount, category_id) VALUES "
	sqlValues := make([]string, len(transactions))
	args := []interface{}{}

	// Build the query and the value list row by row, while also building a list of arguments.
	for i, t := range transactions {
		const rowArgs = "(?, ?, ?, ?, ?, ?, ?)"
		sqlValues[i] = rowArgs
		args = append(args, t.Date, t.Account, t.VerificationNumber, t.Text, t.Description, t.Amount, t.CategoryId)
	}

	// Join the query and the value list, separated by a comma.
	query += strings.Join(sqlValues, ", ")

	_, err := DB.Exec(query, args...)
	if err != nil {
		return err
	}
	return nil
}

// Get the total number of transactions in the database.
func TransactionsCount() int64 {
	var count int64
	err := DB.QueryRow("SELECT COUNT(*) FROM transactions").Scan(&count)
	if err != nil {
		return 0
	}
	return count
}

// Get the result (income & expenses) grouped my month.
func GetResultByMonth(firstDate string, lastDate string) ([]models.ResultByMonth, error) {
	var result []models.ResultByMonth

	rows, err := DB.Query(
		`SELECT YEAR(date) as year, MONTH(date) as month,
		 SUM(CASE WHEN amount > 0 THEN amount ELSE 0 END) as income,
		 SUM(CASE WHEN amount < 0 THEN amount ELSE 0 END) as expenses,
		 internal
		 FROM transactions.transactions
		 LEFT JOIN
		 transactions.categories
		 ON transactions.category_id = categories.id
		 WHERE date >= ? AND date <= ?
		 GROUP BY YEAR(date), MONTH(date), internal
		 ORDER BY YEAR(date), MONTH(date)`,
		firstDate, lastDate)
	if err != nil {
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var r models.ResultByMonth
		if err := rows.Scan(&r.Year, &r.Month, &r.Income, &r.Expenses, &r.Internal); err != nil {
			return nil, err
		}

		result = append(result, r)
	}

	if err := rows.Err(); err != nil {
		return nil, err
	}

	return result, nil
}
