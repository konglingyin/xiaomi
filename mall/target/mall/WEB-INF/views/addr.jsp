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
    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {

        });
        function del(id) {
            var id=id;
           $.ajax({
               url:"${path}/delAddr",
               type:"POST",
               data:{id:id},
               success:function (result) {
                  if(result>0){
                    window.location.reload();
                  }else {
                      alert("删除失败");
                  }
               }
           })
        }
        function mr(id) {
            var id=id;
           $.ajax({
               url:"${path}/setAddrMr",
               type:"POST",
               data:{id:id},
               success:function (result) {
                    window.location.reload();
               }
           })
        }
    </script>
    <style type="text/css">
        a{
            color: #0000FF;
        }
    </style>
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
                    <li><a href="" style="color:#ff6700;font-weight:bold;">我的地址</a></li>
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
            <div class="ddzxbt">我的地址</div>
            <c:forEach items="${requestScope.addr}" var="re" varStatus="ai">
                <div>
                    <span>${ai.count}:&nbsp;&nbsp;</span>
                    <span style="color: #0E2D5F">
                        <c:if test="${re.type eq 1}">默认地址</c:if>
                    </span>
                    <span>收件人姓名:${re.name}&nbsp;&nbsp;电话:${re.tel}</span><br>
                    <span>收货地址:${re.addr}</span>
                    <c:if test="${re.type ne 1}">
                        <a href="javascript:mr(${re.aid})">设置默认地址</a>
                    </c:if>
                    <a href="javascript:del(${re.aid})">删除地址</a>
                </div>
            </c:forEach>
            <a href="${path}/addAddr">添加地址</a>
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
