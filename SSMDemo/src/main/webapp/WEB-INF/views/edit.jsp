<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑公告</title>
    <link rel="stylesheet" type="text/css" href="/css/wangEditor.css">
    <script type="text/javascript" src="/js/lib/jquery-1.10.2.min.js"></script>
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

    </style>
</head>
<%@include file="tea_navi_demo.jsp"%>
<body>

<div class="container">
    <h1 class="setFont">发布信息</h1>
    <div class="row">
        <div class="col s12">
            <div class="row">
                <div class="input-field col s4 offset-s1">
                    <i class="material-icons prefix">grade</i>
                    <input id="title" type="text" name="title" class="validate" required>
                    <label for="title" >请输入标题</label>
                </div>
                <div class="col s4 offset-s2 " style="width: 300px;padding-top: 14px;">
                    <select id="type" name="type" class="setWR" >
                        <option value="" disabled selected>请选择发布类型</option>
                        <option value="1" style="">热点新闻</option>
                        <option value="2">考试安排</option>
                        <option value="3">校园活动</option>
                        <option value="4">讨论主题</option>
                        <option value="5">校园公告</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div id="ydt-editor-container" class="container" style="height:400px;max-height: 500px;width: 80%">
                        <textarea id="editor-trigger" style="display:none;" required>
                             <p>请输入内容......</p>
                        </textarea>
                </div>
            </div>

            <div class="row col s2 offset-s9">
                <button onclick="submit()" class="btn waves-effect waves-light" style="width: 80%;text-align: center;font-weight: 500;font-family: 黑体;font-size: 15px">提&nbsp;&nbsp;交</button>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript" src="/js/wangEditor.min.js"></script>
<script src='/js/lib/jquery.base64.js'></script>
<script type="text/javascript">
    // 阻止输出log
    // wangEditor.config.printLog = false;
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

    function submit() {
        // 获取编辑器区域完整html代码
        var html = editor.$txt.html();
        /*html = html.replace(/\s+/g, "");*/
        //alert(html);
        $.base64.utf8encode = true;
        html = $.base64().encode(html,"utf8");
        //alert(html);
        //document.write(html);
        html = "title="+$('#title').val()+"&data="+html+"&type="+$('#type').val();
        $.ajax(
                {
                    type: "POST",
                    url: "/edit.html",
                    data: html,
                    dataType:'Text',
                    success: function(data) {
                        location.href = data;
                    }
                }
        );
    }

</script>
<%@include file="tea_footer_demo.jsp"%>
</body>
</html>
