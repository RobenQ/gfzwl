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
		<link rel="stylesheet" href="../css/admin/adminHeader.css" />
		<script src="../js/adminIndex.js"></script>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript">
			function uploadFile() {
		    var fd = new FormData();
		    var index = document.getElementById('select').selectedIndex;
		    var select = document.getElementById('select').options[index].text;
		    fd.append("select", select);
		    fd.append("file", document.getElementById('file').files[0]);
		    var xhr = new XMLHttpRequest();
		    xhr.upload.addEventListener("progress", uploadProgress, false);
		    xhr.addEventListener("load", uploadComplete, false);
		    xhr.addEventListener("error", uploadFailed, false);
		    xhr.addEventListener("abort", uploadCanceled, false);
		    xhr.open("POST", "${pageContext.request.contextPath }/admin/uploade5_1");//修改成自己的接口
		    xhr.send(fd);
		}
		
		function uploadProgress(evt) {
		    if (evt.lengthComputable) {
		        var percent = Math.round(evt.loaded * 100 / evt.total);
		        
		        document.getElementById('progress').innerHTML = percent.toFixed(2) + '%';
		        document.getElementById('progress').style.width = percent.toFixed(2) + '%';
		    }
		    else {
		        document.getElementById('progress').innerHTML = 'unable to compute';
		    }
		}
		function uploadComplete(evt) {
		    /* 服务器端返回响应时候触发event事件*/
		    // document.getElementById('result').innerHTML = evt.target.responseText;
			alert("文件上传成功！");
			
		}
		function uploadFailed(evt) {
		    alert("出现错误，文件上传失败！");
		}
		function uploadCanceled(evt) {
		    alert("The upload has been canceled by the user or the browser dropped the connection.");
		}
		</script>
	</head>
	<body>
		<iframe src="/gfzwl/admin/to5_1_1a" width="80%" height="600px" style="border: none; border-radius: 10px;">
			
		</iframe>
		<div style="width: 20%; height: 580px; border: none; border-radius: 10px; float: right;">
			<!-- <select style="margin-top: 200px; margin-left: 70px; width: 150px; height: 30px;">
				<option value="0">所属章节（全部）</option>
				<option value="1">第一章</option>
				<option value="2">第二章</option>
				<option value="3">第三章</option>
				<option value="3">第四章</option>
				<option value="3">第五章</option>
				<option value="3">第六章</option>
			</select> -->
			<form method="post" action="${pageContext.request.contextPath }/admin/uploade5_1"  enctype="multipart/form-data">
				<select  name="select" id="select" style="margin-top: 200px; margin-left: 70px; width: 150px; height: 30px;">
					<option value="第一章">第一章</option>
					<option value="第二章">第二章</option>
					<option value="第三章">第三章</option>
					<option value="第四章">第四章</option>
					<option value="第五章">第五章</option>
					<option value="第六章">第六章</option>
					<option value="第七章">第七章</option>
					<option value="第八章">第八章</option>
				</select>
				<input type="file" id="file"  name="file" style="margin-top: 30px; margin-left: 70px; width: 150px; height: 30px;" />
				<input type="button" style="margin-top: 30px; margin-left: 70px; width: 150px; height: 30px;
					border: none; border-radius: 10px;background: #FF6201; color: wheat;font-size: 18px;" value="添加资源"
					onclick="uploadFile()"/>
			</form>
			<div class='container' style="width: 150px; height: 20px; background-color: gray;margin-top: 30px;
				margin-left: 70px; border-radius: 10px;">
				<span id="progress" style="height: 20px; background-color: orange;display: inline-block;border-radius: 10px;"></span>
			</div>
		</div>
	</body>
</html>