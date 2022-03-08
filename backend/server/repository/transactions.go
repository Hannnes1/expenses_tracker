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
		if err := rows.Scan(&t.ID, &t.Date, &t.Account, &t.VerificationNumber, &t.Text, &t.Description, &t.Amount); err != nil {
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

	query := "INSERT INTO transactions (date, account, verification_number, text, description, amount) VALUES "
	sqlValues := make([]string, len(transactions))
	args := []interface{}{}

	// Build the query and the value list row by row, while also building a list of arguments.
	for i, t := range transactions {
		const rowArgs = "(?, ?, ?, ?, ?, ?)"
		sqlValues[i] = rowArgs
		args = append(args, t.Date, t.Account, t.VerificationNumber, t.Text, t.Description, t.Amount)
	}

	// Join the query and the value list, separated by a comma.
	query += strings.Join(sqlValues, ", ")

	_, err := DB.Exec(query, args...)
	if err != nil {
		return err
	}
	return nil
}
