<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/27
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="tea_navi_demo.jsp"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <script type="text/javascript">
        $(document).ready(function() {
            $('select').material_select();
        });
    </script>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col s12">
            <div class="page-header">
                <h2 class="setFont">个人信息设置</h2>
            </div>

            <form id="changeInfoForm" method="post" class="col s12 setWR" action="/tea/userinfo.html" enctype="multipart/form-data">
                <div class="col s8">
                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">account_circle</i>
                        <input id="name" type="text"  name="name" value=${teaInfo.name} class="validate" length="10"  data-rule-maxlength="10" required>
                        <label for="name">姓名</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">work</i>
                        <input id="courseName" type="text"  name="courseName" value=${teaInfo.courseName} class="validate" length="10"  data-rule-maxlength="10" required>
                        <label for="courseName">课程名</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">assignment_ind</i>
                        <input id="position" type="text"  name="position" value=${teaInfo.position} class="validate" length="20">
                        <label for="position">职位</label>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">phone</i>
                        <input id="tel" type="text"  name="tel" value=${teaInfo.tel} class="validate" length="11" required data-rule-maxlength="11" data-rule-minlength="11">
                        <label for="tel">电话</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">email</i>
                        <input id="email" type="text"  name="email" value=${teaInfo.email} class="validate" length="30" data-rule-email="true">
                        <label for="email">邮箱</label>
                    </div>

                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix ">dashboard</i>
                        <select name="g1">
                            <option value="" disabled selected>请选择年级</option>
                            <option value="01" <c:if test='${g1 == "01"}'>selected="selected"</c:if>>一年级</option>
                            <option value="02" <c:if test='${g1 == "02"}'>selected="selected"</c:if>>二年级</option>
                            <option value="03" <c:if test='${g1 == "03"}'>selected="selected"</c:if>>三年级</option>
                            <option value="04" <c:if test='${g1 == "04"}'>selected="selected"</c:if>>四年级</option>
                            <option value="05" <c:if test='${g1 == "05"}'>selected="selected"</c:if>>五年级</option>
                            <option value="06" <c:if test='${g1 == "06"}'>selected="selected"</c:if>>六年级</option>
                        </select>
                    </div>
                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="c1">
                            <option value="" disabled selected>请选择班级</option>
                            <option value="01" <c:if test='${c1 == "01"}'>selected="selected"</c:if>>一班</option>
                            <option value="02" <c:if test='${c1 == "02"}'>selected="selected"</c:if>>二班</option>
                            <option value="03" <c:if test='${c1 == "03"}'>selected="selected"</c:if>>三班</option>
                            <option value="04" <c:if test='${c1 == "04"}'>selected="selected"</c:if>>四班</option>
                            <option value="05" <c:if test='${c1 == "05"}'>selected="selected"</c:if>>五班</option>
                            <option value="06" <c:if test='${c1 == "06"}'>selected="selected"</c:if>>六班</option>
                        </select>
                    </div>

                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="g2">
                            <option value="" disabled selected>请选择年级</option>
                            <option value="01" <c:if test='${g2 == "01"}'>selected="selected"</c:if>>一年级</option>
                            <option value="02" <c:if test='${g2 == "02"}'>selected="selected"</c:if>>二年级</option>
                            <option value="03" <c:if test='${g2 == "03"}'>selected="selected"</c:if>>三年级</option>
                            <option value="04" <c:if test='${g2 == "04"}'>selected="selected"</c:if>>四年级</option>
                            <option value="05" <c:if test='${g2 == "05"}'>selected="selected"</c:if>>五年级</option>
                            <option value="06" <c:if test='${g2 == "06"}'>selected="selected"</c:if>>六年级</option>
                        </select>
                    </div>
                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="c2">
                            <option value="" disabled selected>请选择班级</option>
                            <option value="01" <c:if test='${c2 == "01"}'>selected="selected"</c:if>>一班</option>
                            <option value="02" <c:if test='${c2 == "02"}'>selected="selected"</c:if>>二班</option>
                            <option value="03" <c:if test='${c2 == "03"}'>selected="selected"</c:if>>三班</option>
                            <option value="04" <c:if test='${c2 == "04"}'>selected="selected"</c:if>>四班</option>
                            <option value="05" <c:if test='${c2 == "05"}'>selected="selected"</c:if>>五班</option>
                            <option value="06" <c:if test='${c2 == "06"}'>selected="selected"</c:if>>六班</option>
                        </select>
                    </div>

                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="g3">
                            <option value="" disabled selected>请选择年级</option>
                            <option value="01" <c:if test='${g3 == "01"}'>selected="selected"</c:if>>一年级</option>
                            <option value="02" <c:if test='${g3 == "02"}'>selected="selected"</c:if>>二年级</option>
                            <option value="03" <c:if test='${g3 == "03"}'>selected="selected"</c:if>>三年级</option>
                            <option value="04" <c:if test='${g3 == "04"}'>selected="selected"</c:if>>四年级</option>
                            <option value="05" <c:if test='${g3 == "05"}'>selected="selected"</c:if>>五年级</option>
                            <option value="06" <c:if test='${g3 == "06"}'>selected="selected"</c:if>>六年级</option>
                        </select>
                    </div>
                    <div class="input-field col s8" data-beloworigin="true">
                        <i class="material-icons prefix">dashboard</i>
                        <select name="c3">
                            <option value="" disabled selected>请选择班级</option>
                            <option value="01" <c:if test='${c3 == "01"}'>selected="selected"</c:if>>一班</option>
                            <option value="02" <c:if test='${c3 == "02"}'>selected="selected"</c:if>>二班</option>
                            <option value="03" <c:if test='${c3 == "03"}'>selected="selected"</c:if>>三班</option>
                            <option value="04" <c:if test='${c3 == "04"}'>selected="selected"</c:if>>四班</option>
                            <option value="05" <c:if test='${c3 == "05"}'>selected="selected"</c:if>>五班</option>
                            <option value="06" <c:if test='${c3 == "06"}'>selected="selected"</c:if>>六班</option>
                        </select>
                    </div>

                    <div class="input-field col s8 ">
                        <i class="material-icons prefix">stars</i>
                        <input id="birth" type="text"  name="birth" value=${teaInfo.birth} class="validate" data-rule-dateISO="true">
                        <label for="birth">出生年月</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">description</i>
                        <input id="selfInfo" type="text"  name="selfInfo" value=${teaInfo.selfInfo} class="validate" length="50">
                        <label for="selfInfo">简介</label>
                    </div>

                    <div class="input-field col s8">
                        <i class="material-icons prefix">stars</i>
                        <input id="glory" type="text"  name="glory" value=${teaInfo.glory} class="validate" length="50">
                        <label for="glory">荣誉</label>
                    </div>


                    <div class="col s8"><div class="row"></div></div>
                    <div class="col s8"><div class="row"></div></div>
                </div>

                <div class="col s4">
                    <div class="row"></div>
                    <div class="row"></div>
                    <div>
                        <img class="materialboxed" width="253.25" src=${teaInfo.picture}>
                    </div>
                    <div class="file-field input-field">
                        <div class="btn waves-effect waves-light">
                            <span>选择图片</span>
                            <input type="file"  name="file" id="uploadFile" accept="image/*">
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





<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
