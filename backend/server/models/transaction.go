package models

type Transaction struct {
	// The ID of the transaction.
	//
	// Will be ignored when writing.
	ID                 int64   `json:"id"`
	Date               string  `json:"date" binding:"required,iso8601"`
	Account            string  `json:"account" binding:"required,max=20"`
	VerificationNumber string  `json:"verificationNumber" binding:"max=20"`
	Text               string  `json:"text" binding:"required,max=45"`
	Description        string  `json:"description" binding:"max=255"`
	Amount             float64 `json:"amount" binding:"required"`
	CategoryId         *int64  `json:"categoryId"`
}

type TransactionAddBody struct {
	Transactions []Transaction `json:"transactions" binding:"required"`
}

type TransactionGetListBody struct {
	TotalCount   int64         `json:"totalCount"`
	Transactions []Transaction `json:"transactions"`
}

type ResultByMonth struct {
	Year     int64   `json:"year"`
	Month    int64   `json:"month"`
	Income   float64 `json:"income"`
	Expenses float64 `json:"expenses"`
	Internal bool    `json:"internal"`
}
