package com.ydt.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by zzyo on 2016/6/27.
 */
/*@Controller*/
public class UploadController {


    @RequestMapping(value = "/upload.html", method = RequestMethod.GET)
    public ModelAndView getUpload()
    {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("temp/upload");
        return modelAndView;
    }

    @RequestMapping(value = "/upload.html")
    public void upload(@RequestParam(value = "file", required = false) MultipartFile file,HttpServletRequest request) throws Exception
    {
        //System.out.println(httpServletRequest.getPart());
        System.out.println("uploading..........................");
        //System.out.println(file.getSize());
        /*MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
        MultipartFile imgFile  =  multipartHttpServletRequest.getFile("photo");
        System.out.println(imgFile.getSize());*/
        String fileName = file.getOriginalFilename();
        File file1 = new File(fileName);
        file.transferTo(file1);
    }
}
