package controllers

import (
	"github.com/gin-gonic/gin"
	"hultergard.com/expenses_tracker/models"
	"hultergard.com/expenses_tracker/repository"
)

type Transaction struct{}

// @description  Get a list of all transactions
// @param        offset  query    int  false  "Offset for pagination"
// @param        limit   query    int  false  "Number of results to return, defaults to 10"
// @success      200     {array}  models.Transaction
// @router       /transactions [get]
func (Transaction) GetList(c *gin.Context) {
	limit, offset := pagination(c)

	transactions, err := repository.Transactions(offset, limit)
	if err != nil {
		c.IndentedJSON(500, models.InternalError(""))
		return
	}

	c.IndentedJSON(200, transactions)
}
