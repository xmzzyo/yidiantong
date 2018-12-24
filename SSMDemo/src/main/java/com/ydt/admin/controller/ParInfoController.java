package com.ydt.admin.controller;

import com.ydt.admin.service.ParAccountService;
import com.ydt.common.bean.Auth;
import com.ydt.common.service.AuthService;
import com.ydt.user.bean.ParInfo;
import com.ydt.user.service.ParentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zzyo on 2016/6/28.
 */
@Controller
@RequestMapping("/tea")
public class ParInfoController {

    @Resource
    private ParAccountService parAccountService;

    @Resource
    private ParentService parentService;


    @RequestMapping(value = "/build_account.html", method = RequestMethod.GET)
    public ModelAndView getBuild()
    {
        return new ModelAndView("make_parent");
    }

    @RequestMapping(value = "/build_account.html", method = RequestMethod.POST)
    public ModelAndView buildAcc(@RequestParam("SelectIn") String SelectIn, @RequestParam("SelectGrade") String SelectGrade, @RequestParam("usernum") String usernum) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        int user_num = Integer.parseInt(usernum);
        List<Auth> authList = parAccountService.buildAcc(SelectIn,SelectGrade,user_num);
        modelAndView.addObject("authList",authList);
        modelAndView.setViewName("make_parent");
        return modelAndView;
    }


    @RequestMapping(value = "/parent_list.html", method = RequestMethod.GET)
    public ModelAndView getParList()
    {
        ModelAndView modelAndView = new ModelAndView();
        List<ParInfo> parInfoList = parentService.findUsers();
        modelAndView.addObject("parInfoList",parInfoList);
        System.out.print(parInfoList);
        modelAndView.setViewName("parent_list");
        return modelAndView;
    }

    @RequestMapping(value = "/parent_list.html", method = RequestMethod.POST)
    public ModelAndView getSelected(@RequestParam("ChooseG") String ChooseG , @RequestParam("ChooseC") String ChooseC)
    {
        ModelAndView modelAndView = new ModelAndView();
        List<ParInfo> parInfoList = parentService.getSelected(ChooseG,ChooseC);
        modelAndView.addObject("parInfoList",parInfoList);
        modelAndView.setViewName("parent_list");
        return modelAndView;
    }
}
