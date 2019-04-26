package de.grubermi.code_critters.application.exception;

public class ApplicationException extends RuntimeException {

    private String msg_key;

    public ApplicationException(String message, String msg_key) {
        super(message);
        this.msg_key = msg_key;
    }

    public ApplicationException(String message) {
        super(message);
    }

    public ApplicationException(String message, Throwable cause) {
        super(message, cause);
    }

    public ApplicationException(String message, Throwable cause, String msg_key) {
        super(message, cause);
        this.msg_key = msg_key;
    }

    public String getMsg_key() {
        return msg_key;
    }

    public void setMsg_key(String msg_key) {
        this.msg_key = msg_key;
    }

}
