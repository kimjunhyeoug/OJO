<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 업로드</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=36a0fe67ad31dba87c833fa34314e92c"></script>
<script type="text/javascript" src="./js/prodcutUpload.js" defer="defer"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<link rel="stylesheet" href="./css/productUpload.css">
</head>
<body>
	<div class="menu">
		
	</div>

	<div class="table">
	
		<form action="prodcutUploadOk.jsp" method="post" enctype="multipart/form-data">
			<table border="1" cellpadding="5" cellspacing="0" width="500px">
				<tr>
					<td align="center" width="100px">
						상품명
					</td>
					<td colspan="3">
						<input type="text" name="title" style="width: 98%"/>
					</td>
				</tr>
				<tr>
					<td align="center">구</td>
					<td width="150px">
						<select name="postgu">
							<option>종로구</option>
							<option>중구</option>
							<option>동대문구</option>
							<option>서대문구</option>
						</select>
					</td>
					<td align="center" width="100px">동</td>
					<td width="150px">
						<select name="postdong">
							<option>관철동</option>
							<option>익산동</option>
							<option>명동</option>
							<option>필동</option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">가격</td>
					<td>
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
				<input type="text" name="userid"/>
		</form>
	
	</div>
</body>
</html>