<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<!-- 引入 Bootstrap -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- 包括所有已编译的插件 -->
<script src="../../statics/js/bootstrap.min.js"></script>
<script src="../../statics/layui.js"></script>
<html>
<head>
    <title>欢迎来到Hydra的BBS论坛！</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="layui-container">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>
            <span class="layui-badge">导航菜单</span></legend>
    </fieldset>
    <div class="layui-anim layui-anim-up">
        <span class="layui-breadcrumb" lay-separator="/">
            <a href="/">全部</a><a href="/board/1">生活</a> <a href="/board/2">情感</a>
            <a href="/board/3">大学</a> <a href="/board/4">旅游</a> <a href="/board/5">美食</a>
        </span>
    </div>
    <div style="margin-top: 15px;width: 850px;">
        <table class="table table-striped" style="background-color: white" >
            <tbody>
            <c:forEach items="${hotList}" var="t">
                <c:if test="${t.top==1}">
                    <tr>
                        <td style="font-size: 15px">
                            <span class="layui-badge">置顶</span> &nbsp;&nbsp;
                            <a href="/article/${t.topicId}">${t.topicTitle}</a>
                            &nbsp;&nbsp;
                            <i style="font-size: 12px;color: gray">-<fmt:formatDate value="${t.createTime}" type="date"/></i>
                            <div style="float: right">${t.topicViews}</div>
                        </td>
                    </tr>
                </c:if>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div style="height: 20px"></div>
    <div class="layui-row layui-col-space10" style="height: 1200px">
        <div class="layui-col-md9">
            <div class="grid-demo grid-demo-bg1">
                <fieldset class="layui-elem-field" style="height: 540px;">
                    <legend>热帖</legend>
                    <table class="table table-striped" style="background-color: white" >
                        <tbody>
                        <c:forEach items="${hotList}" var="t">
                            <tr>
                                <td style="font-size: 15px">
                                    <c:if test="${t.digest==1}">
                                        <span class="layui-badge">精</span> &nbsp;&nbsp;
                                    </c:if>
                                    <a href="/article/${t.topicId}">${t.topicTitle}</a>
                                    &nbsp;&nbsp;
                                    <i style="font-size: 12px;color: gray">-<fmt:formatDate value="${t.createTime}" type="date"/></i>
                                    <div style="float: right">${t.topicViews}</div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </fieldset>
            </div>
            <div class="grid-demo grid-demo-bg1">
                <fieldset class="layui-elem-field" style="height: 540px;">
                    <legend>新贴</legend>
                    <table class="table table-striped" style="background-color: white" >
                        <tbody>
                        <c:forEach items="${newList}" var="t">
                            <tr>
                                <td style="font-size: 15px">
                                    <c:if test="${t.digest==1}">
                                        <span class="layui-badge">精</span> &nbsp;&nbsp;
                                    </c:if>
                                    <a href="/article/${t.topicId}">${t.topicTitle}</a>
                                    &nbsp;&nbsp;
                                    <i style="font-size: 12px;color: gray">-<fmt:formatDate value="${t.createTime}" type="date"/></i>
                                    <div style="float: right">${t.topicViews}</div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </fieldset>
            </div>
        </div>
        <div class="layui-col-md3">
            <div class="grid-demo">
                <fieldset class="layui-elem-field" >
                    <legend>论坛公告</legend>
                    <div class="layui-field-box"style="height: 400px">
                        本论坛秉正公平公正公开的原则，所有用户都可以畅所欲言。但同时管理员会高强度监督用户发言。
                        请各用户注意自己的言行举止。希望大家能够给予好评。


                    </div>
                </fieldset>
            </div>
            <br/>
            <br/>
            <div class="grid-demo">
                <fieldset class="layui-elem-field" >
                    <legend>论坛成员： ${userNum} </legend>
                    <div class="layui-field-box"style="height: 300px">
                        <c:forEach items="${recentUser}" var="r">
                            <div style="width: 60px ;height: 70px;float: left ;margin-right: 15px ;margin-bottom: 15px">
                                <img src="${r.imagePath}" onerror=this.src="/userPic/pic.jpg" style="width: 65px; height: 65px" >
                                <a align="center" href="/user/detail/${r.userId}"><p align="center">${r.userName}</p></a>
                            </div>
                        </c:forEach>
                    </div>
                </fieldset>
            </div>
            <br/>
            <button id="new" class="layui-btn  layui-btn-fluid">
                <i class="layui-icon">&#xe608;</i> 发帖
            </button>
            <br/>
            <br/>


        </div>
    </div>

</div>
<%@include file="footer.jsp"%>
</body>
<script>
    layui.use(['jquery', 'layer'], function(){
        var $ = layui.$ //重点处
            ,layer = layui.layer;
        $(document).ready(function(){
            $("#new").click(function () {
                if (${empty user}){
                    layer.msg("请先登录！");
                }else {
                    window.location.href="/addTopic";
                }
            });
        })
    })
</script>
</html>
