package de.grubermi.code_critters.spring;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.regex.Pattern;

@Component
public class PolymerResourceRenameFilter implements Filter {

    private final Logger logger = LogManager.getLogger(RequestLoggingFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        if(httpRequest.getRequestURI().startsWith("/lib/")) {
            HtmlResponseWrapper capturingResponseWrapper = new HtmlResponseWrapper(
                    (HttpServletResponse) response);
            chain.doFilter(request, capturingResponseWrapper);
            String pattern ="(?<=(import\\s.{0,100}))(?=(@.{3,20}/))";
            String[] componentsArray = capturingResponseWrapper.getCaptureAsString().split(pattern);
            String responseContent = componentsArray[0];
            for(int i = 1; i < componentsArray.length; ++i){
                responseContent += "/lib/" + componentsArray[i];
            }
            response.setContentLength(responseContent.length());
            response.getWriter().write(responseContent);
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
