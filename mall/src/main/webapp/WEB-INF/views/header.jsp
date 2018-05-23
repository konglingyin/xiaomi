<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/9
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href="http://www.mi.com/" target="_blank">小米商城</a></li>
                <li>|</li>
                <li><a href="">MIUI</a></li>
                <li>|</li>
                <li><a href="">米聊</a></li>
                <li>|</li>
                <li><a href="">游戏</a></li>
                <li>|</li>
                <li><a href="">多看阅读</a></li>
                <li>|</li>
                <li><a href="">云服务</a></li>
                <li>|</li>
                <li><a href="">金融</a></li>
                <li>|</li>
                <li><a href="">小米商城移动版</a></li>
                <li>|</li>
                <li><a href="">问题反馈</a></li>
                <li>|</li>
                <li><a href="">Select Region</a></li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="right fr">
            <div class="gouwuche fr"><a href="cart/All">购物车</a></div>
            <div class="fr">
                <ul>
                    <c:choose>
                        <c:when test="${!(empty sessionScope.user)}">
                            <li>欢迎${sessionScope.user.username}用户&nbsp;&nbsp;</li>
                            <li>|</li>
                            <li><a href="delSessionUse">注销</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="login">登录</a></li>
                            <li>|</li>
                            <li><a href="register" target="_blank" >注册</a></li>
                        </c:otherwise>
                    </c:choose>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>
<div class="banner_x center">
    <a href="index"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <c:forEach items="${applicationScope.cbs}" var="cb">
                <li><a href="product?ctype=${cb.tid}">${cb.tname}</a></li>
            </c:forEach>
        </ul>
    </div>
    <div class="search fr">
        <form action="productDim" method="post">
            <div class="text fl">
                <input type="text" name="str" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>
</body>
</html>
