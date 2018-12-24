package com.ydt.common.dao;

import com.ydt.common.bean.Auth;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AuthMapper {

    List<Auth> listAll();

    Auth selectByID(@Param("id") String id);

    int upadteAuth(Auth auth);

    int insertAuth(Auth auth);
}