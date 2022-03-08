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

	transactions, err := repository.GetTransactions(offset, limit)
	if err != nil {
		c.IndentedJSON(500, models.InternalError(""))
		return
	}

	// Create a list of transaction IDs to be able to get the categories for each transaction.
	tIDs := make([]int64, len(transactions))
	for i, t := range transactions {
		tIDs[i] = t.ID
	}

	// Get all category IDs for the transactions.
	tc, err := repository.CategoryIDsByTransactions(tIDs)
	if err != nil {
		c.IndentedJSON(500, models.InternalError(""))
		return
	}

	// Update each transaction with the correct category IDs.
	for i := range transactions {
		t := &transactions[i]

		t.Categories = make([]int64, 0)

		for _, c := range tc {
			if t.ID == c.TransactionID {
				t.Categories = append(t.Categories, c.CategoryID)
			}
		}
	}

	c.IndentedJSON(200, transactions)
}

// @description  Add a new transaction
// @param        transaction   body    models.Transaction  true  "The transaction to add"
// @success      200     {object}  models.Transaction
// @router       /transactions [post]
func (Transaction) Add(c *gin.Context) {
	var transaction models.Transaction

	if err := c.ShouldBindJSON(&transaction); err != nil {
		c.IndentedJSON(400, models.BadRequestError(err.Error()))
		return
	}

	id, err := repository.AddTransaction(transaction)
	if err != nil {
		c.IndentedJSON(500, models.InternalError("The transaction could not be added."))
		return
	}

	transaction.ID = id

	// Create an empty list of categories for the transaction instead of returning null.
	if transaction.Categories == nil {
		transaction.Categories = []int64{}
	}

	c.IndentedJSON(201, transaction)
}
