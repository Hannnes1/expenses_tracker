package repository

import (
	"log"

	"hultergard.com/expenses_tracker/models"
)

func Categories() ([]models.Category, error) {
	var categories []models.Category

	rows, err := DB.Query("SELECT * FROM categories")
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
