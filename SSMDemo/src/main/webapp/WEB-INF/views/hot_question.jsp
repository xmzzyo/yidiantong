<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/24
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="public_navi.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>热点问题</title>
    <style>
        p{
            font-family: 方正喵呜体;
            color: #6d4c41;
        }
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

        #footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;/*脚部的高度*/
            clear:both;
        }
        /*=======主体内容部分=======*/


    </style>
</head>

<body>
<div id="container">

    <div class="container" >
        <div id="page" class="clearfix">
            <div class="row">
                <div class="col s4">
                    <c:forEach items="${list}" var="ls" begin="0" step="3">
                        <div class="card" >
                            <div class="card-image">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">
                                <img src=${picList.get(0)}>
                                </a>
                                <span class="card-title">${ls.title}</span>
                            </div>
                            <div class="card-content">
                                <p>${ls.hotQuestionDate}</p>
                            </div>
                            <div class="card-action">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">更多</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="col s4">
                    <c:forEach items="${list}" var="ls" begin="1" step="3">
                        <div class="card">
                            <div class="card-image">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">
                                    <img src=${picList.get(1)}>
                                </a>
                                <span class="card-title">${ls.title}</span>
                            </div>
                            <div class="card-content">
                                <p>${ls.hotQuestionDate}</p>
                            </div>
                            <div class="card-action">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">更多</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="col s4">
                    <c:forEach items="${list}" var="ls" begin="2" step="3">
                        <div class="card">
                            <div class="card-image">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">
                                    <img src=${picList.get(2)}>
                                </a>
                                <span class="card-title">${ls.title}</span>
                            </div>
                            <div class="card-content">
                                <p>${ls.hotQuestionDate}</p>
                            </div>
                            <div class="card-action">
                                <a href="/showPage.html?id=hq-${ls.hotQuestionId}">更多</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
            <ul class="pagination" style="text-align: center">
                <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
                <c:forEach items="${pagelist}" var = "li" >
                    <li class="waves-effect"><a href="/hot_question.html?page=${li}">${li}</a></li>
                </c:forEach>
                <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
            </ul>
        </div>
    </div>

    <div id="footer">
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
    </div>
</div>
</body>
</html>