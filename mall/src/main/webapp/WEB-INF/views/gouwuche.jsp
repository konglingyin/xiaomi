<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的购物车-小米商城</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css">
    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".shuliang").click(function () {
                var money=$(this).next().val();
                var num=$(this).val();
                var id=$(this).next().next().val();
                var sum=money*num;
                $(this).parent().next().text("￥"+sum);
                $.ajax({
                    url:"${path}/cart/Num",
                    type:"POST",
                    data:{id:id.toString(),num:num.toString()},
                    success:function (result) {
                        if(result==0){
                           alert("修改数量失败");
                        }
                    },
                    error:function (error) {
                        alert("修改数量失败");
                    }

                });
                mm();
            });
            $("input:checkbox").click(function () {
                var v1=$(this).val();
                if(v1 == 0){
                    console.log($(this).is(":checked"));
                    if($(this).is(":checked")){
                        $("input:checkbox").each(function () {
                            var th=$(this);
                            if(!th.prop("checked")){
                                th.prop("checked",true);
                            }
                        })
                    }else{
                        $("input:checkbox").each(function () {
                            var th=$(this);
                            th.prop("checked",false);
                        })
                    }
                }else {
                    $("#checked0") .prop("checked",true);
                    $("input:checkbox").each(function () {
                        var v2=$(this);
                        if(v2.val()!=0){
                            if(!v2.is(":checked")){
                                $("#checked0") .prop("checked",false);
                                return false;
                            }
                        }
                    });

                }
                count();
                mm();
            });
            $("#jiesuan").click(function () {
//                var array=new Array();
//                var i=0;
                var string='';
                $("input:checkbox").each(function () {
                    if ($(this).is(":checked")){
//                      array[i++]=$(this).val().toString();
                        string=string+$(this).val().toString()+",";
                    }
                });
                $("#string").val(string);
                console.log(string);
                if (string.length==0){
                    alert("请选择你的商品");
                    return false;
                }
//                if(i == 0){
//                    alert("请选择你的商品");
//                    return;
//                }
                /*$.ajax({
                    url:"settles",
                    type:"POST",
                    data:{"array":array},
                    traditional:true,
                    success:function (resultt) {
                        location.href="settle";
                    },
                    error:function (error) {

                    }
                })*/
            });
            count();
            mm();
        });
        function deleteCart(id) {
            var mcid=id;
            $.ajax({
                url:"${path}/cart/deleteCart",
                data:{mcid:mcid},
                type:"POST",
                success:function (result) {
                    if(result>0){
                        location.reload();
                    }else {
                        alert("删除失败");
                        location.reload();
                    }
                },
                error:function (error) {
                    alert("删除失败");
                }
            })
        }
        function count() {
            var a=0;
            var b=0;
            $("input:checkbox").each(function () {
                var th=$(this);
                if(th.val()!=0){
                    a++;
                    if(th.prop("checked")){
                        b++;
                    }
                }
            });
            $("#count1").text(a.toString());
            $("#count2").text(b.toString());
        }
        function mm() {
            var array=new Array();
            var i=0;
            $("input:checkbox").each(function () {
                var t=$(this);
                if(t.val() != 0 && t.is(":checked")){
                  array[i++]=t.val();
                }
            });
            $.ajax({
                url:"total",
                type:"POST",
                data:{"array":array},
                traditional:true,
                success:function (result) {
                    $("#mm").text(result+".00");
                    $("#mon").val(result);
                },
                error:function (error) {

                }
            })
        }

    </script>
</head>
<body>
<!-- start header -->
<!--end header -->

<!-- start banner_x -->
<div class="banner_x center">
    <a href="${path}/index" target="_blank"><div class="logo fl"></div></a>
    <div class="wdgwc fl ml40">我的购物车</div>
    <div class="wxts fl ml20">温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</div>
    <div class="dlzc fr">
        <ul>
            <li><a href="" target="_blank">登录</a></li>
            <li>|</li>
            <li><a href="" target="_blank">注册</a></li>
        </ul>

    </div>
    <div class="clear"></div>
</div>
<div class="xiantiao"></div>
<div class="gwcxqbj" style="height: 600px">
    <div class="gwcxd center" style="overflow:auto">
        <div class="top2 center">
            <div class="sub_top fl">
                <input id="checked0" type="checkbox" name="cartid" value="0" class="quanxuan" />全选/全不选
            </div>
            <div class="sub_top fl">商品名称</div>
            <div class="sub_top fl">单价</div>
            <div class="sub_top fl">数量</div>
            <div class="sub_top fl">小计</div>
            <div class="sub_top fr">操作</div>
            <div class="clear"></div>
        </div>
        <%--<div class="content2 center">
            <div class="sub_content fl ">
                <input type="checkbox" value="quanxuan" class="quanxuan" />
            </div>
            <div class="sub_content fl"><img src="${path}/static/image/gwc_xiaomi6.jpg"></div>
            <div class="sub_content fl ft20">小米6全网通6GB内存+64GB 亮黑色</div>
            <div class="sub_content fl ">2499元</div>
            <div class="sub_content fl">
                <input class="shuliang" type="number" value="1" step="1" min="1" >
            </div>
            <div class="sub_content fl">2499元</div>
            <div class="sub_content fl"><a href="">×</a></div>
            <div class="clear"></div>
        </div>--%>
        <c:forEach items="${requestScope.cartData}" var="cd">
            <div class="content2 center">
                <div class="sub_content fl ">
                    <input style="margin-top:100%" type="checkbox" name="cartid" value="${cd.id}" class="quanxuan" />
                </div>
                <div class="sub_content fl"><img style="margin-top:50% "src="${path}/static/image/gwc_xiaomi6.jpg"></div>
                <div class="sub_content fl ft20">${cd.cname}${cd.vname} ${cd.coname}</div>
                <div class="sub_content fl ">${cd.vprice+cd.money}元</div>
                <div class="sub_content fl">
                    <input style="margin-top:90%" class="shuliang" type="number" value="${cd.num}" step="1" min="1">
                    <input type="hidden" value="${cd.vprice+cd.money}"/>
                    <input type="hidden" value="${cd.id}"/>
                </div>
                <div class="sub_content fl">${(cd.vprice+cd.money)*cd.num}</div>
                <div class="sub_content fl"><a href="javaScript:deleteCart(${cd.id})">×</a></div>
                <div class="clear"></div>
            </div>
        </c:forEach>
    </div>
    <div class="jiesuandan mt20 center">
        <div class="tishi fl ml20">
            <ul>
                <li><a href="#">继续购物</a></li>
                <li>|</li>
                <li>共<span id="count1">2</span>件商品，已选择<span id="count2">1</span>件</li>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="jiesuan fr">
            <div class="jiesuanjiage fl">合计（不含运费）：<span id="mm">0.00元</span></div>

            <form action="${path}/settle" method="post">
                <input type="hidden" name="price" id="mon" value="">
                <input type="hidden" value="" id="string" name="array">
                <div class="jsanniu fr"><input class="jsan" id="jiesuan" type="submit" name="jiesuan"  value="去结算"/></div>
            </form>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>

</div>

<!-- footer -->
<footer class="center">

    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>

</body>
</html>

