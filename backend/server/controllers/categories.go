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

	var ids []int
	// If the array of id:s has length one and the value is an empty string,
	// It should be interpreted as empty.
	if len(idsStr) == 1 && idsStr[0] == "" {
		ids = []int{}
	} else {
		ids = make([]int, len(idsStr))

		for i, id := range idsStr {
			ids[i], _ = strconv.Atoi(id)
		}
	}

	categories, err := repository.Categories(ids)
	if err != nil {
		c.IndentedJSON(500, models.InternalError())
		return
	}

	// Return an empty list instead of null if there are no transactions.
	if categories == nil {
		categories = make([]models.Category, 0)
	}

	c.IndentedJSON(200, categories)
}

// @description Add multiple new categories
// @param categories  body []models.Category  true  "Array of categories to add"
// @success 204
// @router /categories [post]
func (Category) Add(c *gin.Context) {
	var body models.CategoryAddBody

	err := c.ShouldBindJSON(&body)
	if err != nil {
		c.IndentedJSON(400, models.BadRequestError(err.Error()))
		return
	}

	err = repository.AddCategories(body.Categories)
	if err != nil {
		c.IndentedJSON(500, models.InternalError("The categories could not be added"))
		return
	}

	c.Status(204)
}
