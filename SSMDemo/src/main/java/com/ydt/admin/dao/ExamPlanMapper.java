package com.ydt.admin.dao;

import java.util.List;

import com.ydt.admin.bean.ExamPlan;
import org.springframework.stereotype.Repository;

@Repository
public interface ExamPlanMapper {

    int countNum();

    int deleteByPrimaryKey(Integer examId);

    int insert(ExamPlan record);

    int insertSelective(ExamPlan record);

    ExamPlan selectByPrimaryKey(Integer examId);

    int updateByPrimaryKeySelective(ExamPlan record);

    int updateByPrimaryKey(ExamPlan record);

    List<ExamPlan> selectByDate();
}