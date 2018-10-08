package de.grubermi.code_critters.application.exception;

import org.springframework.web.bind.annotation.ResponseStatus;

public class AlreadyExistsException extends RuntimeException {

    public AlreadyExistsException(String message, Throwable cause) {
        super(message, cause);
    }

    public AlreadyExistsException(String message) {
        super(message);
    }
}
