package com.ydt.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by zzyo on 2016/7/7.
 */
@Controller
public class ContactController {

    @RequestMapping(value = "/contact.html", method = RequestMethod.GET)
    public ModelAndView getContact(@RequestParam("qq")String qq)
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("qq",qq);
        modelAndView.setViewName("qqTest");
        return modelAndView;
    }
}
