package controllers

import (
	"strconv"

	"github.com/gin-gonic/gin"
)

func pagination(c *gin.Context) (limit int, offset int) {
	offset, _ = strconv.Atoi(c.Query("offset"))
	limit, _ = strconv.Atoi(c.Query("limit"))

	if limit == 0 {
		limit = 10
	}

	return
}
