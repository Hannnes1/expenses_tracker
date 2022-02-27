package controllers

import (
	"strconv"

	"github.com/gin-gonic/gin"
	"hultergard.com/expenses_tracker/models"
	"hultergard.com/expenses_tracker/repository"
)

type Category struct{}

// @description Get a list of all categories
// @param        id[]	 query    array  false  "Category IDs to filter by"
// @success      200     {array}  models.Category
// @router       /categories [get]
func (Category) GetList(c *gin.Context) {
	idsStr := c.QueryArray("id[]")

	ids := make([]int, len(idsStr))

	for i, id := range idsStr {
		ids[i], _ = strconv.Atoi(id)
	}

	categories, err := repository.Categories(ids)
	if err != nil {
		c.IndentedJSON(500, models.InternalError(""))
		return
	}

	c.IndentedJSON(200, categories)
}
