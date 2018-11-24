package de.grubermi.code_critters.spring;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.lang.management.ManagementFactory;
import java.lang.management.RuntimeMXBean;

@Component
public class PolymerResourceCacheFilter implements Filter {

    private static String TEMPDIR = "./temp";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;

        // only /lib files needs to be modified
        if(httpRequest.getRequestURI().startsWith("/lib/")) {
            File file = new File(TEMPDIR + httpRequest.getRequestURI());
            if(file.exists() && !file.isDirectory()) {
                //check age of the file
                RuntimeMXBean bean = ManagementFactory.getRuntimeMXBean();
                if(file.lastModified() >= bean.getStartTime()) {
                    //If younger then runtime use existing one
                    InputStream is = new FileInputStream(file);
                    response.setContentLength((int)file.length());
                    response.setContentType("application/javascript;charset=ISO-8859-1");
                    IOUtils.copy(is, response.getOutputStream());
                    is.close();
                } else {
                    //Create new cached file
                    String responseContent = cacheFile(request, response, chain, file);
                    response.setContentLength(responseContent.length());
                    response.getWriter().write(responseContent);
                }
            } else {
                //Create new cached file
                String responseContent = cacheFile(request, response, chain, file);
                response.setContentLength(responseContent.length());
                response.getWriter().write(responseContent);
            }
        } else {
            //Do nothing and handle as normal request
            chain.doFilter(request, response);
        }
    }

    private String cacheFile(ServletRequest request, ServletResponse response, FilterChain chain, File f) throws IOException, ServletException {
        HtmlResponseWrapper capturingResponseWrapper = new HtmlResponseWrapper(
                (HttpServletResponse) response);
        chain.doFilter(request, capturingResponseWrapper);
        //add "/lib/" in import paths in the file where "@polymer" or "@webcombonent" is
        String pattern ="(?<=(import\\s.{0,100}))(?=(@.{3,20}/))";
        String[] componentsArray = capturingResponseWrapper.getCaptureAsString().split(pattern);
        String responseContent = componentsArray[0];
        for(int i = 1; i < componentsArray.length; ++i){
            responseContent += "/lib/" + componentsArray[i];
        }
        //create directory and file
        f.getParentFile().mkdirs();
        f.createNewFile();
        FileWriter writer = new FileWriter(f);
        writer.write(responseContent);
        writer.close();
        return responseContent;
    }

    @Override
    public void destroy() {

    }
}
