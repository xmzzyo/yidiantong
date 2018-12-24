package com.ydt.common.controller;

import com.ydt.admin.bean.*;
import com.ydt.admin.service.EditService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zzyo on 2016/7/4.
 */
@Controller
public class InfoPageController {

    @Resource
    private EditService editService;

    @RequestMapping(value = "/announce.html",method = RequestMethod.GET)
    public ModelAndView getAnnounce(@RequestParam(value = "page",required = false)String page, HttpSession httpSession)
    {
        if(page == null) {
            page = "1";
        }
        ModelAndView modelAndView = new ModelAndView();
        double num = editService.countNum("5");
        List<String> pagelist= new ArrayList<String>();
        num = (int) Math.ceil(num/15);
        for(int i = 0 ; i < num ; i++){
            pagelist.add(Integer.toString(i+1));
        }
        int start = 15 * (Integer.parseInt(page)-1);
        List<Announce> announceList = editService.selectByNum("5",start,start+15);
        modelAndView.addObject("pagelist",pagelist);
        modelAndView.addObject("list",announceList);
        if(httpSession.getAttribute("authType").equals("T")) {
            modelAndView.addObject("deleteAuth",true);
        }
        modelAndView.setViewName("announce");
        return modelAndView;
    }

    @RequestMapping(value = "/activities.html", method = RequestMethod.GET)
    public ModelAndView getActivities(@RequestParam(value = "page",required = false)String page)
    {
        if(page == null) {
            page = "1";
        }
        ModelAndView modelAndView = new ModelAndView();
        double num = editService.countNum("3");
        List<String> pagelist= new ArrayList<String>();
        num = (int) Math.ceil(num/9);
        for(int i = 0 ; i < num ; i++){
            pagelist.add(Integer.toString(i+1));
        }
        List<String> picture = new ArrayList<String>();
        for(int i=10;i<13;i++)
        {
            String pic = "/images/p"+i+"_副本.jpg";
            picture.add(pic);
        }
        int start = 9 * (Integer.parseInt(page)-1);
        List<Activities> activitiesList = editService.selectByNum("3",start,start+9);
        modelAndView.addObject("pagelist",pagelist);
        modelAndView.addObject("list",activitiesList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("activities");
        return modelAndView;
    }

    @RequestMapping(value = "/exam_plan.html", method = RequestMethod.GET)
    public ModelAndView getExamPlan(@RequestParam(value = "page",required = false)String page)
    {
        if(page == null) {
            page = "1";
        }
        double num = editService.countNum("2");
        List<String> pagelist= new ArrayList<String>();
        num = (int) Math.ceil(num/9);
        for(int i = 0 ; i < num ; i++){
            pagelist.add(Integer.toString(i+1));
        }
        List<String> picture = new ArrayList<String>();
        for(int i=13;i<16;i++)
        {
            String pic = "/images/p"+i+"_副本.jpg";
            picture.add(pic);
        }
        int start = 9 * (Integer.parseInt(page)-1);
        List<ExamPlan> examPlanList = editService.selectByNum("2",start,start+9);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pagelist",pagelist);
        modelAndView.addObject("list",examPlanList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("exam_plan");
        return modelAndView;
    }

    @RequestMapping(value = "/hot_news.html", method = RequestMethod.GET)
    public ModelAndView getHotNews(@RequestParam(value = "page",required = false)String page)
    {
        if(page == null) {
            page = "1";
        }
        double num = editService.countNum("1");
        List<String> pagelist= new ArrayList<String>();
        num = (int) Math.ceil(num/9);
        for(int i = 0 ; i < num ; i++){
            pagelist.add(Integer.toString(i+1));
        }
        List<String> picture = new ArrayList<String>();
        for(int i=16;i<19;i++)
        {
            String pic = "/images/p"+i+"_副本.jpg";
            picture.add(pic);
        }
        int start = 9 * (Integer.parseInt(page)-1);
        List<HotNews> hotNewsList = editService.selectByNum("1",start,start+9);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pagelist",pagelist);
        modelAndView.addObject("list",hotNewsList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("hot_news");
        return modelAndView;
    }

    @RequestMapping(value = "/hot_question.html",method = RequestMethod.GET)
    public ModelAndView getHotQues(@RequestParam(value = "page",required = false)String page)
    {
        if(page == null) {
            page = "1";
        }
        double num = editService.countNum("4");
        List<String> pagelist= new ArrayList<String>();
        num = (int) Math.ceil(num/9);
        for(int i = 0 ; i < num ; i++){
            pagelist.add(Integer.toString(i+1));
        }
        List<String> picture = new ArrayList<String>();
        for(int i=19;i<22;i++)
        {
            String pic = "/images/p"+i+"_副本.jpg";
            picture.add(pic);
        }
        int start = 9 * (Integer.parseInt(page)-1);
        List<HotQues> hotQuesList = editService.selectByNum("4",start,start+9);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("pagelist",pagelist);
        modelAndView.addObject("list",hotQuesList);
        modelAndView.addObject("picList",picture);
        modelAndView.setViewName("hot_question");
        return modelAndView;
    }
}
