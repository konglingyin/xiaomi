package com.hwua.mall.filter;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter extends OncePerRequestFilter{
    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain) throws ServletException, IOException {
        HttpSession session = httpServletRequest.getSession();

        if(session.getAttribute("user") !=null ){
            filterChain.doFilter(httpServletRequest,httpServletResponse);
        }else{
            httpServletRequest.getRequestDispatcher("/login").forward(httpServletRequest,httpServletResponse);
        }
    }
}
