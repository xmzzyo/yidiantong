package com.ydt.common.controller;

import com.ydt.common.bean.Auth;
import com.ydt.common.service.AuthService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by zzyo on 2016/6/24.
 */
@Controller
public class AuthController {

    @Resource
    AuthService authService;

    @RequestMapping(value = "/index.html",method = RequestMethod.GET)
    public ModelAndView getIndex()
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping(value = "/index.html",method = RequestMethod.POST)
    public ModelAndView login(@ModelAttribute Auth auth, HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        String mess = authService.login(auth);
        if(mess == "login_success") {
            httpSession.setAttribute("login",true);
            httpSession.setAttribute("id",auth.getId());
            if(auth.getId().contains("U"))
            {
                httpSession.setAttribute("authType","U");
                modelAndView.setViewName("redirect:/par/space.html");
            }
            else if(auth.getId().contains("T"))
            {
                httpSession.setAttribute("authType","T");
                modelAndView.setViewName("redirect:/tea/space.html");
            }
        }
        else {
            modelAndView.addObject("error_mess",mess);
            modelAndView.setViewName("temp/index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/logout.html",method = RequestMethod.GET)
    public ModelAndView logout(HttpSession httpSession)
    {
        httpSession.invalidate();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/index.html");
        return modelAndView;
    }

}
