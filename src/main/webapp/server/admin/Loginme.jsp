<%--
  Created by IntelliJ IDEA.
  User: 19448
  Date: 2019/3/23
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="/MavenShop/layui/css/layui.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        #contain{
            width: 350px;
            height: 400px;
            position: absolute;
            left: 480px;
            top: 120px;
        }
        .layui-form-label{
            border: 1px solid gainsboro;
            text-align: center;
            padding: 0;
            width: 40px;
            height: 38px;
            line-height: 38px;
        }
        .layui-input{
            height: 40px;
            width: 250px;
        }
        #code{
            float: left;width: 100px;height: 38px;
            line-height: 40px;border: 1px solid lightgray;margin-left: -52px;" id="code
        }
        #submit{
            margin-left: -108px;
            width: 290px;
        }
    </style>
</head>
<body>
<script src="/MavenShop/layui/layui.js"></script>
<div id="contain">
<form action="/MavenShop/serverlogin" method="post" class="layui-form">
    <div class="layui-form-item">
        <span class="layui-icon layui-icon-login-qq" style="font-size: 40px;color: green;float: left"></span><h1 style="float: left;margin-left: 15px;"><i>欢迎登录</i></h1>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"><span class="layui-icon layui-icon-username"></span></label>
        <div class="layui-input-inline">
            <input type="text" name="username" required  lay-verify="required" placeholder="手机/邮箱/账号" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"><span class="layui-icon layui-icon-password"></span></label>
        <div class="layui-input-inline">
            <input type="password" name="password" required  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label"><span class="layui-icon layui-icon-auz"></span></label>
        <div class="layui-input-inline">
            <input type="text" name="checkcode" required  lay-verify="required" placeholder="请输入验证码"  class="layui-input" style="width: 130px;">
        </div>
        <span id="code">验证</span>
    </div>
    <div class="layui-form-item" style="height: 30px">
        <input type="checkbox" name="checkbox" title="下次自动登录" lay-skin="primary" checked style="margin-left: -100px">
    </div>
    <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-fluid layui-btn-radius " id="submit">立即登录</button>
            </div>
    </div>
    <div class="layui-form-item">
        <a href="#" style="margin-left: 10px;color: blue">忘记密码？</a>
        <a href="/MavenShop/server/admin/Registerme.jsp" style="margin-left: 140px;color: blue">立即注册</a>
    </div>
</form>
</div>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</body>
</html>
