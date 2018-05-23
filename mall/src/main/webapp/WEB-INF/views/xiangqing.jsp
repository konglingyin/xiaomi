<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css"/>
    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
           $(".avm").click(function () {
                var mon=$(this).children(".svm").val();
                $("#vm").text(mon);

            });
           $(".acm").click(function () {
               var mon=$(this).children(".scm").val();
               $("#ccm").text(mon);

           })

        });
        function verclik(b,n) {
            $("#verid").val(b);
            $("#sver").text(n);
            var a=parseInt($("#vm").text());
            var c=parseInt($("#ccm").val());
            var mon=a+c;
            $("#smoney").text(mon);
            $("#sum").text(mon);
            if($("#scol").text().length>0){
                var bb=$("#colid").val();
                var nn=$("#scol").text();
                coclick(bb,nn,'');
            }
        }
        function coclick(b,n,i) {
            if (i!=''){
                $("#imgjpg").attr('src','${path}/static/image/'+i);
            }
            $("#colid").val(b);
            $("#scol").text(n);
            var a=parseInt($("#vm").val());
            var c=parseInt($("#ccm").text());
            var mon=a+c;
            $("#smoney").text(mon);
            $("#sum").text(mon);
        }
        function ajaxcart() {
            var mid=$("input[name='mid']").val();
            var coid=$("#colid").val();
            var veid=$("#verid").val();
            console.log(mid+"  "+coid+"  "+veid);
            if(mid==null || mid==''){
                alert("请先登录账户");
                location.href="login";
            }else if(coid==null||coid==''){
                alert("请先选择颜色");
            }else if(veid==null||veid==''){
                alert("请先选择商品版本");
            }else {
                $.ajax({
                    url:"cart",
                    type:"POST",
                    data:$("#ajaxform").serialize(),
                    async:false,
                    success:function (result) {
                        if(result>0){
                            location.href="cart/All";
                        }else {
                            alert("请重新加入");
                        }
                    },
                    error:function (error) {
                        alert("请重新加入");
                    }
                })
            }
        }
    </script>
    <style type="text/css">
        .banben{
            float: left;
        }
    </style>
</head>
<body>
<%@include file="header.jsp"%>
<!-- start header -->
<%--<header>
    <div class="top center">
        <div class="left fl">
            <ul>
                <li><a href=index" target="_blank">小米商城</a></li>
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
            <div class="gouwuche fr"><a href="">购物车</a></div>
            <div class="fr">
                <ul>
                    <li><a href="./login.html" target="_blank">登录</a></li>
                    <li>|</li>
                    <li><a href="./register.html" target="_blank" >注册</a></li>
                    <li>|</li>
                    <li><a href="">消息通知</a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</header>--%>
<!--end header -->
<!-- start banner_x -->
<!-- end banner_x -->
<!-- xiangqing -->
<form id="ajaxform">
    <div class="xiangqing">
        <div class="neirong w">
            <div class="xiaomi6 fl">${requestScope.product.cname}</div>
            <nav class="fr">
                <li><a href="">概述</a></li>
                <li>|</li>
                <li><a href="">变焦双摄</a></li>
                <li>|</li>
                <li><a href="">设计</a></li>
                <li>|</li>
                <li><a href="">参数</a></li>
                <li>|</li>
                <li><a href="">F码通道</a></li>
                <li>|</li>
                <li><a href="">用户评价</a></li>
                <div class="clear"></div>
            </nav>
            <div class="clear"></div>
        </div>
    </div>
    <div class="jieshao mt20 w">
        <div class="left fl"><img id="imgjpg" src="${path}/static/image/liebiao_xiaomi6.jpg"></div>
        <div class="right fr">
            <div class="h3 ml20 mt20">${requestScope.product.cname}</div>
            <div class="jianjie mr40 ml20 mt10">${requestScope.product.describes}</div>
            <div class="jiage ml20 mt10">${requestScope.product.price}.00元</div>
            <div class="ft20 ml20 mt20">选择版本</div>
            <div class="xzbb ml20 mt10">
                <c:forEach items="${requestScope.versions}" var="ve">
                    <div class="banben fl">
                        <a  class="avm" href="javascript:verclik('${ve.vid}','${ve.vname}')">
                            <input class="svm" type="hidden" value="${ve.vprice}"/>
                            <span>${ve.vname}</span>
                            <span>${ve.vprice}元</span>
                        </a>
                    </div>
                </c:forEach>
                <%--<div class="banben fr">--%>
                    <%--<a>--%>
                        <%--<span>全网通版 6GB+128GB</span>--%>
                        <%--<span>2899元</span>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <div class="clear"></div>
            </div>
            <div class="ft20 ml20 mt20">选择颜色</div>
            <div class="xzbb ml20 mt10">
                <c:forEach items="${requestScope.colors}" var="co">
                    <div class="banben">
                        <a class="acm" href="javascript:coclick('${co.csid}','${co.coname}','${co.img}')">
                            <input class="scm" type="hidden" value="${co.money}"/>
                            <span class="yuandian"></span>
                            <span class="yanse">${co.coname}</span>
                        </a>
                    </div>
                </c:forEach>
            </div>
            <div class="xqxq mt20 ml20">
                <div class="top1 mt10">
                    <div class="left1 fl">${requestScope.product.cname}&nbsp;&nbsp;<span id="sver"></span>&nbsp;&nbsp;<span id="scol"></span> </div>
                    <div class="right1 fr"><span id="smoney">${requestScope.product.price}</span>.00元</div>
                    <div class="clear"></div>
                </div>
                <div class="bot mt20 ft20 ftbc">总计：<span id="sum">${requestScope.product.price}</span>元</div>
            </div>
            <div class="xiadan ml20 mt20">
                <input type="hidden" id="ccm" value="0"/>
                <input type="hidden" id="vm" value="${requestScope.product.price}"/>
                <input type="hidden" name="prid" value="${requestScope.product.cid}"/>
                <input type="hidden" id="verid" name="veid" value=""/>
                <input type="hidden" id="colid" name="coid" value=""/>
                <input type="hidden" name="mid" value="${sessionScope.user.sid}">
                <input class="jrgwc"  type="button" name="jrgwc" value="立即选购" />
                <input class="jrgwc" type="button" onclick="ajaxcart()" name="jrgwc" value="加入购物车" />
            </div>
        </div>
        <div class="clear"></div>
    </div>
</form>
<!-- footer -->
<footer class="mt20 center">

    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>

</footer>

</body>
</html>