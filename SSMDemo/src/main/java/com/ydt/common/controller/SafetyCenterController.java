package com.ydt.common.controller;

import com.ydt.common.bean.Auth;
import com.ydt.common.service.AuthService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/6/29.
 */
@Controller
public class SafetyCenterController {

    @Resource
    AuthService authService;

    @RequestMapping(value = "/safety_center.html", method = RequestMethod.GET)
    public ModelAndView jumpSafetyCenter(){
        return new ModelAndView("safety_center");
    }

    @RequestMapping(value = "/safety_center.html",method = RequestMethod.POST)
    public ModelAndView updateAnswer(HttpSession httpSession,@RequestParam("answer1")String answer1, @RequestParam("answer2")String answer2, @RequestParam("answer3")String answer3,@RequestParam("affirmanswer1") String affirmanswer1,@RequestParam("affirmanswer2") String affirmanswer2,@RequestParam("affirmanswer3") String affirmanswer3){
        ModelAndView modelAndView = new ModelAndView();
        String id = (String) httpSession.getAttribute("id");
        String message="您输入的答案不一致，请重新输入。";
        int i=1;
        if (!answer1.equals(affirmanswer1)){
            modelAndView.addObject("message1",message);
            modelAndView.setViewName("safety_center");
            i=0;
        }
        if (!answer2.equals(affirmanswer2)){
            modelAndView.addObject("message2",message);
            modelAndView.setViewName("safety_center");
            i=0;
        }
        if (!answer3.equals(affirmanswer3)){
            modelAndView.addObject("message3",message);
            modelAndView.setViewName("safety_center");
            i=0;
        }
        if(i==1) {
            Auth auth = new Auth();
            auth.setId(id);
            auth.setAnswer1(answer1);
            auth.setAnwser2(answer2);
            auth.setAnwser3(answer3);
            authService.updateAnswer(auth);
            modelAndView.setViewName("temp/success");
        }
        return  modelAndView;
    }

}
