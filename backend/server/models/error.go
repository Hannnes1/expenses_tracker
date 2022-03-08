package models

type httpError struct {
	Code    int    `json:"code" validate:"required"`
	Message string `json:"message" validate:"required"`
}

func selectMessage(message string, fallback string) string {
	if message == "" {
		message = fallback
	}
	return message
}

func InternalError(message ...string) httpError {
	return httpError{
		Code:    101,
		Message: selectMessage(message[0], "Something unexpected happened on the server"),
	}
}

func BadRequestError(message ...string) httpError {
	return httpError{
		Code:    102,
		Message: selectMessage(message[0], "Bad request"),
	}
}
