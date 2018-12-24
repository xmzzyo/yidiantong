package userTest;

import com.ydt.util.SendEmail;
import org.junit.Test;

/**
 * Created by ydt on 2016/6/23.
 */
public class mailTest {


    @Test
    public void sendEmial()
    {
        SendEmail sendEmail = new SendEmail();
        sendEmail.send("zzyo1995@qq.com","一点通","啦啦啦啦啦啊啦");
    }
}
