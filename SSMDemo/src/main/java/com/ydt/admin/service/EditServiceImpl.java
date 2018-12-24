package com.ydt.admin.service;

import com.ydt.admin.bean.*;
import com.ydt.admin.dao.*;
import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zzyo on 2016/6/29.
 */
@Service
public class EditServiceImpl implements EditService{

    @Resource
    private TeaInfoMapper teaInfoMapper;

    @Resource
    private AnnounceMapper announceMapper;

    @Resource
    private ExamPlanMapper examPlanMapper;

    @Resource
    private HotNewsMapper hotNewsMapper;

    @Resource
    private HotQuesMapper hotQuesMapper;

    @Resource
    private ActivitiesMapper activitiesMapper;

    @Override
    public List selectByNum(String type, int min, int max) {
        if(type.equals("1"))
        {
            int size = hotNewsMapper.countNum();
            if(size == 0)
            {return null;}
            if((size-1) < max)
            {
                return hotNewsMapper.selectByDate().subList(min,size);
            }
            else{
                return hotNewsMapper.selectByDate().subList(min,max);
            }
        }
        else if(type.equals("2"))
        {
            int size = examPlanMapper.countNum();
            if(size == 0)
            {return null;}
            if((size-1) < max)
            {
                return examPlanMapper.selectByDate().subList(min,size);
            }
            else{
                return examPlanMapper.selectByDate().subList(min,max);
            }
        }
        else if(type.equals("3"))
        {
            int size = activitiesMapper.countNum();
            if(size == 0)
            {return null;}
            if((size-1) < max)
            {
                return activitiesMapper.selectByDate().subList(min,size);
            }
            else {
                return activitiesMapper.selectByDate().subList(min, max);
            }
        }
        else if(type.equals("4"))
        {
            int size = hotQuesMapper.countNum();
            if(size == 0)
            {return null;}
            if((size-1) < max)
            {
                return hotQuesMapper.selectByDate().subList(min,size);
            }
            else {
                return hotQuesMapper.selectByDate().subList(min, max);
            }
        }
        else if(type.equals("5"))
        {
            int size = announceMapper.countNum();
            if(size == 0)
            {return null;}
            if((size-1) < max)
            {
                return announceMapper.selectByDate().subList(min,size);
            }
            else {
                return announceMapper.selectByDate().subList(min, max);
            }
        }
        return null;

    }

    @Override
    public Map selectByID(String id,String type) throws UnsupportedEncodingException {
        int bpid = Integer.parseInt(id);
        Base64 base64 = new Base64();
        Map map = new HashMap();
        if(type.equals("hn"))
        {
            HotNews hotNews = hotNewsMapper.selectByPrimaryKey(bpid);
            byte[] decode = hotNews.getNewsText().getBytes();
            decode = base64.decode(decode);
            String html = new String(decode,"UTF-8");
            hotNews.setNewsText(html);
            TeaInfo teaInfo = teaInfoMapper.getInfoByID(hotNews.getTeaId());
            map.put("blogInfo",hotNews);
            map.put("teaInfo",teaInfo);
            return map;
        }
        else if(type.equals("ex"))
        {
            ExamPlan examPlan = examPlanMapper.selectByPrimaryKey(bpid);
            byte[] decode = examPlan.getExamText().getBytes();
            decode = base64.decode(decode);
            String html = new String(decode,"UTF-8");
            examPlan.setExamText(html);
            TeaInfo teaInfo = teaInfoMapper.getInfoByID(examPlan.getTeaId());
            map.put("blogInfo",examPlan);
            map.put("teaInfo",teaInfo);
            return map;
        }
        else if(type.equals("ac"))
        {
            Activities activities = activitiesMapper.selectByPrimaryKey(bpid);
            byte[] decode = activities.getActiText().getBytes();
            decode = base64.decode(decode);
            String html = new String(decode,"UTF-8");
            activities.setActiText(html);
            TeaInfo teaInfo = teaInfoMapper.getInfoByID(activities.getTeaId());
            map.put("blogInfo",activities);
            map.put("teaInfo",teaInfo);
            return map;
        }
        else if(type.equals("hq"))
        {
            HotQues hotQues = hotQuesMapper.selectByPrimaryKey(bpid);
            byte[] decode = hotQues.getHotQuestionText().getBytes();
            decode = base64.decode(decode);
            String html = new String(decode,"UTF-8");
            hotQues.setHotQuestionText(html);
            TeaInfo teaInfo = teaInfoMapper.getInfoByID(hotQues.getStuId());
            map.put("blogInfo",hotQues);
            map.put("teaInfo",teaInfo);
            return map;
        }
        else if(type.equals("an"))
        {
            Announce announce = announceMapper.selectByPrimaryKey(bpid);
            byte[] decode = announce.getAnnText().getBytes();
            decode = base64.decode(decode);
            String html = new String(decode,"UTF-8");
            announce.setAnnText(html);
            TeaInfo teaInfo = teaInfoMapper.getInfoByID(announce.getTeaId());
            map.put("blogInfo",announce);
            map.put("teaInfo",teaInfo);
            return map;
        }
        return null;
    }

    @Override
    public int countNum(String type) {
        if(type.equals("1"))
        {return hotNewsMapper.countNum();}
        else if(type.equals("2"))
        {return examPlanMapper.countNum();}
        else if(type.equals("3"))
        {return activitiesMapper.countNum();}
        else if(type.equals("4"))
        {return hotQuesMapper.countNum();}
        else if(type.equals("5"))
        {return announceMapper.countNum();}
        return -1;
    }

    @Override
    public int deleteSelective(String id) {
        return 0;
    }

    @Override
    public int updateSelective(Announce announce) {
        return 0;
    }

    @Override
    public String insertSelective(String title, String id, Date sqldDate, String data, String type) {
        int num = countNum(type);
        num ++;
        if(type.equals("1"))
        {
            HotNews hotNews = new HotNews(num,id,title,data,sqldDate);
            hotNewsMapper.insert(hotNews);
            return "hn-"+num;
        }
        else if(type.equals("2"))
        {
            ExamPlan examPlan = new ExamPlan(num,title,id,data,sqldDate);
            examPlanMapper.insert(examPlan);
            return "ex-"+num;
        }
        else if(type.equals("3"))
        {
            Activities activities = new Activities(num,id,title,data,sqldDate);
            activitiesMapper.insert(activities);
            return "ac-"+num;
        }
        else if(type.equals("4"))
        {
            HotQues hotQues = new HotQues(num,id,title,data,sqldDate);
            hotQuesMapper.insert(hotQues);
            return "hq-"+num;
        }
        else if(type.equals("5"))
        {
            Announce announce = new Announce(num,id,title,data,sqldDate);
            announceMapper.insert(announce);
            return "an-"+num;
        }
        return null;
    }

    @Override
    public String getAuthorByID(String id) {
        String author = teaInfoMapper.getNameByID(id);
        return author;
    }

    @Override
    public void deleteAnn(int id) {
        announceMapper.deleteByPrimaryKey(id);
    }
}
