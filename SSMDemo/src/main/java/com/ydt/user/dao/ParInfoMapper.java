package com.ydt.user.dao;

import com.ydt.user.bean.ParInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ParInfoMapper {

    List<ParInfo> getAll();

    ParInfo selectByID(@Param("stuId") String uid);

    List<ParInfo> selectByGC(String GC);

    int upadteUser(ParInfo parInfo);

    int insertID(String id);

}