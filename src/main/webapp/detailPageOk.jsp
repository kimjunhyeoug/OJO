<%@page import="com.ojo.service.PostImageService"%>
<%@page import="com.ojo.vo.PostimageVO"%>
<%@page import="com.ojo.dao.PostImageDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ojo.service.DetailService"%>
<%@page import="com.ojo.vo.PosttblVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String uploadDirectory = application.getRealPath("E:/uploadImage");
	String[] files = new File(uploadDirectory).list();
	
	//int postnum = Integer.parseInt(request.getParameter("postnum"));
	int postnum = 1;
	
	ArrayList<PostimageVO> images = PostImageService.getInstance().selectByImages(postnum);
	//out.println(images.size());
	//out.println(images);
	
	for(PostimageVO image : images) {
		
	}
%>
<%-- 
	<jsp:useBean id="vo" class="com.ojo.vo.PosttblVO">
		<jsp:setProperty property="*" name ="vo"/>
	</jsp:useBean>
	 --%>
<%
	PosttblVO vo = DetailService.getInstance().selectByContent(postnum);
	// out.println(vo);
	request.setAttribute("vo", vo);
	request.setAttribute("image", images);
	pageContext.forward("detailPage.jsp");
%>

</body>
</html>