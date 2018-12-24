package com.ydt.common.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.util.List;
import java.util.UUID;

/**
 * Created by zzyo on 2016/6/28.
 */
@Controller
public class UploadFileController {

    @RequestMapping(value = "/upload.html", method = RequestMethod.GET)
    public void getUpload()
    {
    }

    @RequestMapping(value = "/upload.html", method = RequestMethod.POST)
    public void upload(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String path = request.getSession().getServletContext().getRealPath("");
        System.out.println(path);
        int num = path.indexOf("target");
        String root =path.substring(0,num);
        String dstPath = root + "src\\main\\webapp\\static\\images\\news\\";
        String tarDstpath = path+"\\static\\images\\news\\";
        if(!new File(dstPath).exists())
            new File(dstPath).mkdirs();
        if(!new File(tarDstpath).exists())
            new File(tarDstpath).mkdirs();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
        servletFileUpload.setHeaderEncoding("UTF-8");
        servletFileUpload.setFileSizeMax(1024*1024);
        List<FileItem> fileitems = servletFileUpload.parseRequest(request);
        String filename = "";
        for(FileItem fileItem : fileitems)
        {
            filename = UUID.randomUUID()+fileItem.getName().substring(fileItem.getName().lastIndexOf("."),fileItem.getName().length());
            System.out.println(filename);
            File file = new File(dstPath, filename);
            fileItem.write(file);
            Files.copy(file.toPath(), new File(tarDstpath, filename).toPath());
        }
        String imgUrl = "http://localhost:8080/images/news/" + filename;
        response.setContentType("text/text;charset=utf-8");
        PrintWriter printWriter = response.getWriter();
        printWriter.print(imgUrl);
        printWriter.flush();
        printWriter.close();
    }
}
