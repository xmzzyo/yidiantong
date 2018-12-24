package com.ydt.admin.dao;

import java.util.List;

import com.ydt.admin.bean.TeaInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TeaInfoMapper {

    List<TeaInfo> getAllUser();

    TeaInfo getInfoByID(String id);

    int updateInfo(TeaInfo teaInfo);

    String getNameByID(String id);

    List<TeaInfo> selectByGC(@Param("classnum") String classnum);
}