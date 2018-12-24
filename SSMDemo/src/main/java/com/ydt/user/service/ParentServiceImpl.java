package com.ydt.user.service;

import com.ydt.user.bean.ParInfo;
import com.ydt.user.dao.ParInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ydt on 2016/6/15.
 */
@Service
public class ParentServiceImpl implements ParentService {

    @Resource
    private ParInfoMapper parInfoMapper;


    @Override
    public List<ParInfo> findUsers(){
        List<ParInfo> parInfoList = parInfoMapper.getAll();
        return parInfoList;
    }


    @Override
    public ParInfo getUserInfo(String id) {
        ParInfo parentInf = parInfoMapper.selectByID(id);
        return parentInf;
    }

    @Override
    public boolean updateUser(ParInfo parentInf) {
        if(parInfoMapper.upadteUser(parentInf) > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    @Override
    public int getSettings(String id) {
        return 0;
    }

    @Override
    public List<ParInfo> getSelected(String Grade, String Class) {
        String GC = Grade.concat(Class);
        List<ParInfo> parInfoList = parInfoMapper.selectByGC(GC);
        return parInfoList;
    }
}
