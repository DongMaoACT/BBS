<%--
  Created by IntelliJ IDEA.
  User: 98223
  Date: 2018/12/23
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        li {list-style-type:none;}
        html, body {
            height: 100%;
            font-size: 14px;
            color: #525252;
            font-family: NotoSansHans-Regular,AvenirNext-Regular,arial,Hiragino Sans GB,"Microsoft Yahei","Hiragino Sans GB","WenQuanYi Micro Hei",sans-serif;
            background: #f0f2f5;
        }
        .footer {
            background-color: #fff;
            margin-top: 22px;
            margin-bottom: 22px;
            width: 100%;
            padding-top: 22px;
            color: #8A8A8A;
            display: block;
            height: 200px;
            border: 1px ;
            clear:both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 40%;
            float: left;
        }
        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }
a{
    color: #8A8A8A;
    cursor: pointer;
}
    </style>
</head>
<body>
<footer class="footer">
    <div class="container">
        BBS<br/>
        框架：spring+springMVC+Mybatis+JQuery+bootstrap+layui
        <br/><br/>
    </div>
    <div class="info">
        <p style="text-align: left;font-size: 16px;">管理员：</p>
        <ul >
            <li><a href="/user/detail/1">admin</a> </li>
        </ul>
    </div>
    <div class="info">
        <p style="text-align: left;font-size: 16px;">友情链接</p>
        <ul >
            <li><a href="/">Github</a></li>
            <li><a href="/">百度贴吧</a></li>
        </ul>
    </div>

</footer>
</body>
</html>