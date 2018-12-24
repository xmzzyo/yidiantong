<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="tea_navi_demo.jsp"%>
<!DOCTYPE html>
<html>
<head>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../../static/css/materialize.min.css" media="screen,projection"/>
    <meta charset="UTF-8">
    <title>个人信息设置</title>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript" src="../../static/js/jQuery-core/materialize.min.js"></script>
    <meta charset="UTF-8">
    <title>家长信息查看</title>
    <style type="text/css">


    </style>
</head>
<body>


<div class="container">
    <div class="row">
        <div class="page-header">
            <h2>家长信息查看</h2>
        </div>

        <div class="col s4">
            <table class="highlight">
                <tr>
                    <th data-field="stuid">学号：</th>
                    <td>T201317533</td>
                </tr>

                <tr>
                    <th data-field="name">家长姓名：</th>
                    <td>吕金旺</td>
                </tr>

                <tr>
                    <th data-field="stuname">学生姓名：</th>
                    <td>1994/02/24</td>
                </tr>

                <tr>
                    <th data-field="stuclass">学生班级：</th>
                    <td>三年级二班</td>
                </tr>

                <tr>
                    <th data-field="tel">电话：</th>
                    <td>计算机组成原理</td>
                </tr>

                <tr>
                    <th data-field="mail">邮箱：</th>
                    <td>13163235957</td>
                </tr>

                <tr>
                    <th data-field="birth">家长出生年月：</th>
                    <td>三年级五班</td>
                </tr>

                <tr>
                    <th data-field="address">家庭住址：</th>
                    <td>三年级五班</td>
                </tr>

                <tr>
                    <th data-field="qqnum">家长QQ：</th>
                    <td>hust_ljw_224@163.com</td>
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




<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
