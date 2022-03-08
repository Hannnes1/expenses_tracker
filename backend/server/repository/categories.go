package repository

import (
	"database/sql"
	"log"
	"strings"

	"hultergard.com/expenses_tracker/models"
)

func Categories(categoryIDs []int) ([]models.Category, error) {
	var categories []models.Category
	var rows *sql.Rows

	var query string
	if len(categoryIDs) == 0 {
		query = "SELECT * FROM categories"
	} else {
		query = "SELECT * FROM categories WHERE id IN (?" + strings.Repeat(",?", len(categoryIDs)-1) + ")"
	}

	args := make([]interface{}, len(categoryIDs))
	if len(categoryIDs) > 0 {
		for i, id := range categoryIDs {
			args[i] = id
		}
	}

	rows, err := DB.Query(query, args...)
	if err != nil {
		log.Fatal(err)
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var c models.Category
		if err := rows.Scan(&c.Id, &c.Name, &c.Description); err != nil {
			log.Fatal(err)
			return nil, err
		}
		categories = append(categories, c)
	}

	if err := rows.Err(); err != nil {
		log.Fatal(err)
		return nil, err
	}

	return categories, nil
}

func CategoryIDsByTransactions(transactionIDs []int64) ([]models.TransactionCategory, error) {
	var transactionCategories []models.TransactionCategory
	var rows *sql.Rows

	if len(transactionIDs) == 0 {
		return nil, nil
	}

	// Create a string with one question mark for each transaction ID
	query := "SELECT transactions_id, categories_id FROM transaction_has_category WHERE transactions_id IN (?" + strings.Repeat(",?", len(transactionIDs)-1) + ")"

	args := make([]interface{}, len(transactionIDs))
	for i, id := range transactionIDs {
		args[i] = id
	}

	rows, err := DB.Query(query, args...)
	if err != nil {
		log.Fatal(err)
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var tc models.TransactionCategory
		if err := rows.Scan(&tc.TransactionID, &tc.CategoryID); err != nil {
			log.Fatal(err)
			return nil, err
		}
		transactionCategories = append(transactionCategories, tc)
	}

	if err := rows.Err(); err != nil {
		log.Fatal(err)
		return nil, err
	}

	return transactionCategories, nil
}
