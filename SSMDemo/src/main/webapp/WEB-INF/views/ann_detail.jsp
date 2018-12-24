<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/4
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../../static/css/materialize.min.css" media="screen,projection"/>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript" src="../../static/js/jQuery-core/materialize.min.js"></script>
    <meta charset="UTF-8">
</head>
<body>
<div class="container">
    <div class="col s10 offset-s1">
        <img src="../../static/images/timg_副本.jpg" style="width: 100%">
    </div>
</div>
<div class="row">
    <div class="col s8 offset-s2">
        <div class="row">
            <h5  style="text-align: center;font-family: 宋体;font-weight: 700">${ann.title}</h5>
            <p style="font-family: 黑体;font-size: 8px;font-weight: 900;text-align: center">(${ann.annDate.year+1900}-${ann.annDate.month+1}-${ann.annDate.date})</p>
        </div>
        <hr style="text-align: center;border: solid 1px gray"/>
        <div class="row">
            ${ann.annText}

            <%--<P>
                全校各单位，各位教职工、各位同学：
                <BR>&nbsp;&nbsp;&nbsp;近期，武汉市及我国南方地区强降雨天气持续增强。7月2日上午，强降雨造成我校紫菘学生公寓、西操场、喻园大道东段、东校区等地严重积水。据气象部门预计，强降雨天气还将持续。
                <BR>&nbsp;&nbsp;&nbsp;面对严重积水，学校总务、后勤、保卫、基建、房管、学工、研工、宣传、校医院等部门、单位及二级单位通力合作，采取多种措施，加紧排涝，保障了学校和师生员工的安全。按照《教育部办公厅关于进一步做好学校防灾减灾工作的通知》（已在学校主页上转发）的要求，学校将进一步强化安全隐患排查和治理，进一步做好灾害防范工作。
                <BR>&nbsp;&nbsp;&nbsp;在此，学校提醒广大师生，要进一步增强防灾减灾的安全意识，确保人身安全，减少财产经济损失。现就暑期安全的有关事项通知如下：
                <BR>&nbsp;&nbsp;&nbsp;一、强降雨时，行人、车辆要注意安全，避开排水口和窨井盖，绕行积水路段，远离围墙；要注意因恶劣天气而导致的树木倾倒、树枝折断坠落、围墙倒塌；要注意喻家山山洪以及可能产生的山体滑坡。
                <BR>&nbsp;&nbsp;&nbsp;二、灾害天气有可能造成校园部分区域停水停电，学校会尽快处理并恢复供水供电。
                <BR>&nbsp;&nbsp;&nbsp; 三、积水退后，要注意卫生防疫。校医院将进行防疫消毒。
                <BR>&nbsp;&nbsp;&nbsp;四、因校园主干道改造，要注意关注校园交通管制信息，强降雨时，请将车辆停放在地势高处。
                <BR>&nbsp;&nbsp;&nbsp;五、在暑期中安排有教学活动的各院系，请关注近期天气情况，及时调整有关安排。有校内教学实践活动的，请注意教学楼或实验实践场所的环境及出行道路安全，根据实际情况及时调整相关教学活动，并及时与教务处联系（电话：87542123）；有校外实习活动的，请密切关注实习地区的天气情况，确保参加实习的师生安全，若有必要可调整实习时间。
                <BR>&nbsp;&nbsp;&nbsp;六、若有情况和问题，可及时联系相关部门。灾害报警电话：保卫处87541110（24小时）、防汛办公室87544800（24小时）、学校办公室87542101。房屋漏水紧急处置联系电话：后勤集团87542244。
            </P>
--%>
        </div>
        <hr style="text-align: center;border: solid 1px gray"/>

        <!-- 多说评论框 start -->
        <div class="ds-thread" data-thread-key=${cid} data-title="Comment" data-url="http://hust-ydt/"></div>
        <!-- 多说评论框 end -->
        <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
        <script type="text/javascript">
            var duoshuoQuery = {short_name:"hust-ydt"};
            (function() {
                var ds = document.createElement('script');
                ds.type = 'text/javascript';ds.async = true;
                ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                ds.charset = 'UTF-8';
                (document.getElementsByTagName('head')[0]
                || document.getElementsByTagName('body')[0]).appendChild(ds);
            })();
        </script>
        <!-- 多说公共JS代码 end -->

    </div>
</div>

</body>
</html>
