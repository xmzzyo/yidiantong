<%--
  Created by IntelliJ IDEA.
  User: zzyo
  Date: 2016/6/14
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {

            // 提交时验证表单
            var validator = $("#loginform").validate({
                errorPlacement: function(error, element) {
                    // Append error within linked label
                    $( element )
                            .closest( "form" )
                            .find( "label[for='" + element.attr( "id" ) + "']" )
                            .append( error );
                },
                errorElement: "span",
                messages: {
                    userid: {
                        required: " (必需字段)",
                        minlength: " (用户名长度不能低于10个字符)",
                        maxlength: "（用户名长度不能超过10个字符）"
                    },
                    password: {
                        required: " (必需字段)",
                        minlength: " (用户名长度不能少于 3 个字符)",
                        maxlength: " (用户名长度不能大于 12 个字符)"
                    }
                }
            });

            $(".cancel").click(function() {
                validator.resetForm();
            });
        });
    </script>

    <style>
        .error{
            color:rebeccapurple;
        }
    </style>


<%--    <script type="text/javascript">
        function jump(){
            var type = document.getElementById("loginform").userid.value.charAt(0);
            if (type=='U'){
                document.getElementById("loginform").action="/parent/login.html";
            }
            else if(type=='T'){
                document.getElementById("loginform").action="/tea/login.html";
            }else{
                alert("用户名首字母输入错误！");
            }
        }

    </script>--%>

</head>
<body>


<div style="position:absolute; width:100%; height:100%; z-index:-1">
    <img src="/images/bg.jpg" height="100%" width="100%"/>
</div>

<!-- Navbar goes here -->
<nav>
    <div class="nav-wrapper" color="#81d4fa">
        <a href="" class="brand-logo center">校园咨询一点通</a>
    </div>
</nav>

<div class="container">
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
        <div class="col s9">
            <div class="row"></div>
        </div>

        <div class="col s3">
            <div class="row">
                <form id="loginform" class="col s12" action="/index.html" method="post">
                    <div class="row card-panel">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">account_circle</i>
                                <input id="id" type="text"  name="id" class="validate"  data-rule-minlength="10"  data-rule-maxlength="10"  required>
                                <label for="id">用户名</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">lock</i>
                                <input id="password" type="password" name="password" class="validate"  data-rule-minlength="3" data-rule-maxlength="12" required>
                                <label for="password">密码</label>
                            </div>
                        </div>
                        <div class="row">
                            <button class="btn waves-effect waves-light col s10 offset-s1" type="submit" name="action">登&nbsp;&nbsp;&nbsp;&nbsp;陆
                            </button>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <p  class="margin medium-small"><a href="register.html">现在注册!</a></p>
                            </div>
                            <div class="input-field col s6">
                                <p class="margin right-align medium-small"><a href="/forgotpassword/input_account.html">忘记密码?</a></p>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%--<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>--%>
<script type="text/javascript" src="/js/materialize.min.js"></script>
</body>
</html>