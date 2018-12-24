package com.ydt.user.service;


import com.ydt.user.bean.ParInfo;

import java.util.List;

/**
 * Created by ydt on 2016/6/15.
 */
public interface ParentService {

    List<ParInfo> findUsers();

    ParInfo getUserInfo(String id);

    boolean updateUser(ParInfo parInfo);

    int getSettings(String id);

    List<ParInfo> getSelected(String Grade, String Class);


}
