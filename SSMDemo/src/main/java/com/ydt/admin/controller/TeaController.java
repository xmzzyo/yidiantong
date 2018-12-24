package com.ydt.admin.controller;

import com.ydt.admin.bean.*;
import com.ydt.admin.service.EditService;
import com.ydt.admin.service.TeaInfoService;
import com.ydt.user.bean.ParInfo;
import com.ydt.util.UploadFile;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zzyo on 2016/6/23.
 */
@Controller
@RequestMapping("/tea")
public class TeaController {

    @Resource
    private TeaInfoService teaInfoService;

    @Resource
    private EditService editService;

    @RequestMapping(value = "/space.html", method = RequestMethod.GET)
    public ModelAndView getSpace(HttpSession httpSession)
    {
        List<Announce> announceList = editService.selectByNum("5",0,3);
        List<HotNews> hotNewsList = editService.selectByNum("1",0,3);
        List<Activities> activitiesList = editService.selectByNum("3",0,3);
        List<ExamPlan> examPlanList = editService.selectByNum("2",0,3);
        String name = teaInfoService.getInfoByID((String) httpSession.getAttribute("id")).getName();
        List<String> picture = new ArrayList<String>();
        for(int i=1;i<10;i++)
        {
            String pic = "/images/p"+i+".jpg";
            picture.add(pic);
        }
        httpSession.setAttribute("uname",name);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("annList",announceList);
        modelAndView.addObject("hnList",hotNewsList);
        modelAndView.addObject("acList",activitiesList);
        modelAndView.addObject("examList",examPlanList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("tea_homepage");
        return modelAndView;
    }

    @RequestMapping(value = "/userinfo.html", method = RequestMethod.GET)
    public ModelAndView getInfo(HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        TeaInfo teaInfo = teaInfoService.getInfoByID((String) httpSession.getAttribute("id"));
        String class1 = teaInfo.getClass1();
        String g1 = class1.substring(0,2);
        String c1 = class1.substring(2,4);
        modelAndView.addObject("g1",g1);
        modelAndView.addObject("c1",c1);
        String class2 = teaInfo.getClass2();
        String g2 = class2.substring(0,2);
        String c2 = class2.substring(2,4);
        modelAndView.addObject("g2",g2);
        modelAndView.addObject("c2",c2);
        String class3 = teaInfo.getClass3();
        String g3 = class3.substring(0,2);
        String c3 = class3.substring(2,4);
        modelAndView.addObject("g3",g3);
        modelAndView.addObject("c3",c3);
        modelAndView.addObject("teaInfo",teaInfo);
        modelAndView.setViewName("tea_infomanage");
        return modelAndView;
    }

    @RequestMapping(value = "/userinfo.html", method = RequestMethod.POST)
    public ModelAndView updateInfo(@ModelAttribute TeaInfo teaInfo,@RequestParam(value="file",required=false) MultipartFile file, HttpSession httpSession, HttpServletRequest request) throws IOException {
        String g1 = request.getParameter("g1");
        String c1 = request.getParameter("c1");
        String class1 = g1.concat(c1);
        teaInfo.setClass1(class1);
        String g2 = request.getParameter("g2");
        String c2 = request.getParameter("c2");
        String class2 = g2.concat(c2);
        teaInfo.setClass2(class2);
        String g3 = request.getParameter("g3");
        String c3 = request.getParameter("c3");
        String class3 = g3.concat(c3);
        teaInfo.setClass3(class3);
        if(file.getSize() > 0)
        {
            UploadFile uploadFile = new UploadFile();
            String mes = uploadFile.uploadImg(file,httpSession,request);
            if("upload_error" != mes)
            {
                teaInfo.setPicture(mes);
            }
        }
        teaInfo.setTeaId((String) httpSession.getAttribute("id"));
        teaInfoService.updateInfo(teaInfo);
        return new ModelAndView("redirect:/tea/userinfo.html");
    }


    @RequestMapping(value = "/teacher_list.html",method = RequestMethod.GET)
    public ModelAndView getList()
    {
        ModelAndView modelAndView = new ModelAndView();
        List<TeaInfo> teaInfoList = teaInfoService.getList();
        modelAndView.addObject("teaInfoList",teaInfoList);
        modelAndView.setViewName("tea_list");
        return modelAndView;
    }

    @RequestMapping(value = "/teacher_list.html",method = RequestMethod.POST)
    public ModelAndView getSelectList(@RequestParam("ChooseG") String ChooseG , @RequestParam("ChooseC") String ChooseC)
    {
        ModelAndView modelAndView = new ModelAndView();
        List<TeaInfo> teaInfoList = teaInfoService.getSelect(ChooseG,ChooseC);
        modelAndView.addObject("teaInfoList",teaInfoList);
        modelAndView.setViewName("tea_list");
        return modelAndView;
    }
}
