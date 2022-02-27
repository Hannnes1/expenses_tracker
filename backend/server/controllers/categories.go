package controllers

import (
	"github.com/gin-gonic/gin"
	"hultergard.com/expenses_tracker/models"
	"hultergard.com/expenses_tracker/repository"
)

type Category struct{}

// @description Get a list of all categories
// @success      200     {array}  models.Category
// @router       /categories [get]
func (Category) GetList(c *gin.Context) {

	categories, err := repository.Categories()
	if err != nil {
		c.IndentedJSON(500, models.InternalError(""))
		return
	}

	c.IndentedJSON(200, categories)
}
