package com.jewelry.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jewelry.vo.FcVo;

@WebFilter("*.action")
public class LoginFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse resp=(HttpServletResponse)response;
		String url = req.getRequestURI();
		HttpSession session = req.getSession();
		FcVo user = (FcVo)session.getAttribute("user");
		
		if(url.contains("/account/")||
			url.contains("/customer/")||
			url.contains("/price/")||
			url.contains("/product/")||
			url.contains("/receivables/")) {
			
			if(user==null) {
				resp.sendRedirect("/jewelry/fc/login.action");
				return;
			}
			
		}
		
		chain.doFilter(request, response);
	}

	
	
}
