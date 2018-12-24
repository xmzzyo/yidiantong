<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/26
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>安全中心</title>

    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
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

</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h2>安全中心</h2>
        </div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>

        <form name="answerForm" id="changePasswordForm" method="post" class="col s12 " action="/safety_center.html">
            <div class="col s12 card-panel">
                <div class="col s4 left ">
                    <div class="row"></div>
                    <div class="input-field col s12" data-beloworigin="true">
                        <i class="material-icons prefix">verified_user</i>
                        <select name="QuestionChoose">
                            <option value="" disabled selected>您母亲的名字是什么？</option>
                        </select>
                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="answer1" type="text" name="answer1" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="answer1">请输入答案</label>

                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="affirmanswer1" type="text" name="affirmanswer1" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="affirmanswer1">请再次输入答案</label>
                        <div class="row" style="text-align: center">${message1}</div>
                    </div>

                </div>
                <div class="col s4  left ">
                    <div class="row"></div>
                    <div class="input-field col s12" data-beloworigin="true">
                        <i class="material-icons prefix">verified_user</i>
                        <select name="QuestionChoose">
                            <option value="" disabled selected>您的出生地是哪里？</option>
                        </select>
                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="answer2" type="text" name="answer2" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="answer2">请输入答案</label>
                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="affirmanswer2" type="text" name="affirmanswer2" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="affirmanswer2">请再次输入答案</label>
                        <div class="row" style="text-align: center">${message2}</div>
                    </div>


                    <div class="row"></div>


                    <div class="row ">
                        <button class="btn waves-effect waves-light col s10 offset-s1" type="submit" name=""
                                onclick="">确&nbsp;&nbsp;&nbsp;&nbsp;定
                        </button>
                    </div>
                </div>
                <div class="col s4  left ">
                    <div class="row"></div>
                    <div class="input-field col s12" data-beloworigin="true">
                        <i class="material-icons prefix">verified_user</i>
                        <select name="QuestionChoose">
                            <option value="" disabled selected>您父亲的姓名是什么?</option>
                        </select>
                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="answer3" type="text" name="answer3" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="answer3">请输入答案</label>
                    </div>
                    <div class="input-field col s12 ">
                        <i class="material-icons prefix">mode_edit</i>
                        <input id="affirmanswer3" type="text" name="affirmanswer3" class="validate" length="10"
                               data-rule-maxlength="30" required>
                        <label for="affirmanswer3">请再次输入答案</label>
                        <div class="row" style="text-align: center">${message3}</div>
                    </div>
                </div>
            </div>
        </form>

        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row"></div>
    </div>
</div>
<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
