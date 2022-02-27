package repository

import (
	"database/sql"
	"log"

	"hultergard.com/expenses_tracker/models"
)

func Categories(categoryIDs []int) ([]models.Category, error) {
	var categories []models.Category
	var rows *sql.Rows

	var query string
	if len(categoryIDs) == 0 {
		query = "SELECT * FROM categories"
	} else {
		query = "SELECT * FROM categories WHERE id IN ?"
	}

	rows, err := DB.Query(query, categoryIDs)
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

func CategoryIDsByTransaction(transactionID int) ([]int, error) {
	var ids []int
	var rows *sql.Rows

	rows, err := DB.Query("SELECT categories_id FROM transaction_has_category WHERE transactions_id = ?", transactionID)
	if err != nil {
		log.Fatal(err)
		return nil, err
	}

	defer rows.Close()

	for rows.Next() {
		var id int
		if err := rows.Scan(&id); err != nil {
			log.Fatal(err)
			return nil, err
		}
		ids = append(ids, id)
	}

	if err := rows.Err(); err != nil {
		log.Fatal(err)
		return nil, err
	}

	return ids, nil
}
