package com.ydt.util;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by ydt on 2016/6/23.
 */
public class SendEmail {

    // Properties文件
    private Properties prop;

    // 发送人邮箱
    private String from;

    // SMTP服务器
    private String host;

    // 发件人邮箱的用户名和密码
    private String user;
    private String password;

    public void send(String to, String subject, String content) {

        try {
            // 使用JavaMail发送邮件的5个步骤
            // 1、创建session
            Session mailSession = Session.getDefaultInstance(getProp());
            mailSession.setDebug(true);
            // 2、通过session得到transport对象
            Transport transport = mailSession.getTransport("smtp");
            // 3、使用邮箱的用户名和密码连上邮件服务器，发送邮件时，发件人需要提交邮箱的用户名和密码给smtp服务器，用户名和密码都通过验证之后才能够正常发送邮件给收件人。
            transport.connect(getHost(), getUser(), getPassword());
            //4、创建邮件
            Message message = createSimpleMail(mailSession,to,subject,content);
            //5、发送邮件
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * 创建邮件,只包含文本
     */
    public MimeMessage createSimpleMail(Session session, String to, String subject, String content) throws Exception {
        // 创建邮件对象
        MimeMessage message = new MimeMessage(session);
        // 指明邮件的发件人
        message.setFrom(new InternetAddress(getFrom()));
        // 指明邮件的收件人
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        // 邮件的标题
        message.setSubject(subject);
        // 邮件的文本内容
        message.setContent(content, "text/html;charset=UTF-8");
        message.saveChanges();
        // 返回创建好的邮件对象
        return message;

    }

    public Properties getProp() {
        // 读取Properties文件
        prop = new Properties();
        InputStream in = SendEmail.class.getResourceAsStream("/properties/mail.properties");
        try {
            prop.load(in);
        } catch (IOException e) {

            e.printStackTrace();
        }

        return prop;
    }

    public String getFrom() {
        from = getProp().getProperty("mail.stmp.from").trim();
        return from;
    }

    public String getHost() {
        host = getProp().getProperty("mail.smtp.host").trim();
        return host;
    }

    public String getUser() {
        user = getProp().getProperty("mail.stmp.user").trim();
        return user;
    }

    public String getPassword() {
        password = getProp().getProperty("mail.stmp.password").trim();
        return password;
    }
}
