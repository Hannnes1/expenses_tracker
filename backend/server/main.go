package main

import (
	"database/sql"
	"log"
	"regexp"

	"github.com/gin-gonic/gin"
	"github.com/gin-gonic/gin/binding"
	"github.com/go-playground/validator/v10"
	"github.com/go-sql-driver/mysql"
	ginSwagger "github.com/swaggo/gin-swagger"
	"github.com/swaggo/gin-swagger/swaggerFiles"
	"hultergard.com/expenses_tracker/controllers"
	"hultergard.com/expenses_tracker/docs"
	"hultergard.com/expenses_tracker/repository"
)

var iso8601 validator.Func = func(fl validator.FieldLevel) bool {
	ISO8601DateRegexString := "^(?:[1-9]\\d{3}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1\\d|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[1-9]\\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00)-02-29)T(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d(?:\\.\\d{1,9})?(?:Z|[+-][01]\\d:[0-5]\\d)$"
	ISO8601DateRegex := regexp.MustCompile(ISO8601DateRegexString)
	return ISO8601DateRegex.MatchString(fl.Field().String())
}

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

		tg.GET("/", transaction.GetList)
	}

	cg := r.Group("/categories")
	{
		category := new(controllers.Category)

		cg.GET("/", category.GetList)
	}

	r.Run("localhost:8080")
}
