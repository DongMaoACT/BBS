<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../../statics/css/layui.css">
<script src="../../statics/layui.js"></script>

<header class="layui-header">
    <ul class="layui-nav">
        <li class="layui-nav-item layui-this layui-unselect" id="a"><a href="">BBS论坛</a></li>
        <li class="layui-nav-item "><a href="/">主页</a></li>
        <li class="layui-nav-item" id="b"><a href="/board">板块</a></li>
        <li class="layui-nav-item"><a href="/">帮助</a>
            <dl class="layui-nav-child">
                <dd><a>有什么问题请联系管理员或者发帖求问</a></dd>
                <dd><a href="/user/detail/1">管理员信息</a></dd>
                <dd><a href="/user/login">登录</a></dd>
                <dd><a href="/user/register">注册</a></dd>
            </dl>
        </li>
        <%--判断用户是否登录--%>
        <c:if test="${empty user}">
            <li class="layui-nav-item" style="float: right"><a href="/user/register">注册</a></li>
            <li class="layui-nav-item" style="float: right"><a href="/user/login">
                <i class="layui-icon layui-icon-username"></i>登录</a></li>
        </c:if>
        <c:if test="${!empty user}">
            <c:if test="${user.userType==2}">
                <li class="layui-nav-item "><a href="/admin">管理</a></li>
            </c:if>
            <li class="layui-nav-item" style="float: right">
                <a href=""><i class="layui-icon layui-icon-username">&nbsp;</i>${user.userName}</a>
                <dl class="layui-nav-child">
                    <dd><a href="/user/detail/${user.userId}">个人中心</a></dd>
                    <dd><a href="javascript:signout_confirm()">注销</a></dd>
                </dl>
            </li>

        </c:if>
    </ul>
</header>


<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'jquery'], function () {
        var element = layui.element;
        var $ = layui.$;
        $("#b").click(function () {
            $("#a").removeClass("layui-this ");
            $("#b").addClass("layui-this");

        });
    });

    function signout_confirm() {
        layui.use('layer', function () {
            var layer = layui.layer;

            layer.confirm('确定退出?', {icon: 3, title: '提示'}, function (index) {
                window.location.href = "/user/logout";
                layer.close(index);
            });
        });


    }
</script>
