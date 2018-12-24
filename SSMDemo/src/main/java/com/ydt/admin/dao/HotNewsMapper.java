package com.ydt.admin.dao;

import java.util.List;

import com.ydt.admin.bean.HotNews;
import org.springframework.stereotype.Repository;

@Repository
public interface HotNewsMapper {

    int countNum();

    List<HotNews> selectByDate();

    int deleteByPrimaryKey(Integer newsId);

    int insert(HotNews record);

    int insertSelective(HotNews record);

    HotNews selectByPrimaryKey(Integer newsId);

    int updateByPrimaryKeySelective(HotNews record);

    int updateByPrimaryKey(HotNews record);
}