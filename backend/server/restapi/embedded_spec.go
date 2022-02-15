// Code generated by go-swagger; DO NOT EDIT.

package restapi

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
)

var (
	// SwaggerJSON embedded version of the swagger document used at generation time
	SwaggerJSON json.RawMessage
	// FlatSwaggerJSON embedded flattened version of the swagger document used at generation time
	FlatSwaggerJSON json.RawMessage
)

func init() {
	SwaggerJSON = json.RawMessage([]byte(`{
  "consumes": [
    "application/json"
  ],
  "produces": [
    "application/json"
  ],
  "schemes": [
    "http"
  ],
  "swagger": "2.0",
  "info": {
    "description": "Backend API for expenses tracker",
    "title": "Expenses Tracker API",
    "version": "1.0.0"
  },
  "paths": {
    "/transactions": {
      "get": {
        "summary": "Get a list of transactions",
        "parameters": [
          {
            "type": "integer",
            "format": "int64",
            "default": 0,
            "name": "offset",
            "in": "query"
          },
          {
            "type": "integer",
            "format": "int32",
            "default": 20,
            "name": "limit",
            "in": "query"
          }
        ],
        "responses": {
          "200": {
            "description": "A list of transactions",
            "schema": {
              "type": "array",
              "items": {
                "$ref": "#/definitions/transaction"
              }
            }
          },
          "default": {
            "description": "Misc error response",
            "schema": {
              "$ref": "#/definitions/error"
            }
          }
        }
      }
    }
  },
  "definitions": {
    "error": {
      "type": "object",
      "required": [
        "code",
        "message"
      ],
      "properties": {
        "code": {
          "type": "integer",
          "format": "int64"
        },
        "message": {
          "type": "string"
        }
      }
    },
    "transaction": {
      "type": "object",
      "required": [
        "date",
        "account",
        "text",
        "amount"
      ],
      "properties": {
        "account": {
          "type": "string",
          "maxLength": 20
        },
        "amount": {
          "type": "number"
        },
        "date": {
          "type": "string",
          "format": "date-time"
        },
        "description": {
          "type": "string",
          "maxLength": 255
        },
        "id": {
          "type": "integer",
          "format": "int64",
          "readOnly": true
        },
        "text": {
          "type": "string",
          "maxLength": 45
        },
        "verification_number": {
          "type": "string",
          "maxLength": 20
        }
      }
    }
  }
}`))
	FlatSwaggerJSON = json.RawMessage([]byte(`{
  "consumes": [
    "application/json"
  ],
  "produces": [
    "application/json"
  ],
  "schemes": [
    "http"
  ],
  "swagger": "2.0",
  "info": {
    "description": "Backend API for expenses tracker",
    "title": "Expenses Tracker API",
    "version": "1.0.0"
  },
  "paths": {
    "/transactions": {
      "get": {
        "summary": "Get a list of transactions",
        "parameters": [
          {
            "type": "integer",
            "format": "int64",
            "default": 0,
            "name": "offset",
            "in": "query"
          },
          {
            "type": "integer",
            "format": "int32",
            "default": 20,
            "name": "limit",
            "in": "query"
          }
        ],
        "responses": {
          "200": {
            "description": "A list of transactions",
            "schema": {
              "type": "array",
              "items": {
                "$ref": "#/definitions/transaction"
              }
            }
          },
          "default": {
            "description": "Misc error response",
            "schema": {
              "$ref": "#/definitions/error"
            }
          }
        }
      }
    }
  },
  "definitions": {
    "error": {
      "type": "object",
      "required": [
        "code",
        "message"
      ],
      "properties": {
        "code": {
          "type": "integer",
          "format": "int64"
        },
        "message": {
          "type": "string"
        }
      }
    },
    "transaction": {
      "type": "object",
      "required": [
        "date",
        "account",
        "text",
        "amount"
      ],
      "properties": {
        "account": {
          "type": "string",
          "maxLength": 20
        },
        "amount": {
          "type": "number"
        },
        "date": {
          "type": "string",
          "format": "date-time"
        },
        "description": {
          "type": "string",
          "maxLength": 255
        },
        "id": {
          "type": "integer",
          "format": "int64",
          "readOnly": true
        },
        "text": {
          "type": "string",
          "maxLength": 45
        },
        "verification_number": {
          "type": "string",
          "maxLength": 20
        }
      }
    }
  }
}`))
}
