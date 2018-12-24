<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/22
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@include file="parent_header.jsp"%>
<head>
    <title>家长主页</title>
<script type="text/javascript">
    $(document).ready(function () {
        $('.slider').slider({height: 510});
    });
    // Pause slider
    $('.slider').slider('pause');
    // Start slider
    $('.slider').slider('start');
    // Next slide
    $('.slider').slider('next');
    // Previous slide
    $('.slider').slider('prev');

    $(document).ready(function(){
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal-trigger').leanModal();
    });
    $('#modal1').openModal();
    $('#modal1').closeModal();
    $('.modal-trigger').leanModal({
                dismissible: true, // Modal can be dismissed by clicking outside of the modal
                opacity: .5,// Opacity of modal background
                in_duration: 300, // Transition in duration
                out_duration: 200, // Transition out duration
                ready: function() { alert('Ready'); }, // Callback for Modal open
                complete: function() { alert('Closed'); } // Callback for Modal close
            }
    );
</script>
<style type="text/css">
    span{
        color: #eeeeee;
        font-weight: 500;
        font-size: 15px;
        font-family: 黑体;
    }
    .chColor :hover{
        color: red;
    }
    hr{
        border: 1px dotted #c2c0c2;
    }
    #setcolor:hover{
        color: darkred;
    }
    .setgrey{
        font-family: 微软雅黑;
        font-weight: 400;
    }
</style>
</head>

<body>



<div class="row">
    <!--div class="col s8 offset-s2"-->
    <div class="slider">
        <ul class="slides" >
            <li>
                <a href="/showPage.html?id=an-3">
                <img src="/images/desktop12.jpg"> <!-- random image -->
                </a>
                <div class="caption center-align">
                    <h3 style="color:black;padding-top:60px;font-size: 50px; font-family: 黑体;font-weight: 600">欢迎访问校园咨询一点通</h3>
                    <%--<h5 class=" text-lighten-3" style="color: black;font-family: 华文细黑;font-weight: 600">我们将带给你不一样的交流体验</h5>--%>
                </div>
            </li>
            <li>
                <a href="/showPage.html?id=ac-4">
                <img src="/images/desktop2.jpg"> <!-- random image -->
                </a>
                <div class="caption left-align">
                    <%--<h3>Left Aligned Caption</h3>--%>
                    <%--<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>--%>
                </div>
            </li>
            <li>
                <a href="/showPage.html?id=hn-5">
                    <img src="/images/desktop3.jpg"> <!-- random image -->
                </a>
                <div class="caption right-align">
                    <%--<h3>Right Aligned Caption</h3>--%>
                    <%--<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>--%>
                </div>
            </li>
            <li>
                <a href="/showPage.html?id=an-6">
                <img src="/images/desktop6.jpg"> <!-- random image -->
                </a>
                <div class="caption center-align">
                    <%--<h3>This is our big Tagline!</h3>--%>
                    <%--<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>--%>
                </div>
            </li>
        </ul>
    </div>
    <!--/div-->
</div>

<div class="container">
    <div class="row" style="border: 1px solid #1a237e ;color: white" >
        <div class="col s1">
            <b style="font-size: 20px;">通知公告</b>
        </div>
        <div class="col s9">
            <%--<a href="!#" style="color: black">认真学习习近平总书记讲话</a>--%>
            <marquee id='marquee1'  scrolldelay="300" direction='up' Behaviour='Scroll' Height = "30" onmouseover=stop() onmouseout=start()>
                <c:forEach items="${annList}" var="alist">
                    <a  href="/showPage.html?id=an-${alist.annId}" style="color: white"><p style="font-size: 20px;font-family: 微软雅黑;">${alist.title}<span style="float: right;font-size: 20px;color: white">${alist.annDate}</span></p></a>
                </c:forEach>
                 </marquee>
        </div>
        <div class="col s1 offset-s1">
            <a href="/announce.html" id="setcolor" style="font-size: 20px;font-weight: 600;font-family: 微软雅黑;font-weight:500">更多>></a>
        </div>
    </div>



    <div class="row" style="border-bottom: solid #f9a825 2px;border-top:dashed #f9a825 2px; ">
        <h4 style="text-align: center;font-family:华文新魏;font-weight: 900;padding-top: 10px;color: white">热点新闻</h4>
        <c:forEach items="${hnList}" var="ls" begin="0" end="0">
        <div class="col s4">
                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=hn-${ls.newsId}">
                        <img src=${picList.get(0)}>
                    </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.newsDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=hn-${ls.newsId}" class="setgrey">Detail</a>
                    </div>
                </div>
        </div>
        </c:forEach>
        <c:forEach items="${hnList}" var="ls" begin="1" end="1">
            <div class="col s4">
                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=hn-${ls.newsId}">
                            <img src=${picList.get(1)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.newsDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=hn-${ls.newsId}" class="setgrey">Detail</a>
                    </div>
                </div>
            </div>
        </c:forEach>
        <c:forEach items="${hnList}" var="ls" begin="2" end="2">
            <div class="col s4">
                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=hn-${ls.newsId}">
                            <img src=${picList.get(2)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.newsDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=hn-${ls.newsId}" class="setgrey">Detail</a>
                    </div>
                </div>
            </div>
        </c:forEach>

        <div class="row" style="text-align: center">
            <a href="/hot_news.html" class="waves-effect waves-light btn" style="background-color: darkred;font-family: 微软雅黑;font-weight: 500">更多>></a>
        </div>
    </div>



    <div class="row" style="border-bottom: solid #f9a825 2px;">

        <h4 style="text-align: center;font-family:华文新魏;font-weight: 900;padding-top: 20px;color: white">校园活动</h4>
        <c:forEach items="${acList}" var="ls" begin="0" end="0">
        <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ac-${ls.actiId}">
                            <img src=${picList.get(3)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.actiDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ac-${ls.actiId}" class="setgrey">Detail</a>
                    </div>
                </div>

        </div>
        </c:forEach>
        <c:forEach items="${acList}" var="ls" begin="1" end="1">
            <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ac-${ls.actiId}">
                            <img src=${picList.get(4)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.actiDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ac-${ls.actiId}" class="setgrey">Detail</a>
                    </div>
                </div>

            </div>
        </c:forEach>
        <c:forEach items="${acList}" var="ls" begin="2" end="2">
            <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ac-${ls.actiId}">
                            <img src=${picList.get(5)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.actiDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ac-${ls.actiId}" class="setgrey">Detail</a>
                    </div>
                </div>

            </div>
        </c:forEach>

        <div class="row" style="text-align: center">
            <a href="/activities.html" class="waves-effect waves-light btn" style="background-color: darkred;font-family: 微软雅黑;font-weight: 500">更多>></a>
        </div>
    </div>

    <div class="row" style="border-bottom: dashed #f9a825 2px;">

        <h4 style="text-align: center;font-family:华文新魏;font-weight: 900;padding-top: 20px;color: white">考试安排</h4>
        <c:forEach items="${examList}" var="ls" begin="0" end="0">
            <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ex-${ls.examId}">
                            <img src=${picList.get(6)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.examDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ex-${ls.examId}" class="setgrey">Detail</a>
                    </div>
                </div>

            </div>
        </c:forEach>
        <c:forEach items="${examList}" var="ls" begin="1" end="1">
            <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ex-${ls.examId}">
                            <img src=${picList.get(7)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.examDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ex-${ls.examId}" class="setgrey">Detail</a>
                    </div>
                </div>

            </div>
        </c:forEach>
        <c:forEach items="${examList}" var="ls" begin="2" end="2">
            <div class="col s4">

                <div class="card" >
                    <div class="card-image">
                        <a href="/showPage.html?id=ex-${ls.examId}">
                            <img src=${picList.get(8)}>
                        </a>
                        <span class="card-title">${ls.title}</span>
                    </div>
                    <div class="card-content">
                        <p>${ls.examDate}</p>
                    </div>
                    <div class="card-action">
                        <a href="/showPage.html?id=ex-${ls.examId}" class="setgrey">Detail</a>
                    </div>
                </div>

            </div>
        </c:forEach>

        <div class="row" style="text-align: center">
            <a href="/exam_plan.html" class="waves-effect waves-light btn" style="background-color: darkred;font-family: 微软雅黑;font-weight: 500">更多>></a>
        </div>
    </div>

</div>




</div>
<%@include file="parent_footer.jsp"%>

</body>
</html>