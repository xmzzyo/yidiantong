package com.ydt.common.service;

import com.ydt.common.bean.Auth;

import java.util.List;

/**
 * Created by zzyo on 2016/6/24.
 */
public interface AuthService {

    List<Auth> listAll();

    public String login(Auth auth);

    public boolean logout(Auth auth);


    boolean validId(String id);

    boolean validQue(String id, String Qid, String ans);

    String resetPass(String id, String upass);


    int updateAnswer(Auth auth);
}
