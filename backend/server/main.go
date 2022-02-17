package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/go-openapi/strfmt"
	"hultergard.com/expenses_tracker/models"
)

var account = "12345"
var amount = 10.0
var date, err = strfmt.ParseDateTime("2020-01-01T00:00:00Z")
var text = "test"

var transactions = []models.Transaction{
	{ID: 1, Account: &account, Amount: &amount, Date: &date, Text: &text, VerificationNumber: "12345"},
}

func getTransactions(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, transactions)
}

func main() {
	router := gin.Default()
	router.GET("/transactions", getTransactions)

	router.Run("localhost:8080")
}
