package models

type Category struct {
	Id          int    `json:"id"`
	Name        string `json:"name" validate:"required,max=45"`
	Description string `json:"description" validate:"max=255"`
}
