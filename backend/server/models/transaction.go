package models

type Transaction struct {
	ID                 int     `json:"id"`
	Date               string  `json:"date" validate:"required,iso8601"`
	Account            string  `json:"account"`
	VerificationNumber string  `json:"verification_number"`
	Text               string  `json:"text"`
	Description        string  `json:"description" validate:"required,max=255"`
	Amount             float64 `json:"amount"`
	Categories         []int   `json:"categories"`
}

type TransactionCategory struct {
	TransactionID int `json:"transaction_id"`
	CategoryID    int `json:"category_id"`
}
