package models

type Transaction struct {
	Id                 int64    `json:"id"`
	Date               string   `json:"date" validate:"required,iso8601"`
	Account            string   `json:"account"`
	VerificationNumber string   `json:"verification_number"`
	Text               string   `json:"text"`
	Description        string   `json:"description" validate:"required,max=255"`
	Amount             float64  `json:"amount"`
	Category           []string `json:"category"`
}
