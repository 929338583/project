<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Monkey V0.0.1</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/encrypt.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/loader-style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/signin.css">
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/static/ico/minus.png">
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.js"></script>
</head>

<body> 
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <div class="container">
        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>Money
                            <span>版本v0.0.1</span>
                        </h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                        <form role="form" action="<%=request.getContextPath() %>/backstage/login" method="post">
                        	<c:if test="${!empty exception.msg}">
	                        	<div class="alert alert-danger">
	                                <button data-dismiss="alert" class="close" type="button"></button>
	                                <span class="entypo-attention"></span>
	                                <strong>${exception.msg}</strong>
	                            </div>
                            </c:if>
                            <div class="form-group">
                                <label>用户名</label>
                                <input type="text" name="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>密码</label>
                                <input type="password" id="temp" class="form-control" onblur="encryptPassword()">
                                <input type="hidden" id="password" name="password" class="form-control">
                            </div>
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" name="remeberMe">记住用户名</label>
                            </div>
                            <button class="btn btn btn-primary pull-right" type="submit">登录</button>
                        </form>
                        <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>
        <div style="text-align:center;margin:0 auto;">
            <h6 style="color:#fff;">Copyright(C)  2017 Monkey 版权所有</h6>
        </div>
    </div>
</body>
<script>

function encryptPassword(){
	var password = document.getElementById("temp").value;
	document.getElementById("password").value=encrypt(password);
}
</script>
</html>
