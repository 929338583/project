<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Apricot v1.2</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
body {
	overflow: hidden !important;
	padding-top: 120px;
}
</style>
<!-- Le styles -->
   <script type="text/javascript" src="<%=request.getContextPath() %><%=request.getContextPath() %>/static/js/jquery.min.js"></script>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/loader-style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/signin.css">
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/static/ico/minus.png">
</head>

<body>
	<div id="awwwards" class="right black">
	</div>
	<!-- Preloader -->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<div class="logo-error">
		<h1>
			Monkey <span>v0.0.1</span>
		</h1>
	</div>
	<!-- Main content -->
	<section class="page-error">
		<div class="error-page">
			<h2 class="headline text-info">404</h2>
			<div class="error-content">
				<h3>
					<i class="fa fa-warning text-yellow"></i> 对不起，系统出错了！
				</h3>
				<p>
					错误码：${exception.code},错误信息：${exception.msg}。
					<a href="javascript:void(0)"  onclick="document.getElementById('errorForm').submit()">返回上级</a>
				</p>
			</div>
		</div>
	</section>
	<!-- MAIN EFFECT -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/preloader.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/app.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/load.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/main.js"></script>
</body>
</html>
