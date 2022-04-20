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
// @success      200     {object}  models.TransactionGetListBody
// @router       /transactions [get]
func (Transaction) GetList(c *gin.Context) {
	limit, offset := pagination(c)

	transactions, err := repository.GetTransactions(offset, limit)
	if err != nil {
		c.IndentedJSON(500, models.InternalError("Could not retrieve transactions"))
		return
	}

	count := repository.TransactionsCount()

	// Return an empty list instead of null if there are no transactions.
	if transactions == nil {
		transactions = make([]models.Transaction, 0)
	}

	c.IndentedJSON(200, models.TransactionGetListBody{
		Transactions: transactions,
		TotalCount:   count,
	})
}

// @description  Add multiple new transactions
// @param        transactions   body    []models.Transaction  true  "The transaction to add"
// @success      204
// @router       /transactions [post]
func (Transaction) Add(c *gin.Context) {
	var body models.TransactionAddBody

	if err := c.ShouldBindJSON(&body); err != nil {
		c.IndentedJSON(400, models.BadRequestError(err.Error()))
		return
	}

	err := repository.AddTransactions(body.Transactions)
	if err != nil {
		c.IndentedJSON(500, models.InternalError("The transactions could not be added"))
		return
	}

	c.Status(204)
}
