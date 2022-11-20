<%@page import="com.ojo.vo.AddressVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ojo.service.AddressService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 업로드</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="./js/productUpload.js" defer="defer"></script>
<link rel="stylesheet" href="./css/productUpload.css">
</head>
<body>
<%
	ArrayList<AddressVO> guList = AddressService.getInstance().selectGu();
	//out.println(guList);

%>

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
						<select id="postgu" name="postgu" style="width: 80px" onchange="select()">
							<option>선택</option>
							<%
							for(AddressVO gulist : guList){
							%>
							<option><%=gulist.getGu() %> </option>
							<%	
							}
							 %>
							<%-- <c:forEach var="gu" items="${guList}">
								<option>${gu.gu} </option>
							</c:forEach> --%>
							
						</select>
						
						<select id="postdong" name="postdong" style="width: 80px">
						<option>선택</option>		
						
						</select>
					</td>
					<td alisgn="center" width="80px"> 카테고리</td>
					<td align="center" width="170">
						<select name="category" style="width: 95%">
							<option>선택</option>
							<option>가전</option>
							<option>생활용품</option>
							<option>식품</option>
							<option>의류</option>
							<option>기타</option>
						
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
				<input type="type" name="userid"/>
		</form>
	
	</div>
</body>
</html>