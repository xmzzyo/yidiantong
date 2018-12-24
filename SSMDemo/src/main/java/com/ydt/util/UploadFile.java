package com.ydt.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

/**
 * Created by zzyo on 2016/6/27.
 */
public class UploadFile {

    public String uploadImg(MultipartFile img, HttpSession httpSession, HttpServletRequest request) throws IOException {

        String pathRoot = request.getSession().getServletContext().getRealPath("");
        System.out.println(pathRoot);
        int num = pathRoot.indexOf("target");
        String root =pathRoot.substring(0,num);
        System.out.println(img.getSize());

        String basePath = root + "src\\main\\webapp\\static\\images";
        String Tpath = basePath+"\\tea\\"+httpSession.getAttribute("id")+".jpg";
        String tarTpath = pathRoot+"\\static\\images\\tea\\"+httpSession.getAttribute("id")+".jpg";
        String Upath = basePath+"\\par\\"+httpSession.getAttribute("id")+".jpg";
        String tarUpath = pathRoot+"\\static\\images\\par\\"+httpSession.getAttribute("id")+".jpg";
        MultipartFile tmp = img;
        if(httpSession.getAttribute("authType") == "T")
        {
            File file = new File(Tpath);
            File dstfile = new File(tarTpath);
            img.transferTo(file);
            if(dstfile.exists())
            {
                dstfile.delete();
            }
            Files.copy(file.toPath(), dstfile.toPath());
            return "/static/images/tea/"+httpSession.getAttribute("id")+".jpg";
        }
        else if(httpSession.getAttribute("authType") == "U")
        {
            File file = new File(Upath);
            File dstfile = new File(tarUpath);
            img.transferTo(file);
            if(dstfile.exists())
            {
                dstfile.delete();
            }
            Files.copy(file.toPath(), dstfile.toPath());
            return "/static/images/par/"+httpSession.getAttribute("id")+".jpg";
        }
        return "upload_error";
    }
}
