package com.ydt.admin.service;

import com.ydt.common.bean.Auth;

import java.util.List;

/**
 * Created by zzyo on 2016/6/30.
 */
public interface ParAccountService {

    List buildAcc(String year, String grade, int num);
}
