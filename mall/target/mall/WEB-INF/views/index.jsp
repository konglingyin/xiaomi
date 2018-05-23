<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>小米商城</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/style.css">
    <style type="text/css">
        .img fl{
            width: 40px;
            height: 40px;
        }
        .img1{
            max-height: 40px;
            max-width: 40px;
        }
    </style>
    <script type="text/javascript">
        function f1() {
            var n=10;
            nadd=function () {
                n++;
            };
            function f2() {
              alert(n)
            }

            return f2;
        }
        var result=f1();
        result();
        nadd();
        result();
    </script>
</head>
<body>
<!-- start header -->
<%@include file="header.jsp"%>
<!--end header -->

<!-- start banner_x -->
<%--<div class="banner_x center">
    <a href="index" target="_blank"><div class="logo fl"></div></a>
    <a href=""><div class="ad_top fl"></div></a>
    <div class="nav fl">
        <ul>
            <c:forEach items="${applicationScope.cbs}" var="cb">
                <li><a href="product?ctype=${cb.tid}">${cb.tname}</a></li>
            </c:forEach>
            &lt;%&ndash;<li><a href="./liebiao.html" target="_blank">小米手机</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">红米</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">平板·笔记本</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">电视</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">盒子·影音</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">路由器</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">智能硬件</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">服务</a></li>&ndash;%&gt;
            &lt;%&ndash;<li><a href="">社区</a></li>&ndash;%&gt;
        </ul>
    </div>
    <div class="search fr">
        <form action="" method="post">
            <div class="text fl">
                <input type="text" class="shuru"  placeholder="小米6&nbsp;小米MIX现货">
            </div>
            <div class="submit fl">
                <input type="submit" class="sousuo" value="搜索"/>
            </div>
            <div class="clear"></div>
        </form>
        <div class="clear"></div>
    </div>
</div>--%>
<!-- end banner_x -->

<!-- start banner_y -->
<div class="banner_y center">
    <div class="nav">
        <ul>
            <c:forEach items="${applicationScope.cbs2}" var="c2" varStatus="num">


                <li>
                <a href="">${c2.tname}</a>

                <div class="pop">
                    <c:forEach items="${sessionScope.twoP}" var="tp">
                        <c:if test="${tp.twoid==c2.twoid}">
                            <div class="left fl">
                                <c:forEach items="${tp.products}" var="ps"  varStatus="i">

                                    <c:if test="${i.count>0 && i.count<=6}">
                                        <div>
                                            <div class="xuangou_left fl">
                                                <a href="${path}/details?cid=${ps.cid}">
                                                    <div class="img fl"><img class="img1" src="${path}/static/image/${ps.img}" alt=""></div>
                                                    <span class="fl" title="${ps.cname}">${fn:substring(ps.cname,0,10)}</span>
                                                    <div class="clear"></div>
                                                </a>
                                            </div>
                                            <div class="xuangou_right fr"><a href="${path}/details?cid=${ps.cid}" target="_blank">选购</a></div>
                                            <div class="clear"></div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <div class="ctn fl">
                                <c:forEach items="${tp.products}" var="ps"  varStatus="i">
                                    <c:if test="${i.count>6 && i.count<=12}">
                                        <div>
                                            <div class="xuangou_left fl">
                                                <a href="${path}/details?cid=${ps.cid}">
                                                    <div class="img fl"><img class="img1" src="${path}/static/image/${ps.img}" alt=""></div>
                                                    <span class="fl" title="${ps.cname}">${fn:substring(ps.cname,0,10)}</span>
                                                    <div class="clear"></div>
                                                </a>
                                            </div>
                                            <div class="xuangou_right fr"><a href="${path}/details?cid=${ps.cid}" target="_blank">选购</a></div>
                                            <div class="clear"></div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <div class="right fl">
                                <c:forEach items="${tp.products}" var="ps"  varStatus="count">
                                    <c:if test="${i.count>12 && i.count<=18}">
                                        <div>
                                            <div class="xuangou_left fl">
                                                <a href="${path}/details?cid=${ps.cid}">
                                                    <div class="img fl"><img class="img1" src="${path}/static/image/${ps.img}" alt=""></div>
                                                    <span class="fl" title="${ps.cname}">${fn:substring(ps.cname,0,10)}</span>
                                                    <div class="clear"></div>
                                                </a>
                                            </div>
                                            <div class="xuangou_right fr"><a href="${path}/details?cid=${ps.cid}" target="_blank">选购</a></div>
                                            <div class="clear"></div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </c:if>
                    </c:forEach>

                   <%-- <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>--%>
                   <%-- <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>--%>
                </div>
            </li>
            </c:forEach>
            <%--<li>
                <a href="">笔记本</a>
                <a href="">平板</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">电视</a>
                <a href="">盒子</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">路由器</a>
                <a href="">智能硬件</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">移动电源</a>
                <a href="">电池</a>
                <a href="">插线板</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">耳机</a>
                <a href="">音箱</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="ctn fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5-80.jpg" alt=""></div>
                                    <span class="fl">小米手机5</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmn4x80.png" alt=""></div>
                                    <span class="fl">红米Note 4X</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hmnote4-80.jpg" alt=""></div>
                                    <span class="fl">红米Note-4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4x_80.png" alt=""></div>
                                    <span class="fl">红米4x</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4-80.jpg" alt=""></div>
                                    <span class="fl">红米4</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/hm4A-80.jpg" alt=""></div>
                                    <span class="fl">红米4A</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="right fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/compare.jpg" alt=""></div>
                                    <span class="fl">对比手机</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/mimobile.jpg" alt=""></div>
                                    <span class="fl">小米移动&nbsp;电话卡</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <!-- <div class="xuangou_right fr"><a href="">选购</a></div> -->
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">保护套</a>
                <a href="">贴膜</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">线材</a>
                <a href="">支架</a>
                <a href="">储存卡</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">箱包</a>
                <a href="">服饰</a>
                <a href="">鞋</a>
                <a href="">眼镜</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <li>
                <a href="">米兔</a>
                <a href="">生活周边</a>
                <div class="pop">
                    <div class="left fl">
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm6_80.png" alt=""></div>
                                    <span class="fl">小米6</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/5c_80.png" alt=""></div>
                                    <span class="fl">小米手机5c</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xmNOTE2-80.jpg" alt=""></div>
                                    <span class="fl">小米Note 2</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米MIX</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/MIX-80.jpg" alt=""></div>
                                    <span class="fl">小米5s</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                        <div>
                            <div class="xuangou_left fl">
                                <a href="">
                                    <div class="img fl"><img src="${path}/static/image/xm5Splus.jpg" alt=""></div>
                                    <span class="fl">小米5s Plus</span>
                                    <div class="clear"></div>
                                </a>
                            </div>
                            <div class="xuangou_right fr"><a href="">选购</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>--%>
        </ul>
    </div>

</div>

<div class="sub_banner center">
    <div class="sidebar fl">
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_01.gif"></a></div>
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_02.gif"></a></div>
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_03.gif"></a></div>
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_04.gif"></a></div>
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_05.gif"></a></div>
        <div class="fl"><a href=""><img src="${path}/static/image/hjh_06.gif"></a></div>
        <div class="clear"></div>
    </div>
    <div class="datu fl"><a href=""><img src="${path}/static/image/hongmi4x.png" alt=""></a></div>
    <div class="datu fl"><a href=""><img src="${path}/static/image/xiaomi5.jpg" alt=""></a></div>
    <div class="datu fr"><a href=""><img src="${path}/static/image/pinghengche.jpg" alt=""></a></div>
    <div class="clear"></div>


</div>
<!-- end banner -->

<!-- start danpin -->
<div class="danpin center">

    <div class="biaoti center">小米明星单品</div>
    <div class="main center">
        <c:forEach items="${requestScope.front}" var="ft">
            <div class="mingxing fl">
                <div class="sub_mingxing"><a href="${path}/details?cid=${ft.cid}"><img src="${path}/static/image/${ft.img}" alt=""></a></div>
                <div class="pinpai"><a href="${path}/details?cid=${ft.cid}">${fn:substring(ft.cname,0,11)}</a></div>
                <div class="youhui" title="${ft.describes}">${fn:substring(ft.describes,0,16)}</div>
                <div class="jiage">${ft.price}元起</div>
            </div>
        </c:forEach>
        <%--<div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="${path}/static/image/pinpai2.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米5s</a></div>
            <div class="youhui">5月9日-10日，下单立减200元</div>
            <div class="jiage">1999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="${path}/static/image/pinpai3.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米手机5 64GB</a></div>
            <div class="youhui">5月9日-10日，下单立减100元</div>
            <div class="jiage">1799元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="${path}/static/image/pinpai4.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米电视3s 55英寸</a></div>
            <div class="youhui">5月9日，下单立减200元</div>
            <div class="jiage">3999元</div>
        </div>
        <div class="mingxing fl">
            <div class="sub_mingxing"><a href=""><img src="${path}/static/image/pinpai5.png" alt=""></a></div>
            <div class="pinpai"><a href="">小米笔记本</a></div>
            <div class="youhui">更轻更薄，像杂志一样随身携带</div>
            <div class="jiage">3599元起</div>
        </div>--%>
        <div class="clear"></div>
    </div>
</div>
<div class="peijian w">
    <div class="biaoti center">配件</div>
    <div class="main center">
        <div class="content">
            <div class="remen fl"><a href=""><img src="${path}/static/image/peijian1.jpg"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span>新品</span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian2.jpg"></a></div>
                <div class="miaoshu"><a href="">小米6 硅胶保护套</a></div>
                <div class="jiage">49元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian3.jpg"></a></div>
                <div class="miaoshu"><a href="">小米手机4c 小米4c 智能</a></div>
                <div class="jiage">29元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:red">享6折</span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian4.jpg"></a></div>
                <div class="miaoshu"><a href="">红米NOTE 4X 红米note4X</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian5.jpg"></a></div>
                <div class="miaoshu"><a href="">小米支架式自拍杆</a></div>
                <div class="jiage">89元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="content">
            <div class="remen fl"><a href=""><img src="${path}/static/image/peijian6.png"></a>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian7.jpg"></a></div>
                <div class="miaoshu"><a href="">小米指环支架</a></div>
                <div class="jiage">19元</div>
                <div class="pingjia">372人评价</div>
                <div class="piao">
                    <a href="">
                        <span>发货速度很快！很配小米6！</span>
                        <span>来至于mi狼牙的评价</span>
                    </a>
                </div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian8.jpg"></a></div>
                <div class="miaoshu"><a href="">米家随身风扇</a></div>
                <div class="jiage">19.9元</div>
                <div class="pingjia">372人评价</div>
            </div>
            <div class="remen fl">
                <div class="xinpin"><span style="background:#fff"></span></div>
                <div class="tu"><a href=""><img src="${path}/static/image/peijian9.jpg"></a></div>
                <div class="miaoshu"><a href="">红米4X 高透软胶保护套</a></div>
                <div class="jiage">59元</div>
                <div class="pingjia">775人评价</div>
            </div>
            <div class="remenlast fr">
                <div class="hongmi"><a href=""><img src="${path}/static/image/hongmin4.png" alt=""></a></div>
                <div class="liulangengduo"><a href=""><img src="${path}/static/image/liulangengduo.png" alt=""></a></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<footer class="mt20 center">
    <div class="mt20">小米商城|MIUI|米聊|多看书城|小米路由器|视频电话|小米天猫店|小米淘宝直营店|小米网盟|小米移动|隐私政策|Select Region</div>
    <div>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</div>
    <div>违法和不良信息举报电话：185-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</div>
</footer>
</body>
</html>