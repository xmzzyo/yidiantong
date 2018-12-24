package com.ydt.admin.dao;

import java.util.List;

import com.ydt.admin.bean.Activities;
import org.springframework.stereotype.Repository;

@Repository
public interface ActivitiesMapper {

    int countNum();

    int deleteByPrimaryKey(int actiId);

    int insert(Activities record);

    int insertSelective(Activities record);

    Activities selectByPrimaryKey(int actiId);

    List<Activities> selectByDate();

    int updateByPrimaryKeySelective(Activities record);

}