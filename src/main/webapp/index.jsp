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
		<meta charset="utf-8" />
		<script src="js/jquery-3.4.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/all.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/lunbo.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="css/head.css"/>
		<link rel="stylesheet" type="text/css" href="css/main.css"/>
		<link rel="stylesheet" type="text/css" href="css/foot.css"/>
		<link rel="stylesheet" type="text/css" href="css/lunbo.css"/>
		<title>高分子物理资源共享课</title>
	</head>
	<body>
		<div id="head">
			<div id="logo-wrap">
				<div id="logo">
					<img src="img/head-logo.png" />
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
		<div id="main">
			<div id="lunbo">
				<div id="nav">
					<a href="index.html">
						<div class="menu" id="">
							首页
						</div>
					</a>
					<a href="#kcgk">
						<div class="menu" id="">
							课程概况
						</div>
					</a><a href="#jxdw">
						<div class="menu" id="">
							教学队伍
						</div>
					</a><a href="#jxzy">
						<div class="menu" id="">
							教学资源
						</div>
					</a><a href="#jxsj">
						<div class="menu" id="">
							教学实践
						</div>
					</a><a href="#xtyst">
						<div class="menu" id="">
							习题与试题
						</div>
					</a>
				</div>
				<ul id="ul">
				<li class="left pic"><img src="img/lunbo/1.jpg" alt="1" /></li>
				<li class="left pic"><img src="img/lunbo/2.jpg" alt="2" /></li>
				<li class="left pic"><img src="img/lunbo/3.jpg" alt="3" /></li>
				<li class="left pic"><img src="img/lunbo/4.jpg" alt="4" /></li>
				<li class="left pic"><img src="img/lunbo/5.png" alt="5" /></li>
			</ul>
			<ol id="list">
				<li id="on">1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
			</ol>
			</div>
			<div id="mu">
				<!-- <hr style="border: dashed 0.1px;"> -->
				<h2 style="margin-left: 2%; margin-top: 2%;color: #0066ff;" id="kcgk">课程概况</h2>
				<a href="js/pdfjs/web/viewer.html?file=../../../files/two/2_1.pdf" target="_blank">
					<div class="resource" style="background:linear-gradient(#FC9033,#FB5130);">
							<h1 style="margin-top: 20%;">项目申报书</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				
				<a href="js/pdfjs/web/viewer.html?file=../../../files/two/2_2.pdf" target="_blank">
					<div class="resource" style="background:linear-gradient(#20ABFA,#3070ED);">
							<h1 style="margin-top: 20%;">教学大纲</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				
				<a href="js/pdfjs/web/viewer.html?file=../../../files/two/2_3.pdf" target="_blank">
					<div class="resource" style="background:linear-gradient(#7ECEC7,#52A9C2);">
							<h1 style="margin-top: 20%;">授课计划</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<h2 style="margin-left: 2%; margin-top: 2%;color: #0066ff;" id="jxdw">教学队伍</h2>
				<a href="js/pdfjs/web/viewer.html?file=../../../files/three/3_1.pdf" target="_blank">
					<div class="resource2" style="background:linear-gradient(#ED6EA0,#FB5130);">
							<h1 style="margin-top: 15%;">项目负责人</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				
				<a href="js/pdfjs/web/viewer.html?file=../../../files/three/3_2.pdf" target="_blank">
					<div class="resource2" style="background:linear-gradient(#20ABFA,#3070ED);">
							<h1 style="margin-top: 15%;">项目组成员</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<h2 style="margin-left: 2%; margin-top: 2%;color: #0066ff;" id="jxzy">教学资源</h2>
				<a href="/gfzwl/user/resource?type=课件&section=0">
					<div class="resource4" style="background:linear-gradient(#FC9033,#FB5130);">
							<h1 style="margin-top: 20%;">课件PPT</h1>
							<br>
							<h3>${resource1Num }</h3>
					</div>
				</a>
				
				<a href="/gfzwl/user/resource?type=电子教案&section=0">
					<div class="resource4" style="background:linear-gradient(#20ABFA,#3070ED);">
							<h1 style="margin-top: 20%;">电子教案</h1>
							<br>
							<h3>${resource2Num }</h3>
					</div>
				</a>
				
				<a href="/gfzwl/user/resource2?type=视频&section=0">
					<div class="resource4" style="background:linear-gradient(#7ECEC7,#52A9C2);">
							<h1 style="margin-top: 20%;">教学视频</h1>
							<br>
							<h3>${resource3Num }</h3>
					</div>
				</a>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<a href="js/pdfjs/web/viewer.html?file=../../../files/four/jiaocai.pdf" target="_blank">
					<div class="resource4" style="background:linear-gradient(#FF82AB,#FF7F00);">
							<h1 style="margin-top: 20%;">参考教材</h1>
							<br>
							<h3></h3>
					</div>
				</a>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<h2 style="margin-left: 2%; margin-top: 2%;color: #0066ff;" id="jxsj">教学实践</h2>
				<a href="/gfzwl/user/resource?type=实验指导书&section=0">
					<div class="resource3" style="background:linear-gradient(#BFD1AD,#BFD1AD);">
							<h1 style="margin-top: 20%;">实验指导书</h1>
							<br>
							<h3>${resource4Num }</h3>
					</div>
				</a>
				
				<a href="/gfzwl/user/resource?type=matlab仿真&section=0">
					<div class="resource3" style="background:linear-gradient(#ED6EA0,#FF0060);">
							<h1 style="margin-top: 20%;">matlab仿真</h1>
							<br>
							<h3>${resource6Num }</h3>
					</div>
				</a>
				
				<a href="/gfzwl/user/resource?type=虚拟仿真&section=0">
					<div class="resource3" style="background:linear-gradient(#BF71ED,#8473EF);">
							<h1 style="margin-top: 20%;">虚拟仿真</h1>
							<br>
							<h3>${resource5Num }</h3>
					</div>
				</a>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				<h2 style="margin-left: 2%; margin-top: 2%;color: #0066ff;" id="xtyst">习题与试题</h2>
				<a href="/gfzwl/user/resource?type=习题&section=0">
					<div class="resource2" style="background:linear-gradient(#00ffcc,#0033cc);">
							<h1 style="margin-top: 12%;">习题详解</h1>
							<br>
							<h3>${resource7Num }</h3>
					</div>
				</a>
				
				<a href="/gfzwl/user/resource?type=试题&section=0">
					<div class="resource2" style="background:linear-gradient(#009ACD,#00868B);">
							<h1 style="margin-top: 12%;">试题汇总</h1>
							<br>
							<h3>${resource8Num }</h3>
					</div>
				</a>
				<br>
			</div>
		</div>
		<div id="foot">
			<p>地址：山西省太原市尖草坪区新兰路31号
			&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;邮编：030008 </p>
			<p>ICP备案号：赣ICP备19003320号</p>
		</div>
	</body>
</html>
