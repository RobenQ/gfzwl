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
		<title></title>
		<link href="../css/resourcelist.css" rel="stylesheet" />
		<script src="../js/4_1_1s.js"></script>
	</head>
	<body>
		<div class="list">
			<table class="table" id="tab">
				<thead>
					<tr class="tr">
						<td style="width: 20%;" class="source">资源类型</td>
						<td>资源名称</td>
						<td style="width: 20%;">所属章节</td>
						<td style="width: 20%;">操作</td>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${resourcesList }" var="resoure" varStatus="status">
				<tr class="relative">
					<td class="option">${resoure.type }</td>
					<td class="option">${resoure.name }</td>
					<td class="option">${resoure.section }</td>
					<td>
						<button class="btn" id="btn" value="${resoure.path }" onclick="download2(this)">下载</button>
						<!-- <button class="btn" onclick="download(this)" value="1213">观看</button> -->
					</td>
					</tr>
				</c:forEach>
					
				</tbody>
			</table>
		</div>
	</body>
</html>
