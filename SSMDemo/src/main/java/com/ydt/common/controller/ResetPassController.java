package com.ydt.common.controller;

import com.ydt.common.service.AuthService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by zzyo on 2016/6/28.
 */
@Controller
@RequestMapping("/reset_pass")
public class ResetPassController {

    @Resource
    private AuthService authService;

    @RequestMapping(value = "/input_account.html", method = RequestMethod.GET)
    public ModelAndView getAccountPage()
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("input_account");
        return modelAndView;
    }

    @RequestMapping(value = "/input_account.html", method = RequestMethod.POST)
    public ModelAndView getAccount(@RequestParam("userid")String id, HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        if(authService.validId(id) && id.equals(httpSession.getAttribute("id")))
        {
            httpSession.setAttribute("id",id);
            modelAndView.setViewName("answer_pass_question");
        }
        else
        {
            modelAndView.addObject("message","账号输入错误");
            modelAndView.setViewName("input_account");
        }
        return modelAndView;
    }


    @RequestMapping(value = "/answer.html", method = RequestMethod.POST)
    public ModelAndView getAnswer(@RequestParam("answer")String answer, @RequestParam("QuestionChoose")String Qid, HttpSession httpSession)
    {
        boolean res = authService.validQue((String) httpSession.getAttribute("id"),Qid,answer);
        ModelAndView modelAndView = new ModelAndView();
        if(res)
        {
            modelAndView.setViewName("reset_password");
        }
        else
        {
            modelAndView.addObject("message","回答错误，请重新输入密保答案");
            modelAndView.setViewName("answer_pass_question");
        }
        return modelAndView;
    }


    @RequestMapping(value = "/new_pass.html", method = RequestMethod.POST)
    public ModelAndView getNewpass(@RequestParam("password")String pass, @RequestParam("confirm")String confirm, HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        if(!pass.equals(confirm))
        {
            modelAndView.addObject("message","两次密码输入不一致，请重新输入密码");
            modelAndView.setViewName("reset_password");
            return modelAndView;
        }
        String res = authService.resetPass((String) httpSession.getAttribute("id"),pass);
        if(res.equals("reset_success")) {
            modelAndView.setViewName("complete_password");
            return modelAndView;
        }
        else{
            if(res.equals("equal_error"))
                modelAndView.addObject("message","新密码与旧密码不能相同");
            else
                modelAndView.addObject("message","密码更新失败");
            modelAndView.setViewName("reset_password");
            return modelAndView;
        }
    }


}
