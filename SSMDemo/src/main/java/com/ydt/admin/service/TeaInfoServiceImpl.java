package com.ydt.admin.service;

import com.ydt.admin.bean.TeaInfo;
import com.ydt.admin.dao.TeaInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zzyo on 2016/7/1.
 */
@Service
class TeaInfoServiceImpl implements TeaInfoService {

    @Resource
    private TeaInfoMapper teaInfoMapper;


    @Override
    public List<TeaInfo> getList() {
        List<TeaInfo> parInfoList = teaInfoMapper.getAllUser();
        return parInfoList;
    }

    @Override
    public TeaInfo getInfoByID(String id) {
        TeaInfo teaInfo = teaInfoMapper.getInfoByID(id);
        return teaInfo;
    }

    @Override
    public int updateInfo(TeaInfo teaInfo) {
        teaInfoMapper.updateInfo(teaInfo);
        return 0;
    }

    @Override
    public List<TeaInfo> getSelect(String Grade, String Class) {
        String classnum = Grade.concat(Class);
        List<TeaInfo> teaInfoList = teaInfoMapper.selectByGC(classnum);
        return teaInfoList;
    }
}
