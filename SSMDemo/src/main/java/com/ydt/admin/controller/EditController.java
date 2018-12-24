package com.ydt.admin.controller;

import com.ydt.admin.bean.*;
import com.ydt.admin.service.EditService;
import com.ydt.admin.service.TeaInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by zzyo on 2016/6/23.
 */
@Controller
public class EditController {

    @Resource
    private EditService editService;

    @RequestMapping(value = "/edit.html", method = RequestMethod.GET)
    public ModelAndView getEdit()
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("edit");
        return modelAndView;
    }

    @RequestMapping(value = "/edit.html", method = RequestMethod.POST)
    @ResponseBody
    public Object getPage(@RequestParam("title")String title, @RequestParam("data")String data, @RequestParam("type")String type, HttpSession httpSession) throws IOException, SQLException {
        data = data.replace(' ','+');
        Date date = new Date();
        java.sql.Date sqldDate = new java.sql.Date(date.getTime());
        String id = editService.insertSelective(title,(String) httpSession.getAttribute("id"),sqldDate,data,type);
        System.out.println(id);
        return "showPage.html?id="+id;
    }

    @RequestMapping(value = "/showPage.html", method = RequestMethod.GET)
    public ModelAndView showPage(@RequestParam(value = "id",required = false)String bpid) throws UnsupportedEncodingException {
        String id = bpid.substring(3);
        String type = bpid.substring(0,2);
        String title = null, html = null, author = null;
        java.sql.Date date = null;
        Map map = new HashMap();
        map = editService.selectByID(id,type);
        TeaInfo teaInfo = (TeaInfo) map.get("teaInfo");
        System.out.println(teaInfo.toString());
        if(type.equals("hn"))
        {
            HotNews hotNews = (HotNews) map.get("blogInfo");
            title = hotNews.getTitle();
            author = hotNews.getTeaId();
            date = hotNews.getNewsDate();
            html = hotNews.getNewsText();
        }
        else if(type.equals("ex"))
        {
            ExamPlan examPlan= (ExamPlan) map.get("blogInfo");
            title = examPlan.getTitle();
            author = examPlan.getTeaId();
            date = examPlan.getExamDate();
            html = examPlan.getExamText();
        }
        else if(type.equals("ac"))
        {
            Activities activities= (Activities) map.get("blogInfo");
            title = activities.getTitle();
            author = activities.getTeaId();
            date = activities.getActiDate();
            html = activities.getActiText();
        }
        else if(type.equals("hq"))
        {
            HotQues hotQues= (HotQues) map.get("blogInfo");
            title = hotQues.getTitle();
            author = hotQues.getStuId();
            date = hotQues.getHotQuestionDate();
            html = hotQues.getHotQuestionText();
        }
        else if(type.equals("an"))
        {
            Announce announce= (Announce) map.get("blogInfo");
            title = announce.getTitle();
            html = announce.getAnnText();
            System.out.println(html);
            author = announce.getTeaId();
            date = announce.getAnnDate();
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("title",title);
        modelAndView.addObject("html",html);
        modelAndView.addObject("author",teaInfo);
        modelAndView.addObject("date",date);
        modelAndView.addObject("cid",bpid);
        modelAndView.setViewName("base");
        return modelAndView;
    }

    @RequestMapping(value = "/deleteAnn.html", method = RequestMethod.GET)
    public ModelAndView deleteAnn(@RequestParam("id")String id)
    {
        editService.deleteAnn(Integer.parseInt(id));
        return new ModelAndView("redirect:/announce.html");
    }
}
