package com.ydt.admin.dao;

import com.ydt.admin.bean.Announce;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnnounceMapper {

    int countNum();

    Announce selectByPrimaryKey(int annId);

    int deleteByPrimaryKey(int annId);

    int insert(Announce record);

    int insertSelective(Announce record);

    int updateByPrimaryKeySelective(Announce record);

    int updateByPrimaryKey(Announce record);

    List<Announce> selectByDate();
}