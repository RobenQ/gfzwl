<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="../css/head.css"/>
		<link rel="stylesheet" type="text/css" href="../css/main.css"/>
		<link rel="stylesheet" type="text/css" href="../css/foot.css"/>
		<link rel="stylesheet" type="text/css" href="../css/teachresource.css"/>
		<title></title>
	</head>
	<body>
		<div id="head">
			<div id="logo-wrap">
				<div id="logo">
					<img src="../img/head-logo.png" />
				</div>
			</div>
			<div id="title-wrap">
				<div id="title">
					<p>高分子物理精品资源共享课</p>
				</div>
			</div>
			<!-- <div id="welcome">
				欢迎【周庆】登录!
			</div> -->
		</div>
		<div id="resource-main">
			<div id="resource-left">
				<a href="/gfzwl/user/resource2?type=${type }&section=0">
					<div class="menu-left" id="">
						<h3 style="">全部</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第一章">
					<div class="menu-left" id="">
						<h3 class="hh">第一章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第二章">
					<div class="menu-left" id="">
						<h3 class="hh">第二章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第三章">
					<div class="menu-left" id="">
						<h3 class="hh">第三章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第四章">
					<div class="menu-left" id="">
						<h3 class="hh">第四章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第五章">
					<div class="menu-left" id="">
						<h3 class="hh">第五章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第六章">
					<div class="menu-left" id="">
						<h3 class="hh">第六章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第七章">
					<div class="menu-left" id="">
						<h3 class="hh">第七章</h3>
					</div>
				</a>
				<a href="/gfzwl/user/resource2?type=${type }&section=第八章">
					<div class="menu-left" id="">
						<h3 class="hh">第八章</h3>
					</div>
				</a>
			</div>
			<div id="resource-right">
				<iframe src="/gfzwl/user/resourcelist2?section=${section }&type=${type }" width="100%" height="100%" style="border: none;"></iframe>
			</div>
		</div>
		<div id="foot">
			<p>地址：山西省太原市尖草坪区新兰路31号
			&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;邮编：030008 </p>
			<p>ICP备案号：赣ICP备19003320号</p>
		</div>
	</body>
</html>
