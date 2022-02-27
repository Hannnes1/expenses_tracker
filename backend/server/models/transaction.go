package models

type Transaction struct {
	Id                 int64   `json:"id"`
	Date               string  `json:"date"`
	Account            string  `json:"account"`
	VerificationNumber string  `json:"verification_number"`
	Text               string  `json:"text"`
	Description        string  `json:"description" maxLength:"255"`
	Amount             float64 `json:"amount"`
	Category           string  `json:"category"`
}
