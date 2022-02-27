package main

import (
	"database/sql"
	"log"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/go-playground/validator"
	"github.com/go-sql-driver/mysql"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
	"hultergard.com/expenses_tracker/controllers"
	"hultergard.com/expenses_tracker/docs"
	"hultergard.com/expenses_tracker/repository"
)

// @title    Expenses Tracker API
// @version  0.1
func main() {
	docs.SwaggerInfo.BasePath = "/api/v1"

	cfg := mysql.Config{
		User:   "root",
		Passwd: "",
		Net:    "tcp",
		Addr:   "127.0.0.1:3306",
		DBName: "transactions",
	}

	var err error
	repository.DB, err = sql.Open("mysql", cfg.FormatDSN())
	if err != nil {
		log.Fatal(err)
	}

	pingErr := repository.DB.Ping()
	if pingErr != nil {
		log.Fatal(pingErr)
	}

	r := gin.Default()

	if v, ok := binding.Validator.Engine().(*validator.Validate); ok {
		v.RegisterValidation("iso8601", iso8601)
	}

	r.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))

	tg := r.Group("/transactions")
	{
		transaction := new(controllers.Transaction)

		tg.GET("/", transaction.Get)
	}

	r.Run("localhost:8080")
}
