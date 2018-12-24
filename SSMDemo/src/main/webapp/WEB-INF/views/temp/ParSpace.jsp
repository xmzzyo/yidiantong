<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    <meta charset="UTF-8">
    <title>首页</title>
    <style type="text/css">
    </style>
</head>
<body>
<nav>
    <div class="nav-wrapper">
        <a href="#!" class="brand-logo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校园资讯一点通</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/parent_navi/parent_homepage.html">首页</a></li>
            <li><a href="/parent_navi/tea_list.html" target="_blank">教师列表</a></li>
            <li><a href="/parent_navi/latest_activities.html"  target="_blank">校园活动</a></li>
            <li><a href="/parent_navi/exam_plan.html"  target="_blank">考试安排</a></li>
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-button" href="#!" data-activates="dropdown1" data-beloworigin="true">校园快讯<i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button" href="#!" data-activates="dropdown2" data-beloworigin="true">个人设置<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </div>
</nav>


<ul id="dropdown1" class="dropdown-content">
    <li><a href="/parent_navi/hot_news.html" target="_blank">校园热点新闻</a></li>
    <li><a href="/parent_navi/hot_question.html" target="_blank">热点问题讨论</a></li>
    <li><a href="/parent_navi/important_affairs.html" target="_blank">重要事务通知</a></li>
</ul>
<ul id="dropdown2" class="dropdown-content">
    <li><a href="/par/userinfo.html" target="_blank">个人信息</a></li>
    <li><a href="/logout.html" target="_blank">退出登录</a></li>
</ul>






<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col s6">
                <h5 class="white-text">校园资讯一点通</h5>
                <p class="grey-text text-lighten-4">本网站致力于成为家长与学校沟通的桥梁。</p>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © 2016 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">更多精彩，敬请期待！</a>
        </div>
    </div>
</footer>
</body>
</html>