<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@include file="parent_header.jsp"%>
<head>
    <title>个人信息设置</title>
    <script>
        $(document).ready(function() {
            // 提交时验证表单
            var validator = $("#changeInfoForm").validate({
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
                        required: " (用户名必须填写)",
                        maxlength: "（用户名长度不能超过10个字符）"
                    },
                    tel:{
                        required: " (电话必须填写)",
                        maxlength: " (电话长度不能超过 11个数字)",
                        minlength:"(电话长度不能少于11个数字)"
                    }
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
    <script>
        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });
    </script>
    <style>
        .error{
            font-family: 方正喵呜体;
            color: saddlebrown;
        }
    </style>
</head>

<div class="container">
    <div class="row">
        <div class="col s12">
            <div class="page-header">
                <h2 class="setFont">个人信息设置</h2>
            </div>

            <form id="changeInfoForm" method="post" class="col s12 setWR " action="/par/userinfo.html" enctype="multipart/form-data">
                <div class="col s8">
                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="name" type="text"  name="name" value= ${user.name} class="validate" length="10"  data-rule-maxlength="10" required>
                        <label for="name">姓名</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="stuName" type="text"  name="stuName" value=${user.stuName} class="validate" length="10"  data-rule-maxlength="10" required>
                        <label for="stuName">学生姓名</label>
                    </div>

                    <div class="s4"><div class="row"></div></div>

                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="ChooseG" required>
                            <option value="">请选择年级</option>
                            <option value="01" <c:if test='${ChooseG == "01"}'>selected="selected"</c:if>>一年级</option>
                            <option value="02" <c:if test='${ChooseG == "02"}'>selected="selected"</c:if>>二年级</option>
                            <option value="03" <c:if test='${ChooseG == "03"}'>selected="selected"</c:if>>三年级</option>
                            <option value="04" <c:if test='${ChooseG == "04"}'>selected="selected"</c:if>>四年级</option>
                            <option value="05" <c:if test='${ChooseG == "05"}'>selected="selected"</c:if>>五年级</option>
                            <option value="06" <c:if test='${ChooseG == "06"}'>selected="selected"</c:if>>六年级</option>
                        </select>
                    </div>
                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="ChooseC" required>
                            <option value="" disabled selected>请选择班级</option>
                            <option value="01" <c:if test='${ChooseC == "01"}'>selected="selected"</c:if>>一班</option>
                            <option value="02" <c:if test='${ChooseC == "02"}'>selected="selected"</c:if>>二班</option>
                            <option value="03" <c:if test='${ChooseC == "03"}'>selected="selected"</c:if>>三班</option>
                            <option value="04" <c:if test='${ChooseC == "04"}'>selected="selected"</c:if>>四班</option>
                            <option value="05" <c:if test='${ChooseC == "05"}'>selected="selected"</c:if>>五班</option>
                            <option value="06" <c:if test='${ChooseC == "06"}'>selected="selected"</c:if>>六班</option>
                        </select>
                    </div>


                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">phone</i>
                        <input id="tel" type="text"  name="tel" value=${user.tel} class="validate" length="11" required data-rule-maxlength="11" data-rule-minlength="11">
                        <label for="tel">电话</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">email</i>
                        <input id="mail" type="text"  name="email" value=${user.email} class="validate" length="30" data-rule-email="true">
                        <label for="mail">邮箱</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">stars</i>
                        <input id="birth" type="text"  name="birth" value=${user.birth}>
                        <label for="birth">生日</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">assignment_ind</i>
                        <input id="qqnum" type="text"  name="qqnum" value=${user.qqnum} class="validate" length="20">
                        <label for="qqnum">QQ</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">room</i>
                        <input id="address" type="text"  name="address" value=${user.address} class="validate" length="10">
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
                        <button type="reset" class="btn waves-effect waves-light" name="signup" value="Sign up">重置</button>
                    </div>
                    <div class="col s2">
                        <button type="submit" class="btn waves-effect waves-light" name="signup2" value="Sign up 2">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<%@include file="parent_footer.jsp"%>

</body>
</html>