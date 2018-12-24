package com.ydt.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by ydt on 2016/6/23.
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        String reqUrl = httpServletRequest.getRequestURI().toString();
        if(reqUrl.contains("index.html") || reqUrl.contains("reset_pass"))
        {
            return true;
        }
        else
        {
            HttpSession httpSession = httpServletRequest.getSession();
            Object state = httpSession.getAttribute("login");
            if(state == null || "".equals(state.toString()))
            {
                httpServletResponse.sendRedirect("/index.html");
                return false;
            }
            else
            {
                return true;
            }
        }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
