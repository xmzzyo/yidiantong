<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../../static/css/materialize.min.css" media="screen,projection"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../../static/js/jQuery-core/materialize.min.js"></script>
    <meta charset="UTF-8">
    <title>教师信息查看</title>
    <style type="text/css">


    </style>
</head>
<body>

<nav>
    <div class="nav-wrapper">
        <a href="#!" class="brand-logo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校园资讯一点通</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/parent_navi/parent_homepage.html">首页</a></li>
            <li><a href="/parent_navi/tea_list.html" >教师列表</a></li>
            <li><a href="/parent_navi/latest_activities.html"  >校园活动</a></li>
            <li><a href="/parent_navi/exam_plan.html"  >考试安排</a></li>
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-button" href="#!" data-activates="dropdown1" data-beloworigin="true">校园快讯<i class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button" href="#!" data-activates="dropdown2" data-beloworigin="true">个人设置<i class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </div>
</nav>


<ul id="dropdown1" class="dropdown-content">
    <li><a href="/parent_navi/hot_news.html" >校园热点新闻</a></li>
    <li><a href="/parent_navi/hot_question.html" >热点问题讨论</a></li>
    <li><a href="/parent_navi/important_affairs.html" >重要事务通知</a></li>
</ul>
<ul id="dropdown2" class="dropdown-content">
    <li><a href="/parent_navi/parent_infomanage.html" >个人信息</a></li>
    <li><a href="/parent_navi/index.html" >退出登录</a></li>
</ul>


<div class="container">
    <div class="row">
        <div class="page-header">
            <h2>教师信息查看</h2>
        </div>

        <div class="col s4">
            <table class="highlight">
                <tr>
                    <th data-field="teaid">教工号：</th>
                    <td>T201317533</td>
                </tr>

                <tr>
                    <th data-field="name">姓名：</th>
                    <td>吕金旺</td>
                </tr>

                <tr>
                    <th data-field="birth">出生年月：</th>
                    <td>1994/02/24</td>
                </tr>

                <tr>
                    <th data-field="coursename">课程名：</th>
                    <td>计算机组成原理</td>
                </tr>

                <tr>
                    <th data-field="tel">电话：</th>
                    <td>13163235957</td>
                </tr>

                <tr>
                    <th data-field="mail">邮箱：</th>
                    <td>hust_ljw_224@163.com</td>
                </tr>

                <tr>
                    <th data-field="position">职位：</th>
                    <td>学渣一枚</td>
                </tr>

                <tr>
                    <th data-field="class1">班级一：</th>
                    <td>三年级一班</td>
                </tr>

                <tr>
                    <th data-field="class2">班级二：</th>
                    <td>三年级五班</td>
                </tr>

                <tr>
                    <th data-field="class3">班级三：</th>
                    <td>三年级二班</td>
                </tr>

            </table>
        </div>
        <div class="row"></div>
        <div class="col s12">

            <ul class="collapsible" data-collapsible="accordion">
                <li class="">
                    <div class="collapsible-header"><i class="material-icons">stars</i>个人荣誉</div>
                    <div class="collapsible-body" style="display: none;"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p></div>
                </li>
                <li class="">
                    <div class="collapsible-header"><i class="material-icons">place</i>个人简介</div>
                    <div class="collapsible-body" style="display: none;"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></div>
                </li>
            </ul>

        </div>
    </div>
</div>




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
            <a class="grey-text text-lighten-4 right" href="#!">更过精彩，敬请期待！</a>
        </div>
    </div>
</footer>


</body>
</html>
