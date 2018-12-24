<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/4
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="public_navi.jsp"%>
<html>
<head>
    <title>${title}</title>
</head>
<body>

<div class="row">
    <div class="col s10 offset-s1">
        <div class="row">
            <div class="col s8">
                <div class="card" <%--style="height: 1000px"--%>>
                    <div class="card-title grey-text">
                        <h4 style="text-align: center;padding-top: 20px">${title}</h4>
                        <hr style="height:1px;width: 90%;text-align: center;background-color: red"/>
                    </div>
                    <div class="row">
                        <div class="col s10 offset-s1">
                            <p style="text-align: center">发布日期：${date}</p><br>
                            <p>${html}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s4">
                <div class="card" style="height:400px;">
                    <div class="card-content">
                        <div class="row">
                            <span class="card-title  grey-text text-darken-4">发布教师</span>
                        </div>
                        <div class="row">
                            <img style="width: 200px;" src=${author.picture}><br>
                            <p>教师:${author.name}</p><br>
                            <p>职位:${author.position}</p><br>
                            <p>Email:${author.email}</p><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- 多说评论框 start -->
            <div class="ds-thread" data-thread-key=${cid} data-title="Comment" data-url="http://hust-ydt/"></div>
            <!-- 多说评论框 end -->
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
        </div>
    </div>
</div>

<%@include file="parent_footer.jsp"%>
</body>
</html>