package org.codecritters.code_critters.spring;

import org.codecritters.code_critters.application.exception.ApplicationException;
import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.WebRequest;

import java.util.Map;

@Component
public class CustomErrorAttributes extends DefaultErrorAttributes {

    @Override
    public Map<String, Object> getErrorAttributes(WebRequest webRequest, boolean includeStackTrace) {
        Map<String, Object> data = super.getErrorAttributes(webRequest, includeStackTrace);

        Throwable e = getError(webRequest);
        if(e instanceof ApplicationException){
            data.put("msg_key", ((ApplicationException) e).getMsg_key());
        }

        return data;
    }
}
