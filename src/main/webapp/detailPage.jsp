<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script type="text/javascript" src="./js/detailPage.js" defer="defer"></script>
<link rel="stylesheet" href="./css/detail.css">
 
</head>
<body>

	<!-- 상단 메뉴 -->
	<div class="menu">
		
	</div>
	
	<!-- <h2 style="text-align: center">상품 상세 이미지</h2> -->
	
	<!-- 상품 이미지 슬라이더 -->
	<div class="container">
		<div class="mySlides">
			<div class="numbertext"> 1/6</div>
			<img src="./images/img1.jpg" style="width: 100%; height: 400px">
		</div>
	

		<div class="mySlides">
			<div class="numbertext">2 / 6</div>
			<img src="./images/img2.jpg" style="width: 100%; height: 400px">
		</div>

		<div class="mySlides">
			<div class="numbertext">3 / 6</div>
			<img src="./images/img3.jpg" style="width: 100%; height: 400px">
		</div>

		<div class="mySlides">
			<div class="numbertext">4 / 6</div>
			<img src="./images/img4.jpg" style="width: 100%; height: 400px">
		</div>

		<div class="mySlides">
			<div class="numbertext">5 / 6</div>
			<img src="./images/img5.jpg" style="width: 100%; height: 400px">
		</div>

		<div class="mySlides">
			<div class="numbertext">6 / 6</div>
			<img src="./images/img6.jpg" style="width: 100%; height: 400px">
		</div>

		<a class="prev" onclick="plusSlides(-1)"><img alt="���댄��" src="./images/l_arrow.png" width="20"></a> 
		<a class="next" onclick="plusSlides(1)"><img alt="���댄��" src="./images/r_arrow.png" width="20"></a>
		
		
		<div class="caption-container">
			<p id="caption"></p>
		</div>
 		
 		상품 이미지 썸네일
		<div class="row">
			<div class="column">
				<img class="demo cursor" src="./images/img1.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(1)" alt="The Woods">
			</div>
			<div class="column">
				<img class="demo cursor" src="./images/img2.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(2)" alt="Cinque Terre">
			</div>
			<div class="column">
				<img class="demo cursor" src="./images/img3.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(3)" alt="Mountains and fjords">
			</div>
			<div class="column">
				<img class="demo cursor" src="./images/img4.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(4)" alt="Northern Lights">
			</div>
			<div class="column">
				<img class="demo cursor" src="./images/img5.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(5)" alt="Nature and sunrise">
			</div>
			<div class="column">
				<img class="demo cursor" src="./images/img6.jpg" style="width: 100%; height: 66px;"
					onclick="currentSlide(6)" alt="Snowy Mountains">
			</div>
		</div>
	</div>
	
	<!-- 상품 상세 설명 -->
	<div class="product">
		<div class="caption-container">
			<p id="caption">상품정보</p>
		</div>
		
		제품 상세 설명<br/>
		제품명 : ${vo.title} <br/>
		가격 : ${vo.price}<br/>
		
		제품 특징 및 설명 <br/>
		${vo.postcontent}
		
		
		
		
		
	
	</div>
</body>

</html>