<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 업로드</title>
</head>
<body>
	<form action="productUploadOK.jsp" method="post" enctype="multipart/form-data">
		상품명 : <input type="text" name="title"/><br/>
		상세설명 <br/>
		<textarea rows="10" style="resize: none;"></textarea><br/>
		파일1: <input type="file" name="file1"/><br/>
		파일2: <input type="file" name="file2"/><br/>
		파일3: <input type="file" name="file3"/><br/>
		<input type="submit" value="upload"/>
	</form>
</body>
</html>