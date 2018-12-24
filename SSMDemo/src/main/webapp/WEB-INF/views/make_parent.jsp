<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/27
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="tea_navi_demo.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>批量产生家长账号</title>
    <script>
        $(document).ready(function() {
            $('select').material_select();
        });
    </script>
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
        <div id="page" class="clearfix">
            <div class="row">
                <div class="col s12">
                    <div class="page-header">
                        <h2 class="setFont">批量产生家长账号</h2>
                    </div>

                    <form id="makeparent" method="post" class="col s12 " action="/tea/build_account.html">

                        <div class="input-field col s3" data-beloworigin="true">
                            <i class="material-icons prefix">dashboard</i>
                            <select name="SelectIn" class="setWR">
                                <option value="" disabled selected>请选择入学年份</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                            </select>
                        </div>
                        <div class="input-field col s3" data-beloworigin="true">
                            <i class="material-icons prefix">dashboard</i>
                            <select name="SelectGrade" class="setWR">
                                <option value="" disabled selected>请选择班级</option>
                                <option value="01">一班</option>
                                <option value="02">二班</option>
                                <option value="03">三班</option>
                                <option value="04">四班</option>
                                <option value="05">五班</option>
                                <option value="06">六班</option>
                            </select>
                        </div>
                        <div class="col s3">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">account_circle</i>
                                <input id="usernum" type="text"  name="usernum" class="validate" length="10"  data-rule-maxlength="10" required>
                                <label for="usernum">请输入账号数量</label>
                            </div>
                        </div>

                        <div class="col s3 " >
                            <div class="row"></div>
                            <button class="btn waves-effect waves-light col s10 offset-s1" type="submit" name="" onclick="">添加家长账号
                            </button>
                        </div>
                    </form>
                </div>

                <table class="bordered" style="background-color: white" >
                    <tr>
                        <th>家长账号</th>
                        <th>密码</th>
                    </tr>

                    <c:forEach items="${authList}" var = "par" >
                        <tr>
                            <td>${par.id}</td>
                            <td>111111</td>
                        </tr>
                    </c:forEach>
                </table>

                <%--<div class="col s12">--%>
                    <%--<c:forEach items="${authList}" var="auth">--%>
                        <%--${auth.id}<br>--%>
                    <%--</c:forEach>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div>

<%@include file="tea_footer_demo.jsp"%>


</body>
</html>
