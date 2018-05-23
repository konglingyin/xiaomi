<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>订单结算-小米商城</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css">
    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${path}/static/jquery-easyui-1.5.3/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/jquery-easyui-1.5.3/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${path}/static/jquery-easyui-1.5.3/demo/demo.css">
    <script type="text/javascript" src="${path}/static/jquery-easyui-1.5.3/jquery.min.js"></script>
    <script type="text/javascript" src="${path}/static/jquery-easyui-1.5.3/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${path}/static/jquery-easyui-1.5.3/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        $(function () {
    //            $("#sewindow").closed;
            $("#sewindow").dialog({
                top:200
            });

        });
        function sewindow() {
            $("#sewindow").window('open');
        }
        function cl() {
            $("#sewindow").window('close');
        }
        function diz(id) {
            var id=id;
            $.ajax({
                url:"${path}/addrOne",
                type:"POST",
                data:{id:id},
                success :function (result) {
                    console.log("++++"+result.name);
                    console.log("++++"+result.addr);
                    $("#aaid").text(result.aid);
                    $("#aname").text("收件人姓名:"+result.name);
                    $("#aaddr").text("收件人地址:"+result.addr);
                    $("#atel").text("电话"+result.tel);
                    cl();
                },
                error:function (error) {

                }
            })
        }
        function a(name,aid,addr,tel) {
//            var name=name;
//            var aid=aid;
//            var addr=addr;
//            var tel=tel;
            console.log(name);
            console.log(aid);
            console.log(tel);
            $("#aaid").text(aid);
            $("#aname").text("收件人姓名:"+name+"  ");
            $("#atel").text("电话:"+tel+"  ");
            $("#aaddr").text("收件人地址:"+addr+"  ");
        }

    </script>
</head>
<body>
<!-- start header -->
<!--end header -->

<!-- start banner_x -->
<div title="选择地址" id="sewindow" class="easyui-dialog" data-options="closed:true" style="width: 600px;height:200px;overflow: auto">
    <c:forEach items="${requestScope.address}" var="re" varStatus="ai">
        <div>
            <span>${ai.count}:&nbsp;&nbsp;</span>
            <span style="color: #0E2D5F">
                <c:if test="${re.type eq 1}">默认地址</c:if>
            </span>
            <span>收件人姓名:${re.name}&nbsp;&nbsp;电话:${re.tel}</span><br>
            <span>收货地址:${re.addr}</span><button type="button" onclick="diz(${re.aid})" >选择此地址</button>
        </div>
    </c:forEach>
    <c:if test="${requestScope.address == null}">
        <span>你还没有任何地址 !!! </span><br><br><br>
    </c:if>
</div>
<%--<div title="添加地址" id="addwindow" class="easyui-dialog" data-options="closed:true" style="width: 600px;height:250px;padding: 10px;overflow: auto">--%>
        <%--收货人名字:<input name="name" type="text" id="addname"><br><br><br>--%>
        <%--&nbsp;&nbsp;&nbsp;&nbsp;电话:&nbsp;&nbsp;&nbsp;&nbsp;<input name="tel" type="text" id="addtel"><br><br><br>--%>
        <%--收货地址:<input type="text" name="addr" id="addaddr" style="width: 400px;height: auto"><br><br><br>--%>
        <%--<input type="hidden" name="mid" value="${sessionScope.user.sid}">--%>
        <%--<button onclick="res()">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button id="button1" >确定</button>--%>
<%--</div>--%>

<div class="banner_x center">
    <a href="./index.html" target="_blank"><div class="logo fl"></div></a>
    <div class="wdgwc fl ml40">订单结算</div>
    <div class="wxts fl ml20">温馨提示：扫码付款,诚信经营<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;就算你给钱我也不发货-.-</span></div>
    <div class="dlzc fr">
        <ul>
            <li><a href="./login.html" target="_blank">登录</a></li>
            <li>|</li>
            <li><a href="./register.html" target="_blank">注册</a></li>
        </ul>
    </div>
    <div class="clear"></div>
</div>
<div class="xiantiao"></div>
<form method="post" action="insertOrder">
    <div class="gwcxqbj" style="height: 600px">
        <div class="gwcxd center" style="overflow:auto">
            <div class="top2 center">
                <div class="sub_top fl">
                    <input  style="visibility: hidden;"type="checkbox" name="cartid" value="0" class="quanxuan" />
                </div>
                <div class="sub_top fl">商品名称</div>
                <div class="sub_top fl">单价</div>
                <div class="sub_top fl">数量</div>
                <div class="sub_top fl">小计</div>
                <div class="clear"></div>
            </div>
            <c:forEach items="${requestScope.data}" var="da">
                <div class="content2 center">
                    <div class="sub_content fl ">
                        <input style="visibility: hidden;" type="checkbox" value="quanxuan" class="quanxuan" />
                        <input type="hidden" name="mcid" value="${da.id}">
                    </div>
                    <div class="sub_content fl"><img style="margin-top:50%" src="${path}/static/image/gwc_xiaomi6.jpg"></div>
                    <div class="sub_content fl ft20">${da.cname}${da.vname}${da.coname}</div>
                    <div class="sub_content fl ">${da.vprice+da.money}元</div>
                    <div class="sub_content fl">
                        <span style="margin-top:90%">${da.num}</span>
                    </div>
                    <div class="sub_content fl"><span>${(da.vprice+da.money)*da.num}</span></div>
                    <div class="clear"></div>
                </div>
            </c:forEach>

            <%--<c:forEach items="${requestScope.cartData}" var="cd">
                <div class="content2 center">
                    <div class="sub_content fl ">
                        <input style="margin-top:100%" type="checkbox" name="cartid" value="" class="quanxuan" />
                    </div>
                    <div class="sub_content fl"><img style="margin-top:50% "src="${path}/static/image/gwc_xiaomi6.jpg"></div>
                    <div class="sub_content fl ft20"></div>
                    <div class="sub_content fl ">元</div>
                    <div class="sub_content fl">
                        <input style="margin-top:90%" class="shuliang" type="number" value="" step="1" min="1">
                    </div>
                    <div class="sub_content fl"></div>
                    <div class="sub_content fl"><a href="">×</a></div>
                    <div class="clear"></div>
                </div>
            </c:forEach>--%>
        </div>
        <div>
            <c:if test="${requestScope.address eq '' }">
                <span style="color: red">您还没有设置默认地址 </span><br>
            </c:if>
            &nbsp;&nbsp;&nbsp;<a style="color: blue" href="javascript:sewindow()">选择地址</a>&nbsp;&nbsp;&nbsp;</span><a style="color: blue" href="${path}/addressAll">添加</a>&nbsp;&nbsp;&nbsp;</span><br>
            <c:forEach items="${requestScope.address}" var="re" varStatus="ai">
                <c:if test="${re.type==1}">
                    <a href="javascript:a('${re.name}','${re.aid}','${re.addr}','${re.tel}')">刷新地址</a>
                    <%--<div>
                        <span>收件人姓名:${re.name}&nbsp;&nbsp;</span><span>电话:${re.tel}</span><br>
                        <span>收货地址:${re.addr}</span>
                        <input name="aid" type="hidden" value="${re.aid}">
                    </div>--%>
                </c:if>
            </c:forEach>

            <div>
                <input name="aid" type="hidden" value="">
                <span id="aname">收件人姓名:</span><br>
                <span id="atel">电话：</span><br>
                <span id="aaddr">地址：</span>
                <input id="aaid" name="aid" type="hidden" value="">
            </div>


        </div>

        <div class="jiesuandan mt20 center">
            <div class="tishi fl ml20">
                <ul>
                    <li>共<span>${fn:length(requestScope.data)}</span>件商品</li>
                    <div class="clear"></div>
                </ul>
            </div>
            <div class="jiesuan fr">
                <div class="jiesuanjiage fl">合计（不含运费）：<span id="mm">${requestScope.price}.00元</span></div>
                <div class="jsanniu fr"><input class="jsan" id="jiesuan" type="submit" value="已付款"/></div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>

    </div>
</form>

<!-- footer -->
<footer class="center">

    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>

</body>
</html>