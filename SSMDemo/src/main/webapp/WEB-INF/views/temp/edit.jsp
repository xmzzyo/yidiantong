
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>编辑公告</title>
    <link rel="stylesheet" type="text/css" href="/static/css/wangEditor.css">
    <script type="text/javascript" src="/static/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="/static/js/jQuery-core/wangEditor.min.js"></script>
    <script src='/js/lib/jquery.base64.js'></script>
    <!--Import Google Icon Font-->
    <%--<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">--%>
    <%--<!--Import materialize.css-->--%>
    <%--<link type="text/css" rel="stylesheet" href="../../static/css/materialize.min.css" media="screen,projection"/>--%>

    <%--<script type="text/javascript" src="../../static/js/jQuery-core/materialize.min.js"></script>--%>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
    <style type="text/css">
        #editor-trigger {
            height: 400px;
            /*max-height: 500px;*/
        }

        .container {
            width: 100%;
            margin: 0 auto;
            position: relative;
        }
        #cleckclean:{

        }
    </style>
</head>
<%@include file="tea_navi_demo.jsp"%>
<body>

<div class="container">
    <h1>发布信息</h1>
    <div class="row">
        <div class="col s12">
            <%--<input type="text" id="title" class="input-field" name="title" value="请输入标题" ><br>--%>
            <div class="row">
                <div class="input-field col s4 offset-s1">
                    <i class="material-icons prefix">grade</i>
                    <input id="userid" type="text" name="userid" class="validate" data-rule-minlength="10"
                           data-rule-maxlength="10" required>
                    <label for="userid">请输入标题</label>
                </div>
                <div class="col s4 offset-s2 " style="width: 300px;padding-top: 14px;">
                    <select>
                        <option value="" disabled selected>请选择发布类型</option>
                        <option value="1" style="">热点新闻</option>
                        <option value="2">重要事务</option>
                        <option value="3">校园活动</option>
                        <option value="4">讨论主题</option>
                        <option value="5">公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;告</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div id="ydt-editor-container" class="container" style="height:400px;max-height: 500px;width: 80%">
                        <textarea id="editor-trigger" style="display:none;">
                             <p></p>
                        </textarea>
                </div>
            </div>

            <div class="row col s2 offset-s9">
                <button class="btn waves-effect waves-light" style="width: 80%;text-align: center;font-weight: 500;font-family: 黑体;font-size: 15px">提&nbsp;&nbsp;交</button>
            </div>

        </div>
    </div>
</div>




    <script type="text/javascript">

        var editor = new wangEditor('editor-trigger');
        // 上传图片
        editor.config.uploadImgUrl = '/upload.html';
        editor.config.uploadParams = {
            // token1: 'abcde',
            // token2: '12345'
        };
        editor.config.uploadHeaders = {
            // 'Accept' : 'text/x-json'
        }
        editor.config.uploadImgFileName = 'myFile';
        editor.create();





        $('#submit').click(function () {
            // 获取编辑器区域完整html代码
            var html = editor.$txt.html();
            $.base64.utf8encode = true;
            html = $.base64().encode(html,"UTF-8");
            html = "title='"+$('#title').val()+"'&"+"data='"+html+"'";
            $.ajax(
                    {
                        type: "POST",
                        url: "/edit.html",
                        data: html,
                        dataType:Text
                    }
            );
        })

    </script>
<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
