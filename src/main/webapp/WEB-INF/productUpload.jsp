<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>제품 업로드</title>
</head>
<body>
	<form action="productUploadOK.jsp" method="post" enctype="multipart/form-data">
		<input type="file" name="filename"/><br/>
		<input type="submit" value="파일전송"/>
</body>
</html>