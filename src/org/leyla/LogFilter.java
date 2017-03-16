package org.leyla;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

//логгирование действий пользователя

public class LogFilter implements Filter {
    private ServletContext context;

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) request;

        String ip = httpReq.getRemoteAddr();

        String uri = httpReq.getRequestURI();

        context.log("ip: " + ip + ", uri: " + uri);
        filterChain.doFilter(request, response);
    }

    public void init(FilterConfig сonfig) throws ServletException {
        context = сonfig.getServletContext();
    }
}
