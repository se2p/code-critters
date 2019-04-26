package de.grubermi.code_critters.application.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class IncompleteDataException extends ApplicationException {

    public IncompleteDataException(String message) {
        super(message);
    }

    public IncompleteDataException(String message, Throwable cause) {
        super(message, cause);
    }
}
