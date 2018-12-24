package com.ydt.admin.dao;

import java.util.List;

import com.ydt.admin.bean.HotQues;
import org.springframework.stereotype.Repository;

@Repository
public interface HotQuesMapper {

    int countNum();

    List<HotQues> selectByDate();

    int deleteByPrimaryKey(Integer hotQuestionId);

    int insert(HotQues record);

    int insertSelective(HotQues record);

    HotQues selectByPrimaryKey(Integer hotQuestionId);

    int updateByPrimaryKeySelective(HotQues record);

    int updateByPrimaryKey(HotQues record);
}