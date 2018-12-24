<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="tea_navi_demo.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>家长列表</title>
    <script>
        $(document).ready(function(){
            $('.collapsible').collapsible({
                accordion : false // A setting that changes the collapsible behavior to expandable instead of the default accordion style
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $('select').material_select();
        });
    </script>
    <style type="text/css">
        /*   #a1{margin-left: 79.9%;}
           #a2{margin-left: auto;}*/
        #selectparent{margin-left: 35%}
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h2 class="setFont">家长列表</h2>
        </div>
    </div>
    <div class="row">
        <form name = SelectClass" method="post" action="/tea/parent_list.html" >
            <div class="input-field col s4" data-beloworigin="true">
                <i class="material-icons prefix" >dashboard</i>
                <select name="ChooseG" required class="setWR">
                    <option value="" disabled selected>请选择年级</option>
                    <option value="01">一年级</option>
                    <option value="02">二年级</option>
                    <option value="03">三年级</option>
                    <option value="04">四年级</option>
                    <option value="05">五年级</option>
                    <option value="06">六年级</option>
                </select>
            </div>
            <div class="input-field col s4" data-beloworigin="true">
                <i class="material-icons prefix">dashboard</i>
                <select name="ChooseC" required class="setWR">
                    <option value="" disabled selected>请选择班级</option>
                    <option value="01">一班</option>
                    <option value="02">二班</option>
                    <option value="03">三班</option>
                    <option value="04">四班</option>
                    <option value="05">五班</option>
                    <option value="06">六班</option>
                </select>
            </div>

            <div class="col s2 offset-s2"  style="text-align: right">
                <div class="row"></div>
                <button class="btn waves-effect waves-light col s8 offset-s1" type="submit" id="selectparent" name="selectparent">查&nbsp;&nbsp询
                </button>
            </div>
        </form>
    </div>

    <c:forEach items="${parInfoList}" var="par" >
        <div class="col s12">
            <ul class="collapsible" data-collapsible="expandable">
                <li>
                    <div class="collapsible-header">${par.stuId}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${par.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${par.stuName}</div>
                    <p class="collapsible-body col s12">
                    <table class="setWR">
                        <tr>
                            <th>学生学号</th>
                            <td>${par.stuId}</td>
                        </tr>
                        <tr>
                            <th>家长姓名：</th>
                            <td>${par.name}</td>
                        </tr>
                        <tr>
                            <th>联系电话：</th>
                            <td>${par.tel}</td>
                        </tr>
                        <tr>
                            <th>电子邮箱：</th>
                            <td>${par.email}</td>
                        </tr>
                        <tr>
                            <th>联系QQ：</th>
                            <td>${par.qqnum}</td>
                        </tr>
                        <tr>
                            <th>学生班级：</th>
                            <td>${par.stuClass}</td>
                        </tr>
                        <tr>
                            <th>家庭住址：</th>
                            <td>${par.address}</td>
                        </tr>
                    </table>
                    </p>
                </li>
            </ul>
        </div>

        <div class="col s4 offset-l8" style="text-align: right">
            <a id="a1" class="waves-effect waves-light btn" href="/contact.html?qq=${par.qqnum}"><i class="material-icons right">grade</i>在线沟通</a>
            <a id="a2" class="waves-effect waves-light btn" href="/comment.html?id=${par.stuId}"><i class="material-icons right">mode_edit</i>留言</a>
        </div>

    </c:forEach>

</div>
</div>
<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
