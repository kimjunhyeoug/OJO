<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 업로드</title>
<script type="text/javascript" src="./js/prodcutUpload.js" defer="defer"></script>
<link rel="stylesheet" href="./css/productUpload.css">
</head>
<body>
	
	<div class="menu">
		
	</div>

	<div class="table">
	
		<form action="prodcutUploadOk.jsp" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="5" cellspacing="0" width="500px">
				<tr>
					<td align="center" width="80px">
						상품명
					</td>
					<td colspan="3">
						<input type="text" name="title" style="width: 98%"/>
					</td>
				</tr>
				<tr>
					<td align="center">주소</td>
					<td align="center" width="170px">
						<select name="postgu" style="width: 80px">
							<option>종로구</option>
							<option>중구</option>
							<option>동대문구</option>
							<option>서대문구</option>
						</select>
						<select name="postdong" style="width: 80px">
							<option>관철동</option>
							<option>익산동</option>
							<option>명동</option>
							<option>필동</option>
						</select>
					</td>
					<td align="center" width="80px"> 카테고리</td>
					<td align="center" width="170">
						<select name="category" style="width: 95%">
							<option> == 선택하세요 ==</option>
							<option>가전</option>
							<option>생활용품</option>
							<option>식품</option>
							<option>의류</option>
							<option>기타</option>
							<%-- 
							<c:forEach var="category" items="${category.category}">
								<option>${category.category}</option>
							</c:forEach>
							 --%>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">가격</td>
					<td align="center">
						<input type="text" name="price" />
					</td>
					<td align="center">거래완료</td>
					<td>
						<input type="checkbox" value="0" name="is_trade">
				</tr>
				<tr>
					<td colspan="4">상세설명</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<textarea id="content" rows="10"  name="postcontent" style="width: 98%; resize: none;"></textarea><br/>
						
					</td>
				</tr>
				<tr>
					<td>파일1</td>
					<td colspan="3">
						<input type="file" name="file1"/>
					</td>
				</tr>
				<tr>
					<td>파일2</td>
					<td colspan="3">
						<input type="file" name="file2"/>
					</td>
				</tr>
				<tr>
					<td>파일3</td>
					<td colspan="3">
						<input type="file" name="file3"/>
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center">
						<input type="submit" value="상품등록"/>
						<input type="reset" value="다시쓰기"/>
						<input type="button" value="돌아가기" onclick="history.back()"/>
					</td>
				</tr>
				<!-- <tr>
					<td colspan="4">
						<div id="map" style="width:500px;height:400px;"></div>
							
					</td>
				</tr> -->
				
			</table>
				<input type="hidden" name="userid"/>
		</form>
	
	</div>
</body>
</html>