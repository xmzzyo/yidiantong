<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <meta charset="UTF-8">
    <title>个人信息设置</title>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    <script type="text/javascript" src="/js/lib/ajaxfileupload.js"></script>
    <script>

        $(document).ready(function () {
            // 提交时验证表单
            var validator = $("#changeInfoForm").validate({
                errorPlacement: function (error, element) {
                    // Append error within linked label
                    $(element)
                            .closest("form")
                            .find("label[for='" + element.attr("id") + "']")
                            .append(error);
                },
                errorElement: "span",
                messages: {
                    userid: {
                        required: " (用户名必须填写)",
                        maxlength: "（用户名长度不能超过10个字符）"
                    },
                    tel: {
                        required: " (电话必须填写)",
                        maxlength: " (电话长度不能超过 11个数字)",
                        minlength: "(电话长度不能少于11个数字)"
                    }
                }
            });

            $(".cancel").click(function () {
                validator.resetForm();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
    <style>
        .error {
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
            <li><a href="/parent_navi/parent_homepage.html">首页</a></li>
            <li><a href="/parent_navi/tea_list.html" target="_blank">教师列表</a></li>
            <li><a href="/parent_navi/latest_activities.html" target="_blank">校园活动</a></li>
            <li><a href="/parent_navi/exam_plan.html" target="_blank">考试安排</a></li>
            <!-- Dropdown Trigger -->
            <li><a class="dropdown-button" href="#!" data-activates="dropdown1" data-beloworigin="true">校园快讯<i
                    class="material-icons right">arrow_drop_down</i></a></li>
            <li><a class="dropdown-button" href="#!" data-activates="dropdown2" data-beloworigin="true">个人设置<i
                    class="material-icons right">arrow_drop_down</i></a></li>
        </ul>
    </div>
</nav>

<ul id="dropdown1" class="dropdown-content">
    <li><a href="/parent_navi/hot_news.html" target="_blank">校园热点新闻</a></li>
    <li><a href="/parent_navi/hot_question.html" target="_blank">热点问题讨论</a></li>
    <li><a href="/parent_navi/important_affairs.html" target="_blank">重要事务通知</a></li>
</ul>
<ul id="dropdown2" class="dropdown-content">
    <li><a href="/parent_navi/parent_infomanage.html" target="_blank">个人信息</a></li>
    <li><a href="/parent_navi/index.html" target="_blank">退出登录</a></li>
</ul>


<div class="container">
    <div class="row">
        <div class="col s12">
            <div class="page-header">
                <h2>个人信息设置</h2>
            </div>

            <form id="changeInfoForm" method="post" class="col s12 " action="/par/userinfo.html" enctype="multipart/form-data">
                <div class="col s8">
                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="name" type="text" name="name" value=${user.name} class="validate" length="10"
                               data-rule-maxlength="10" required>
                        <label for="name">姓名</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="stuname" type="text" name="stuName" value=${user.stuName} class="validate"
                               length="10" data-rule-maxlength="10" required>
                        <label for="stuname">学生姓名</label>
                    </div>

                    <div class="s4">
                        <div class="row"></div>
                    </div>

                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select>
                            <option value="" disabled selected>请选择年级</option>
                            <option value="1">一年级</option>
                            <option value="2">二年级</option>
                            <option value="3">三年级</option>
                            <option value="4">四年级</option>
                            <option value="5">五年级</option>
                            <option value="6">六年级</option>
                        </select>
                    </div>
                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select>
                            <option value="" disabled selected>请选择班级</option>
                            <option value="1">一班</option>
                            <option value="2">二班</option>
                            <option value="3">三班</option>
                            <option value="4">四班</option>
                            <option value="5">五班</option>
                            <option value="6">六班</option>
                        </select>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">phone</i>
                        <input id="tel" type="text" name="tel" value=${user.tel} class="validate" length="11" required
                               data-rule-maxlength="11" data-rule-minlength="11">
                        <label for="tel">电话</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">textsms</i>
                        <input id="qqnum" type="text" name="qqnum" value=${user.qqnum}>
                        <label for="qqnum">QQ</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">email</i>
                        <input id="mail" type="text" name="email" value=${user.email} class="validate" length="30"
                               data-rule-email="true">
                        <label for="mail">邮箱</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">stars</i>
                        <input id="birth" type="text" name="birth" value=${user.birth} class="validate"
                               data-rule-dateISO="true">
                        <label for="birth">出生年月</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">room</i>
                        <input id="address" type="text" name="address" value=${user.address} class="validate"
                               length="10">
                        <label for="address">家庭住址</label>
                    </div>
                </div>

                <div class="col s4">
                    <div class="row"></div>
                    <div class="row"></div>
                    <div>
                        <img class="materialboxed" width="253.25" src=${user.picture}>
                    </div>

                        <div class="file-field input-field">
                            <div class="btn waves-effect waves-light">
                                <span>选择图片</span>
                                <input type="file" name="file" id="uploadFile" accept="image/*">
                            </div>
                            <div class="file-path-wrapper">
                                <input class="file-path validate" type="text">
                            </div>
                        </div>

                </div>


                <div class="col s12 center">
                    <div class="col s6 offset-l1">
                        <button type="reset" class="btn waves-effect waves-light" name="signup" value="Sign up">重置
                        </button>
                    </div>
                    <div class="col s2">
                        <button type="submit" class="btn waves-effect waves-light" name="signup2" value="Sign up 2">提交
                        </button>
                    </div>
                </div>
            </form>
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