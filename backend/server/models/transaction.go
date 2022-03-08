package models

type Transaction struct {
	ID                 int64   `json:"id"`
	Amount             float64 `json:"amount"`
	Categories         []int64 `json:"categories"`
}

type TransactionCategory struct {
	TransactionID int64 `json:"transaction_id"`
	CategoryID    int64 `json:"category_id"`
}
