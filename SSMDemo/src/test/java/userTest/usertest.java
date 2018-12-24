
package userTest;

import com.ydt.user.service.ParentService;
import org.junit.Test;

import javax.annotation.Resource;

/**
 * Created by ydt on 2016/6/16.
 */
public class usertest {

    @Resource
    private ParentService parentService;

    @Test
    public void getuser() throws Exception {
        parentService.findUsers();
    }
}
