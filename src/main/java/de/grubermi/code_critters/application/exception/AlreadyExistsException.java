package de.grubermi.code_critters.application.exception;

public class AlreadyExistsException extends ApplicationException {

    public AlreadyExistsException(String message, Throwable cause) {
        super(message, cause);
    }

    public AlreadyExistsException(String message, String msg_key) {
        super(message, msg_key);
    }

    public AlreadyExistsException(String message) {
        super(message);
    }
}
