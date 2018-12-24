package com.ydt.admin.service;

import com.ydt.admin.bean.TeaInfo;

import java.util.List;

/**
 * Created by zzyo on 2016/7/1.
 */
public interface TeaInfoService {

    List<TeaInfo> getList();

    TeaInfo getInfoByID(String id);

    int updateInfo(TeaInfo teaInfo);

    List<TeaInfo> getSelect(String Grade, String Class);
}
