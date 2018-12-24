<%--
  Created by IntelliJ IDEA.
  User: zzyo
  Date: 2016/7/7
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
</head>
<body onload="contact()">

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
    function contact(){
        window.open("http://wpa.qq.com/msgrd?v=3&uin=${qq}&site=qq&menu=yes","_blank", "scrollbars=yes,resizable=1,modal=false,alwaysRaised=yes")
    };
    window.onload = contact();
    history.go(-1);
    location.reload();
</script>
</body>


</html>
