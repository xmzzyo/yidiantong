package com.ydt.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by 吕金旺 on 2016/7/7.
 */
@Controller
public class ToSpaceController {


    @RequestMapping(value = "/redirectSpace.html", method = RequestMethod.GET)
    public ModelAndView toSpace(HttpSession httpSession)
    {
        if(httpSession.getAttribute("authType").equals("U")) {
            return new ModelAndView("redirect:/par/space.html");
        }
        else if(httpSession.getAttribute("authType").equals("T")){
            return new ModelAndView("redirect:/tea/space.html");
        }
        else
            return null;
    }
}
