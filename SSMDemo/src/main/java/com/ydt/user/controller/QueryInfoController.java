package com.ydt.user.controller;

import com.ydt.user.bean.ParInfo;
import com.ydt.user.service.ParentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.json.Json;

/**
 * Created by zzyo on 2016/6/28.
 */
@Controller
@RequestMapping("/par")
public class QueryInfoController {

    @Resource
    ParentService parentService;


/*    @RequestMapping(value = "/queryByID.html",method = RequestMethod.GET)
    public Json queryByID(@RequestParam String id)
    {
        ParInfo parInfo = parentService.getUserInfo(id);
        Json json = null;
        return json;

    }*/

}
