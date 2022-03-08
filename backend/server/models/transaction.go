package models

type Transaction struct {
	ID                 int64   `json:"id"`
	Date               string  `json:"date" binding:"required,iso8601"`
	Account            string  `json:"account" binding:"required,max=20"`
	VerificationNumber string  `json:"verification_number" binding:"max=20"`
	Text               string  `json:"text" binding:"required,max=45"`
	Description        string  `json:"description" binding:"max=255"`
	Amount             float64 `json:"amount"`
	Categories         []int64 `json:"categories"`
}

type TransactionCategory struct {
	TransactionID int64 `json:"transaction_id"`
	CategoryID    int64 `json:"category_id"`
}

type TransactionAddBody struct {
	Transactions []Transaction `json:"transactions" binding:"required"`
}

type TransactionGetListBody struct {
	TotalCount   int64         `json:"total_count"`
	Transactions []Transaction `json:"transactions"`
}
