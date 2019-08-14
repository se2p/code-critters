package org.codecritters.code_critters.application.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Fehlermeldung, falls ein Element nicht gefunden werden kann
 */
@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundException extends ApplicationException {

    public NotFoundException(String message) {
        super(message);
    }

    public NotFoundException(String message, String msgKey) {
        super(message, msgKey);
    }



}
