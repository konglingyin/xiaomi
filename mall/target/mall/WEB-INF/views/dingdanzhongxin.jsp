<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城-个人中心</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css">
</head>
<body>
<!-- start header -->
<%@include file="header.jsp"%>

<!--end header -->
<!-- start banner_x -->
<!-- end banner_x -->
<!-- self_info -->
<div class="grzxbj">
    <div class="selfinfo center">
        <div class="lfnav fl">
            <div class="ddzx">订单中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="" style="color:#ff6700;font-weight:bold;">我的订单</a></li>
                    <li><a href="">意外保</a></li>
                    <li><a href="">团购订单</a></li>
                    <li><a href="">评价晒单</a></li>
                </ul>
            </div>
            <div class="ddzx">个人中心</div>
            <div class="subddzx">
                <ul>
                    <li><a href="./self_info.html">我的个人中心</a></li>
                    <li><a href="">消息通知</a></li>
                    <li><a href="">优惠券</a></li>
                    <li><a href="">收货地址</a></li>
                </ul>
            </div>
        </div>
        <div class="rtcont fr">
            <div class="ddzxbt">交易订单</div>
            <c:forEach items="${requestScope.orderData}" var="od">
                <div class="ddxq" style="height: auto">
                    <div class="ddspt fl"><p>订单号:${od.id}</p></div>
                    <div class="ddbh fl" style="padding: 0px;margin: 0px;">
                        <ul style="list-style: none;margin: 0px;width:100%;padding: 0px;height:auto">
                            <c:forEach items="${od.commondity}" var="co">
                                <li style="height: 20px;margin:0;">
                                    <span><a href="#" style="height:auto"><span style="font-size: 10px">${co.cname}&nbsp;${co.vname}&nbsp;${co.coname}&nbsp;数量:${co.num}总价:${co.moneys}</span></a></span>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="ztxx fr">
                        <ul>
                            <li>已发货</li>
                            <li>￥${od.prices}</li>
                            <li style="width: auto">${od.times}</li>

                            <div class="clear"></div>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </c:forEach>
            <%--<div class="ddxq">
                <div class="ddspt fl"><img src="${path}/static/image/liebiao_hongmin4_dd.jpg" alt=""></div>
                <div class="ddbh fl">订单号:170526435444865</div>
                <div class="ztxx fr">
                    <ul>
                        <li>已发货</li>
                        <li>￥1999.00</li>
                        <li>2017/05/26 14:02</li>
                        <li><a href="">订单详情></a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>--%>
        </div>
        <div class="clear"></div>
    </div>
</div>
<!-- self_info -->

<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>
</body>
</html>
