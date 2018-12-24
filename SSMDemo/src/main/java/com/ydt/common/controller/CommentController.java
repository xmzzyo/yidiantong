package com.ydt.common.controller;

import com.ydt.admin.service.TeaInfoService;
import com.ydt.user.service.ParentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by zzyo on 2016/6/24.
 */
@Controller
public class CommentController {

    @Resource
    private ParentService parentService;

    @Resource
    private TeaInfoService teaInfoService;


    @RequestMapping(value = "/comment.html", method = RequestMethod.GET)
    public ModelAndView getComment(@RequestParam("id")String id, HttpSession httpSession)
    {
        String nid = (String) httpSession.getAttribute("id");
        String cid = "";
        String name = "";
        if(httpSession.getAttribute("authType").equals("U"))
        {
            cid = nid.concat(id);
            name = teaInfoService.getInfoByID(id).getName();
        }
        else if(httpSession.getAttribute("authType").equals("T"))
        {
            cid = id.concat(nid);
            name = parentService.getUserInfo(id).getName();
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("name",name);
        modelAndView.addObject("cid",cid);
        modelAndView.setViewName("comment");
        return modelAndView;
    }
}
