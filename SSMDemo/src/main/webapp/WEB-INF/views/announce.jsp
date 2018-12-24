<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@include file="public_navi.jsp"%>
<head>
    <title>校园公告</title>
    <style type="text/css">
        .gonggaolist{
            list-style: disc !important;
            margin-left: 20px;
            line-height: 20px;
            vertical-align: top;
        }
        .link:hover>span
        {
            color:red;
        }
        .link>span
        {
            color: black;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="card" style="margin-top: 0">
            <div class="card-image waves-effect waves-block waves-light">
                <img class="activator" src="/images/gonggaodemo.jpg">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col s9 offset-s3" >
            <h5>通知公告</h5>
            <hr style="height: 2px;background-color: darkred"/>

            <ul type="disk">
                <c:forEach items="${list}" var="list">
                    <li class="gonggaolist">
                        <a class="link"  href="/showPage.html?id=an-${list.annId}" style="font-family: 微软雅黑;font-size: 16px;" target="_blank"><span>${list.title}</span></a>
                        <span style="float: right" id="val" >
                         ${list.annDate}
                            <a class="btn waves-effect waves-light" href="/deleteAnn.html?id=${list.annId}" <c:if test="${deleteAuth != true}">style="display:none;"</c:if>>删&nbsp;除</a>
                        </span>

                    </li>
                    <hr style="height:1px;border:none;border-top:1px dashed gray">

                </c:forEach>
                <hr style="height: 2px;background-color: darkred"/>
            </ul>

        </div>

        <div class="col s4">

        </div>
        <ul class="pagination" style="text-align: center">
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
            <c:forEach items="${pagelist}" var = "li" >
                <li class="waves-effect"><a href="/announce.html?page=${li}">${li}</a></li>
            </c:forEach>
            <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>
    </div>

</div>

<%@include file="parent_footer.jsp"%>

</body>
</html>