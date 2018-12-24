package com.ydt.user.controller;

import com.ydt.admin.bean.Activities;
import com.ydt.admin.bean.Announce;
import com.ydt.admin.bean.ExamPlan;
import com.ydt.admin.bean.HotNews;
import com.ydt.admin.service.EditService;
import com.ydt.user.bean.ParInfo;
import com.ydt.user.service.ParentService;
import com.ydt.util.UploadFile;
import org.springframework.stereotype.Controller;
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
 * Created by ydt on 2016/6/15.
 */
@Controller
@RequestMapping("/par")
public class ParConroller {

    @Resource
    private ParentService parentService;

    @Resource
    private EditService editService;

    @RequestMapping(value = "/space.html", method = RequestMethod.GET)
    public ModelAndView getSpace(HttpSession httpSession)
    {
        List<Announce> announceList = editService.selectByNum("5",0,3);
        List<HotNews> hotNewsList = editService.selectByNum("1",0,3);
        List<Activities> activitiesList = editService.selectByNum("3",0,3);
        List<ExamPlan> examPlanList = editService.selectByNum("2",0,3);
        List<String> picture = new ArrayList<String>();
        for(int i=1;i<10;i++)
        {
            String pic = "/images/p"+i+".jpg";
            picture.add(pic);
        }
        System.out.println(picture.size());
        String name = parentService.getUserInfo((String) httpSession.getAttribute("id")).getName();
        httpSession.setAttribute("uname",name);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("annList",announceList);
        modelAndView.addObject("hnList",hotNewsList);
        modelAndView.addObject("acList",activitiesList);
        modelAndView.addObject("examList",examPlanList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("parent_homepage");
        return modelAndView;
    }

    @RequestMapping(value = "/userinfo.html",method = RequestMethod.GET)
    public ModelAndView getInfo(HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        ParInfo parInfo = parentService.getUserInfo((String) httpSession.getAttribute("id"));
        httpSession.setAttribute("parInfo",parInfo);
        String classNum = parInfo.getStuClass();
        String gNum = classNum.substring(0,2);
        String cNum = classNum.substring(2,4);
        modelAndView.addObject("user",parInfo);
        modelAndView.addObject("ChooseG",gNum);
        modelAndView.addObject("ChooseC",cNum);
        modelAndView.setViewName("parent_infomanage");
        return  modelAndView;
    }

    @RequestMapping(value = "/userinfo.html", method = RequestMethod.POST)
    public ModelAndView updateInfo(@ModelAttribute ParInfo parInfo, @RequestParam(value="file",required=false) MultipartFile file, @RequestParam("ChooseG")String ChooseG, @RequestParam("ChooseC")String ChooseC, HttpSession httpSession, HttpServletRequest request) throws IOException {

        String classNum = ChooseG.concat(ChooseC);
        parInfo.setStuClass(classNum);
        System.out.println("File Size :"+file.getSize());
        if(file.getSize() != 0) {
            UploadFile uploadFile = new UploadFile();
            String mess = uploadFile.uploadImg(file, httpSession, request);
            if("upload_error" != mess)
            {
                parInfo.setPicture(mess);
            }
        }
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("update"+parInfo.toString());
        parInfo.setStuId((String) httpSession.getAttribute("id"));
        System.out.println(parentService.updateUser(parInfo));
        modelAndView.setViewName("redirect:/par/userinfo.html");
        return modelAndView;
    }

    @RequestMapping(value = "/settings.html", method = RequestMethod.GET)
    public ModelAndView getSetting(HttpSession httpSession)
    {
        ModelAndView modelAndView = new ModelAndView();
        int id = parentService.getSettings((String) httpSession.getAttribute("id"));
        modelAndView.setViewName("temp/settings");
        return modelAndView;
    }

    @RequestMapping("/listusers.html")
    public ModelAndView findUser() throws Exception {
/*        ModelAndView modelAndView = new ModelAndView();
        //调用service方法得到用户列表
        List<User> users = parentService.findUsers();
        //将得到的用户列表内容添加到ModelAndView中
        modelAndView.addObject("users",users);
        //设置响应的jsp视图
        modelAndView.setViewName("findUser");
        System.out.print(users);*/
        return null;
    }
}
