<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/26
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="../../static/css/changefont.css" media="screen,projection"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    <meta charset="UTF-8">
    <title>重置密码-找回密码</title>

</head>
<nav style="height: 80px;padding-top: 5px;padding-left: 20px;letter-spacing: 3px;">
    <div class="nav-wrapper">
        <img src="/images/logo.png" >
        <a href="#!" class="brand-logo"><span class="setFont">校园资讯一点通</span></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/redirectSpace.html"><span class="setWR">返回首页</span></a></li>

            <!-- Dropdown Trigger -->
        </ul>
    </div>
</nav>


<div class="container">
    <div class="row">
        <div class="col s12">
            <div class="page-header">
                <h2 style="text-align: center">找回密码</h2>
            </div>
            <div class="row">
                <div class="input-field col s3">
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;text-align: center;" class="btn waves-effect waves-light col s12">填写账号<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">验证账号<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">重置密码<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">完  成</a>
                </div>
            </div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <form id="changePasswordForm" method="post" class="col s12 " action="/reset_pass/new_pass.html">
                <div class="row">
                    <div class="col s4 offset-s4 left card-panel">
                        <div class="row"></div>
                        <div class="input-field col s12 ">
                            <i class="material-icons prefix">lock</i>
                            <input id="newpassword" type="password"  name="password" class="validate" length="15"  data-rule-maxlength="30" required>
                            <label for="newpassword">新密码</label>
                        </div>

                        <div class="input-field col s12 ">
                            <i class="material-icons prefix">lock</i>
                            <input id="affirmpassword" type="password"  name="confirm" class="validate" length="15" data-rule-maxlength="30" required>
                            <label for="affirmpassword">确认新密码</label>
                        </div>
                        <div class="row"></div>
                        <div class="row" style="text-align: center">${message}</div>
                        <div class="row " >
                            <button class="btn waves-effect waves-light col s10 offset-s1" type="submit" name="" onclick="">确&nbsp;&nbsp;&nbsp;&nbsp;定
                            </button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
        </div>
    </div>
</div>



<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
