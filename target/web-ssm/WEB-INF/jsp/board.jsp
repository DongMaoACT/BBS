<%--
  Created by IntelliJ IDEA.
  User: 98223
  Date: 2018/12/23
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<link rel="stylesheet" href="../../statics/css/board.css">
<script src="../../statics/layui.js"></script><html>
<head>
    <title>板块</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="layui-container" style="height: 800px;">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>
            <span class="layui-badge">导航菜单</span></legend>
    </fieldset>
    <div class="layui-anim layui-anim-up">
        <span class="layui-breadcrumb" lay-separator="/">
            <a href="/board/1">生活</a> <a href="/board/2">情感</a>
            <a href="/board/3">大学</a> <a href="/board/4">旅游</a> <a href="/board/5">美食</a>
        </span>
    </div>
    <div style="height: 50px"></div>
    <div class="chunk">
        <table summary="">
            <tbody><tr>
                <th width="550">版块</th>
                <th width="204" class="main-post">帖子</th>
            </tr>

            <c:forEach items="${boardReList}" var="b">
                <tr>
                    <td class="name"><p><a href="/board/${b.boardId}">${b.boardName}</a><br>${b.boardDesc}</p></td>
                    <td class="num"><var>${b.topicNum}</var></td>

                </tr>
            </c:forEach>



            </tbody></table>
    </div>

</div>

<%@include file="footer.jsp"%>
</body>
</html>
