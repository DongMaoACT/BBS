<%--
  Created by IntelliJ IDEA.
  User: 98223
  Date: 2018/12/24
  Time: 23:09
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
    <title>管理员</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="layui-container" style="height: 800px;">

    <div style="height: 50px"></div>
    <table class="table table-hover" id="tab">
        <caption>帖子列表</caption>
        <thead>
        <tr>
            <th width="40%">主题</th>
            <th width="10%">作者</th>
            <th width="10%">浏览数</th>
            <th width="20%">最后发表日期</th>
            <th width="20%">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${topicReList}" var="list">
            <tr>
                <td><a href="/article/${list.topicId}"style="color: #2b52a7">${list.topicTitle}</a>&nbsp;&nbsp;
                    <c:if test="${list.digest==1}">
                        <span class="layui-badge">精</span>
                    </c:if>
                    <c:if test="${list.top==1}">
                        <span class="layui-badge">置顶</span>
                    </c:if>
                </td>
                <td>${list.userName}
                    <br/>
                    <div style="font-size: 10px;color: gray">-<fmt:formatDate value="${list.createTime}" type="date"/></div>
                </td>
                <td>${list.topicViews}</td>
                <td><fmt:formatDate value="${list.lastPost}" type="both" dateStyle="medium" timeStyle="medium"/></td>
                <td>
                    <form action="/setTop" method="post" style="width:100px;">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="topicId" value="${list.topicId}">
                        <input type="submit" class="layui-btn-xs layui-btn" value="置&nbsp;&nbsp;&nbsp;&nbsp;顶">
                    </form>
                    <c:if test="${list.digest==0}">
                    <form action="/updateTopic" method="post" style="width:100px;">
                        <input type="hidden" name="_method" value="POST">
                        <input type="hidden" name="topicId" value="${list.topicId}">
                        <input type="submit" class="layui-btn-xs layui-btn" value="加&nbsp;&nbsp;&nbsp;&nbsp;精">
                    </form>
                    </c:if>
                    <c:if test="${list.digest==1}">
                        <form action="/reupdateTopic" method="post" style="width:100px;">
                            <input type="hidden" name="_method" value="POST">
                            <input type="hidden" name="topicId" value="${list.topicId}">
                            <input type="submit" class="layui-btn-xs layui-btn" value="取消加精">
                        </form>
                    </c:if>
                    <form action="/deleteTopic" method="post" style="width:100px;">
                        <input type="hidden" name="_method" value="DELETE">
                        <input type="hidden" name="topicId" value="${list.topicId}">
                        <input type="submit" class="layui-btn-xs layui-btn" value="删&nbsp;&nbsp;&nbsp;&nbsp;除">
                    </form>
                </td>
            </tr>
        </c:forEach>
        <div style="float: right;height: 40px">
            <p>第${pageInfo.pageNum}页,共${pageInfo.pages}页</p>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="/admin?page=${pageInfo.prePage}">上一页<i class="layui-icon layui-icon-prev" style="font-size: 15px; color: #39ac47;"></i></a>
            </c:if>
            &nbsp;
            <c:if test="${pageInfo.hasNextPage}">
                <a href="/admin?page=${pageInfo.nextPage}">下一页<i class="layui-icon layui-icon-next" style="font-size: 15px; color: #39ac47;"></i></a>
            </c:if>
        </div>
        </tbody>
    </table>

</div>
<%@include file="footer.jsp"%>
</body>
</html>
