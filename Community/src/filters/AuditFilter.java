package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class AuditFilter
 */
@WebFilter("/login")
public class AuditFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuditFilter() {
    }

	public void init(FilterConfig fConfig) throws ServletException {
	}
    
	public void destroy() {
	}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		if (request instanceof HttpServletRequest){
			HttpServletRequest httpRequest = (HttpServletRequest) request;
			System.out.println("Request: " + httpRequest.getMethod() + "  :  " + httpRequest.getRequestURL());
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}




}
