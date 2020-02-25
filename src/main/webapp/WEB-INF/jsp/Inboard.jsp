<%--
  Created by IntelliJ IDEA.
  User: 98223
  Date: 2018/12/23
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<link rel="stylesheet" href="../../statics/css/board.css">
<script src="../../statics/layui.js"></script>
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 包括所有已编译的插件 -->
<script src="../../statics/js/bootstrap.min.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</body>

<html>
<head>
    <title></title>
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
    <table class="table table-hover" id="tab">
        <caption>帖子列表</caption>
        <thead>
        <tr>
            <th width="60%">主题</th>
            <th width="10%">作者</th>
            <th width="10%">回复</th>
            <th width="20%">最后发表</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="list">
            <tr>
            <td><a href="/article/${list.topicId}"style="color: #2b52a7">${list.topicTitle}</a>&nbsp;&nbsp;
                <c:if test="${list.digest==1}">
                    <span class="layui-badge">精</span>
                </c:if>
            </td>
            <td>${list.userName}
                <br/>
                <div style="font-size: 10px;color: gray">-<fmt:formatDate value="${list.createTime}" type="date"/></div>
            </td>
            <td>${list.topicReplies}</td>
            <td><fmt:formatDate value="${list.lastPost}" type="both" dateStyle="medium" timeStyle="medium"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="float: right;height: 40px">
        <p>第${pageInfo.pageNum}页,共${pageInfo.pages}页</p>
        <c:if test="${pageInfo.hasPreviousPage}">
            <a href="/board/${boardId}?page=${pageInfo.prePage}">上一页<i class="layui-icon layui-icon-prev" style="font-size: 15px; color: #39ac47;"></i></a>
        </c:if>
        &nbsp;
        <c:if test="${pageInfo.hasNextPage}">
            <a href="/board/${boardId}?page=${pageInfo.nextPage}">下一页<i class="layui-icon layui-icon-next" style="font-size: 15px; color: #39ac47;"></i></a>
        </c:if>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
