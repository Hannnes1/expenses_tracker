package repository

import (
	"log"

	"hultergard.com/expenses_tracker/models"
)

func Transactions(offset int, limit int) ([]models.Transaction, error) {
	var transactions []models.Transaction

	rows, err := DB.Query("SELECT * FROM transactions LIMIT ? OFFSET ?", limit, offset)
	if err != nil {
		log.Fatal(err)
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var t models.Transaction
		if err := rows.Scan(&t.Id, &t.Date, &t.Account, &t.VerificationNumber, &t.Text, &t.Description, &t.Amount); err != nil {
			log.Fatal(err)
			return nil, err
		}
		transactions = append(transactions, t)
	}

	if err := rows.Err(); err != nil {
		log.Fatal(err)
		return nil, err
	}

	return transactions, nil
}
