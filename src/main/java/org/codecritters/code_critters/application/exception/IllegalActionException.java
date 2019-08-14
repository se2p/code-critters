package org.codecritters.code_critters.application.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class IllegalActionException extends ApplicationException {

    public IllegalActionException(String message, String msg_key) {
        super(message, msg_key);
    }
}
