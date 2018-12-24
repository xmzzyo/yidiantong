<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/26
  Time: 16:57
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
    <title>完成-找回密码</title>

</head>

<nav>
    <div class="nav-wrapper">
        <img src="/images/logo.png" >
        <a href="#!" class="brand-logo"><span class="setFont">校园资讯一点通</span> </a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/index.html" class="setWR">返回首页</a></li>

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
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">重置密码<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">完  成</a>
                </div>
            </div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
                <div class="row">
                    <div class="col s4 offset-s4 left card-panel">
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row" style="font-size: 22px;text-align: center">恭喜你，密码已修改完成！</div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>

                        <div class="row " >
                            <a href="/index.html"><button class="btn waves-effect waves-light col s10 offset-s1" type="submit" name="" onclick="">返回登录
                            </button></a>
                        </div>
                    </div>
                </div>
            <div class="row"></div>
            <div class="row"></div>
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
            <a class="grey-text text-lighten-4 right" href="#!">更多精彩，敬请期待！</a>
        </div>
    </div>
</footer>

</body>
</html>
