package repository

import (
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
func AddTransaction(transaction models.Transaction) (int64, error) {
	res, err := DB.Exec("INSERT INTO transactions (date, account, verification_number, text, description, amount) VALUES (?, ?, ?, ?, ?, ?)",
		transaction.Date,
		transaction.Account,
		transaction.VerificationNumber,
		transaction.Text,
		transaction.Description,
		transaction.Amount,
	)
	if err != nil {
		return 0, err
	}

	id, err := res.LastInsertId()
	if err != nil {
		return 0, err
	}

	return id, nil
}
