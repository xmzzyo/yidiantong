<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/26
  Time: 16:57
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
    <meta charset="UTF-8">
    <title>密保问题-找回密码</title>
    <style type="text/css">
        a{

        }

    </style>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript" src="../../static/js/jQuery-core/materialize.min.js"></script>
    <script>


        $(document).ready(function() {
            // 提交时验证表单
            var validator = $("#changePasswordForm").validate({
                errorPlacement: function(error, element) {
                    // Append error within linked label
                    $( element )
                            .closest( "form" )
                            .find( "label[for='" + element.attr( "id" ) + "']" )
                            .append( error );
                },
                errorElement: "span",
                messages: {
                    Question1: {
                        required: " (密保问题必须填写)",
                        maxlength: "（答案长度不能超过10个字符）",
                    },
                    Question2:{
                        required: " (密保问题必须填写)",
                        maxlength: "（答案长度不能超过10个字符）",
                    },
                    Question3:{
                        required: " (密保问题必须填写)",
                        maxlength: "（答案长度不能超过10个字符）",
                    },
                }
            });

            $(".cancel").click(function() {
                validator.resetForm();
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('select').material_select();
        });
    </script>
    <style>
        .error{
            font-family: 方正喵呜体;
            color: saddlebrown;
        }
    </style>
</head>

<body>

<nav>
    <div class="nav-wrapper">
        <a href="#!" class="brand-logo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校园资讯一点通</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/forgotpassword/index.html">返回首页</a></li>

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
                    <a  style="font-size:22px;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">验证账号<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">重置密码<i class="material-icons right">send</i></a>
                </div>

                <div class="input-field col s3">
                    <a  style="font-size:22px;background-color: gray;width: 80%;height: 100%;line-height: 100px;" class="btn waves-effect waves-light col s12">完  成</a>
                </div>
            </div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <div class="row"></div>
            <form id="changePasswordForm" method="post" class="col s12 " action="/forgotpassword/answer_pass_question.html">
                <div class="row">
                    <div class="col s4 offset-s4 left card-panel">
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="row"></div>
                        <div class="input-field col s12" data-beloworigin="true">
                            <i class="material-icons prefix">dashboard</i>
                            <select name="QuestionChoose">
                                <option value="" disabled selected>请选择密保问题</option>
                                <option value="1" >您母亲的名字是什么？</option>
                                <option value="2" >您的出生地是哪里？</option>
                                <option value="3" >您父亲的姓名是什么</option>
                            </select>
                        </div>
                        <div class="input-field col s12 ">
                            <i class="material-icons prefix">mode_edit</i>
                            <input id="answer" type="text"  name="answer" class="validate" length="10" data-rule-maxlength="30" required>
                            <label for="answer">请输入答案</label>
                        </div>

                        <div class="row" style="text-align: center">${message}</div>
                        <div class="row"></div>
                        <div class="row"></div>


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