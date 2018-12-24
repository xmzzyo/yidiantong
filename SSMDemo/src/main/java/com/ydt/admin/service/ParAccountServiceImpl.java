package com.ydt.admin.service;

import com.ydt.common.bean.Auth;
import com.ydt.common.dao.AuthMapper;
import com.ydt.user.bean.ParInfo;
import com.ydt.user.dao.ParInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zzyo on 2016/6/30.
 */
@Service
public class ParAccountServiceImpl implements ParAccountService{

    @Resource
    private ParInfoMapper parInfoMapper;

    @Resource
    private AuthMapper authMapper;


    @Override
    public List buildAcc(String year, String grade, int num) {
        List authList = new ArrayList<>();
        for(int i=0;i<num;i++) {
            String id = "U".concat(year).concat(grade).concat(String.format("%03d", i));
            parInfoMapper.insertID(id);
            authMapper.insertAuth(new Auth(id,"111111"));
            authList.add(new Auth(id,"111111"));
        }
        return authList;
    }
}
