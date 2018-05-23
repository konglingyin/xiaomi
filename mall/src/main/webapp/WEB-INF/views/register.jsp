<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/14
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <%@include file="common.jsp"%>
    <link rel="stylesheet" type="text/css" href="${path}/static/css/login.css">
    <script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("input[name='username']").blur(function () {
                   $.ajax({
                       url:"register/ajaxU",
                       type:"POST",
                       data:{username:$(this).val()},
                       success:function (result) {
                           console.log(result.number);
                           if(result.number == 0){
                               $("#name").text("用户名可用");
                           }else if(result.number == 1){
                               $("#name").text("用户名已存在");
                           }else if (result.number == 2){
                               $("#name").text("用户名不能为空");
                           }else{
                               $("#name").text("用户名不可用,长度小于4位");
                           }
                       },
                       error: function (error) {
                           alert("gg")
                       }
                   });
                }
            );
            $("input[name='password']").blur(function () {
                var length=$(this).val().length;
                if(length<6){
                   $("#pass1").text("请输入6位以上的字符");
                }else if(length>=6 && length<10){
                    $("#pass1").text("密码安全度:低");
                }else if(length>=10&&length<=13){
                    $("#pass1").text("密码安全度:中");
                }else{
                    $("#pass1").text("密码安全度:高");
                }
            });
            $("input[name='repassword']").blur(function () {
                var p1=$("input[name='password']").val();
                var p2=$(this).val();
                if(p1!=p2){
                    $("#pass2").text("两次密码不一致");
                }else {
                    $("#pass2").text("正常");
                }
            });
            $("input[name='tel']").blur(function () {
                var t=$(this).val().length;
                if(t>4&&t<=11){
                    $("#tel").text("正常");
                }else{
                    $("#tel").text("手机号格式不正确");
                }
            });

        });
        function register() {
            $.ajax({
                url:"${path}/register/user",
                type:"POST",
                dataType:"json",
                async:false,
                data:$("#myfrom").serialize(),
                success:function (result) {
                    if(result == 1){
                        alert("注册成功点击登录。");
                        window.location.href="${path}/login";
                    }else {
                        alert("注册失败！请从新注册。")
                    }
                },
                error:function (error) {
                    alert("GG")
                }
            })
        }
    </script>
</head>
<body>
<form id="myfrom">
    <div class="regist">
        <div class="regist_center">
            <div class="regist_top">
                <div class="left fl">会员注册</div>
                <div class="right fr"><a href="./index.html" target="_self">小米商城</a></div>
                <div class="clear"></div>
                <div class="xian center"></div>
            </div>
            <div class="regist_main center">
                <div class="username">用&nbsp;&nbsp;户&nbsp;&nbsp;名:&nbsp;&nbsp;<input class="shurukuang" type="text" name="username" placeholder="请输入你的用户名"/><span id="name">请不要输入汉字</span></div>
                <div class="username">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="shurukuang" type="password" name="password" placeholder="请输入你的密码"/><span id="pass1">请输入6位以上字符</span></div>

                <div class="username">确认密码:&nbsp;&nbsp;<input class="shurukuang" type="password" name="repassword" placeholder="请确认你的密码"/><span id="pass2">两次密码要输入一致哦</span></div>
                <div class="username">手&nbsp;&nbsp;机&nbsp;&nbsp;号:&nbsp;&nbsp;<input class="shurukuang" type="text" name="tel" placeholder="请填写正确的手机号"/><span id="tel">填写下手机号吧，方便我们联系您！</span></div>
                <div class="username">
                    <div class="left fl">验&nbsp;&nbsp;证&nbsp;&nbsp;码:&nbsp;&nbsp;<input class="yanzhengma" type="text" name="username" placeholder="请输入验证码"/></div>
                    <div class="right fl"><img src="${path}/static/image/yanzhengma.jpg"></div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="regist_submit">
                <input class="submit" type="button" onclick="register()" value="立即注册" >
            </div>

        </div>
    </div>
</form>
</body>
</html>
