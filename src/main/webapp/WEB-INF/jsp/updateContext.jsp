<%--
  Created by IntelliJ IDEA.
  User: 98223
  Date: 2018/12/25
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<script src="../../statics/layui.js"></script>
<html>
<head>
    <title>改帖</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="layui-container" style="height: 800px;">
    <div style="height: 50px"></div>
    <form class="layui-form"action="/updateContext" style="width: 800px;" method="post">
        <input type="hidden" name="topicId" value="${topic.topicId}">
        <input type="hidden" name="userId" value="${userId}">
        <div class="layui-form-item">
            <label class="layui-form-label">标题:</label>
            <div class="layui-input-block">
                <input type="text" id="title" name="title" value="${topic.topicTitle}" autocomplete="off" class="layui-input">
            </div>
        </div>
        <textarea id="demo" name="context" style="display: none;">
            ${post.postText}
        </textarea>
        <div style="width: 120px;float: right">
            <input type="submit" id="put" class="layui-btn  layui-btn-fluid">
        </div>

    </form>
</div>
<%@include file="footer.jsp"%>
<script>
    var index;
    layui.use('layedit', function(){
        var layedit = layui.layedit;
        index=layedit.build('demo',{height: 180}); //建立编辑器
    });
    var text;
    var select;
    layui.use('layedit', function(){
        var layedit = layui.layedit;
        text=layedit.getContent(index);
    });
    layui.use('form', function(){
        var form = layui.form;
        form.on('select(sel)', function(data){
            select = data.value;
        });
    });
</script>
</body>
</html>
