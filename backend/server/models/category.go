package models

type Category struct {
	// The ID of the category.
	//
	// Will be ignored when writing.
	Id          int    `json:"id"`
	Name        string `json:"name" binding:"required,max=45"`
	Description string `json:"description" binding:"max=255"`
}

type CategoryAddBody struct {
	Categories []Category `json:"categories" binding:"required,dive"`
}
