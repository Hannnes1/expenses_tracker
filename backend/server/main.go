package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
	"hultergard.com/expenses_tracker/docs"
	"hultergard.com/expenses_tracker/models"
)

var transactions = []models.Transaction{
	{
		Id:                 1,
		Date:               "2018-01-01",
		Account:            "Checking",
		VerificationNumber: "123",
		Text:               "Paycheck",
		Description:        "Paycheck for January",
		Amount:             100.00,
		Category:           "Income",
	},
}

// @title    Expenses Tracker API
// @version  0.1
func main() {
	router := gin.Default()

	docs.SwaggerInfo.BasePath = "/api/v1"

	router.GET("/transactions", getTransactions)
	router.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	router.Run("localhost:8080")
}

// @description  Get a list of all transactions
// @success      200  {array}  models.Transaction
// @router       /transactions [get]
func getTransactions(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, transactions)
}
