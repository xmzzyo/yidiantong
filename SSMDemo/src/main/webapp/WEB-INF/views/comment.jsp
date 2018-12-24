<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="/css/materialize.min.css" media="screen,projection"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/js/materialize.min.js"></script>
    <meta charset="UTF-8">
    <title>留言</title>
</head>
<body>
<!-- Navbar goes here -->
<nav>
    <div class="nav-wrapper" color="#81d4fa">
        <a href="" class="brand-logo center">${name}の留言区</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="/redirectSpace.html">返回首页</a></li>
        </ul>
    </div>
</nav>

<div class="container">
<!-- 多说评论框 start -->
<div class="ds-thread" data-thread-key=${cid} data-title="Comment" data-url="http://hust-ydt/"></div>
<!-- 多说评论框 end -->
</div>
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
    var duoshuoQuery = {short_name:"hust-ydt"};
    (function() {
        var ds = document.createElement('script');
        ds.type = 'text/javascript';ds.async = true;
        ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
        ds.charset = 'UTF-8';
        (document.getElementsByTagName('head')[0]
        || document.getElementsByTagName('body')[0]).appendChild(ds);
    })();
</script>
<!-- 多说公共JS代码 end -->
</body>
</html>