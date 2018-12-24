package com.ydt.common.service;

import com.ydt.common.bean.Auth;
import com.ydt.common.dao.AuthMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zzyo on 2016/6/24.
 */
@Service
public class AuthServiceImpl implements AuthService{

    @Resource
    private AuthMapper authMapper;

    @Override
    public List<Auth> listAll() {
        List<Auth> authList = authMapper.listAll();
        return authList;
    }

    @Override
    public String login(Auth auth) {
        Auth auth1 = authMapper.selectByID(auth.getId());
        if(auth1 == null)
        {
            return "uid_error";
        }
        if(auth1.getPassword().equals(auth.getPassword())) {

            return "login_success";
        }
        else {
            return "upass_error";
        }
    }

    @Override
    public boolean logout(Auth auth) {
        return false;
    }

    @Override
    public boolean validId(String id) {
        Auth auth = authMapper.selectByID(id);
        if(auth == null)
        {
            return false;
        }
        else {
            return true;
        }
    }

    @Override
    public boolean validQue(String id, String Qid, String ans) {
        Auth auth = authMapper.selectByID(id);
        if(Qid.equals("1"))
        {
            if(ans.equals(auth.getAnswer1()))
                return true;
            else
                return false;
        }
        else if(Qid.equals("2"))
        {
            if(ans.equals(auth.getAnwser2()))
                return true;
            else
                return false;
        }
        else if(Qid.equals("3"))
        {
            if(ans.equals(auth.getAnwser3()))
                return true;
            else
                return false;
        }
        return false;
    }

    @Override
    public String resetPass(String id, String upass) {
        Auth auth = new Auth();
        auth.setId(id);
        auth.setPassword(upass);
        Auth auth1 = authMapper.selectByID(id);
        if(auth1.getPassword().equals(upass))
        {
            return "equal_error";
        }
        int res = authMapper.upadteAuth(auth);
        if(res > 0)
            return "reset_success";
        else
            return "reset_fail";
    }

    @Override
    public int updateAnswer(Auth auth) {
        authMapper.upadteAuth(auth);
        return 0;
    }


}
