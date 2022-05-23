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
		if err := rows.Scan(&c.Id, &c.Name, &c.Description, &c.Internal); err != nil {
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

func AddCategories(categories []models.Category) error {
	query := "INSERT INTO categories (name, description, internal) VALUES "
	sqlValues := make([]string, len(categories))
	args := []interface{}{}

	// Build the query and the value list row by row, while also building a list of arguments.
	for i, c := range categories {
		const rowArgs = "(?, ?, ?)"
		sqlValues[i] = rowArgs
		args = append(args, c.Name, c.Description)
	}

	// Join the query and the value list, separated by a comma.
	query += strings.Join(sqlValues, ", ")

	_, err := DB.Exec(query, args...)
	if err != nil {
		return err
	}
	return nil
}
