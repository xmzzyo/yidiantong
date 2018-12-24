<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="parent_header.jsp"%>
<!DOCTYPE html>
<html>
<head>

    <title>教师列表</title>

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
        /*#a1{margin-left: 79.9%;}
        #a2{margin-left: auto;}*/
        #selectparent{margin-left: 35%}
    </style>
    <style type="text/css">
        html,body {
            margin: 0;
            padding:0;
            height: 100%;
        }
        #container {
            min-height:100%;
            height: auto !important;
            height: 100%; /*IE6不识别min-height*/
            position: relative;
        }

        #page {
            width: 100%;
            margin: 0 auto;
            padding-bottom: 60px;/*等于footer的高度*/
        }

        /*=======主体内容部分=======*/


    </style>
</head>
<body>


<div class="row">
    <div id="container">

<div class="container">
    <div class="row" id="page">
        <div class="page-header">
            <h2 class="setFont">教师列表</h2>
        </div>
    </div>
    <div class="row">
        <form method="post" action="/tea/teacher_list.html">
        <div class="input-field col s4" data-beloworigin="true">
            <i class="material-icons prefix">dashboard</i>
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

        <div class="col s2 offset-s2">
            <div class="row"></div>
            <button class="btn waves-effect waves-light col s8 offset-s1" type="submit" id="selectparent" name="selectparent">查&nbsp;&nbsp;询
            </button>
        </div>
        </form>
    </div>


    <c:forEach items="${teaInfoList}" var="tea" >
        <div class="col s12">
            <ul class="collapsible" data-collapsible="expandable">
                <li>
                    <div class="collapsible-header">${tea.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${tea.position}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${tea.courseName}</div>
                    <p class="collapsible-body col s12">
                    <table class="setWR">
                        <tr>
                            <th style="width: 20%">教工号</th>
                            <td style="width: 80%">${tea.teaId}</td>
                        </tr>
                        <tr>
                            <th>课程名：</th>
                            <td>${tea.courseName}</td>
                        </tr>
                        <tr>
                            <th>教师姓名：</th>
                            <td>${tea.name}</td>
                        </tr>
                        <tr>
                            <th>教师职位：</th>
                            <td>${tea.position}</td>
                        </tr>
                        <tr>
                            <th>联系电话：</th>
                            <td>${tea.tel}</td>
                        </tr>
                        <tr>
                            <th>电子邮箱：</th>
                            <td>${tea.email}</td>
                        </tr>

                        <tr>
                            <th>出生年月：</th>
                            <td>${tea.birth}</td>
                        </tr>
                        <tr>
                            <th>所带班级：</th>
                            <td>${tea.class1}&nbsp;&nbsp;&nbsp;${tea.class2}&nbsp;&nbsp;&nbsp;${tea.class3}</td>
                        </tr>
                        <tr>
                            <th>个人简介：</th>
                            <td>${tea.selfInfo}</td>
                        </tr>
                        <tr>
                            <th>个人荣誉：</th>
                            <td>${tea.glory}</td>
                        </tr>
                    </table>
                    </p>
                </li>
            </ul>
        </div>

        <div class="col s4 offset-l8" style="text-align: right">
            <a id="a1" class="waves-effect waves-light btn" href="/contact.html?qq=${tea.qq}"><i class="material-icons right">grade</i>在线沟通</a>
            <a id="a2" class="waves-effect waves-light btn" href="/comment.html?id=${tea.teaId}"><i class="material-icons right">mode_edit</i>留言</a>  </div>
    </c:forEach>
</div>
</div>
</div>
<%@include file="parent_footer.jsp"%>


</body>
</html>
