package com.ydt.admin.service;

import com.ydt.admin.bean.Announce;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by zzyo on 2016/6/29.
 */
public interface EditService {

    List selectByNum(String type, int min, int max);

    Map selectByID(String id, String type) throws UnsupportedEncodingException;

    int countNum(String type);

    int deleteSelective(String id);

    int updateSelective(Announce announce);


    String insertSelective(String title, String id, Date sqldDate, String data, String type);

    String getAuthorByID(String id);

    void deleteAnn(int id);
}
