package models

type httpError struct {
	Code    int    `json:"code" validate:"required"`
	Message string `json:"message" validate:"required"`
}

func selectMessage(fallback string, message ...string) string {
	if len(message) > 0 && message[0] != "" {
		return message[0]
	} else {
		return fallback
	}
}

func InternalError(message ...string) httpError {
	return httpError{
		Code:    101,
		Message: selectMessage("Something unexpected happened on the server", message...),
	}
}

func BadRequestError(message ...string) httpError {
	return httpError{
		Code:    102,
		Message: selectMessage("Bad request", message...),
	}
}
