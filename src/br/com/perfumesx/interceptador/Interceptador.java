package br.com.perfumesx.interceptador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptador  extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object controller) throws Exception{
		
		String uri = req.getRequestURI();
		
		if(uri.endsWith("admin") || uri.contains("resources") || uri.contains("efetuaLogin") ){
			
			return true;
		}
		
		
		if(req.getSession().getAttribute("usuarioLogado") != null){
			return true;
		}
		
		resp.sendRedirect("admin");
		return false;
	}

}

