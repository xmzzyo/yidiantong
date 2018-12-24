<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2016/6/27
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="../../static/css/changefont.css" media="screen,projection"/>
    <meta charset="UTF-8">
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    <style>
        body
        {
            background-image:url('/static/images/3.jpg');
            background-repeat:no-repeat;
            background-attachment:fixed;
        }
    </style>

</head>
<body>

<div>
    <nav style="height: 80px;padding-top: 5px;padding-left: 20px;letter-spacing: 3px;">
        <div class="nav-wrapper">
            <img src="/images/logo.png" style="">
            <a href="/par/space.html" class="brand-logo"
               style="atsc-nav-left: 20px;font-family:华文新魏;font-weight: 900;color: white;">
                校园资讯一点通
            </a>
            <ul class="right hide-on-med-and-down">
                <li><a href="/tea/teacher_list.html"><span class="setstyle">教师列表</span></a></li>
                <!-- Dropdown Trigger -->
                <li><a class="dropdown-button" href="#!" data-activates="dropdown1" data-beloworigin="true"><span class="setstyle">校园快讯</span><i
                        class="material-icons right">arrow_drop_down</i></a></li>
                <li><a class="dropdown-button" href="#!" data-activates="dropdown2" data-beloworigin="true"><span class="setstyle">个人设置</span><i
                        class="material-icons right">arrow_drop_down</i></a></li>
                <li><span class="setstyle" style="padding-right: 10px;padding-left: 10px;">欢迎${sessionScope.uname}家长</span></li>
            </ul>
        </div>
    </nav>


    <ul id="dropdown1" class="dropdown-content" style="font-family: 微软雅黑;font-weight: 300;letter-spacing: 2px">
        <li><a href="/announce.html" target="_blank" >校园公告</a></li>
        <li><a href="/hot_news.html" target="_blank">热点新闻</a></li>
        <li><a href="/activities.html" target="_blank">最新活动</a></li>
        <li><a href="/exam_plan.html" target="_blank">考试安排</a></li>
        <li><a href="/hot_question.html"target="_blank">热点问题</a></li>
    </ul>

    <ul id="dropdown2" class="dropdown-content" style="font-family: 微软雅黑;font-weight: 300;letter-spacing: 2px">
        <li><a href="/par/userinfo.html">个人信息</a></li>
        <li><a href="/reset_pass/input_account.html" target="_blank">修改密码</a></li>
        <li><a href="/safety_center.html" target="_blank">安全中心</a></li>
        <li><a href="/logout.html">退出登录</a></li>
    </ul>

</div>


</body>

</html>