<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page import="com.ojo.service.PosttblService"%>
<%@page import="com.ojo.vo.PostimageVO"%>
<%@page import="com.ojo.dao.PosttblDAO"%>
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

	// String uploadDirectory = application.getRealPath("E:/uploadImage/");
	// String[] files = new File(uploadDirectory).list();
	// out.println(Arrays.toString(files));
	
	int postnum = (int)request.getAttribute("io");
	
	// int postnum = 1;
	out.println(postnum);
	
	ArrayList<PostimageVO> images = PosttblService.getInstance().selectByImages(postnum);
	
	//out.println(request.ContextPath());
	//out.println(images);
    	
	/* for(PostimageVO image : images) {
		out.println(image.getFilename());
		out.println(image.getFilerealname());
		
	} */
	
	// String[] files = new File("./images").list();
	/* for (int i=0; i<files.length; i++) {
		out.println(i + 1 + ". " + files[i] + "<br/>");
	} */
	
	
	PosttblVO vo = DetailService.getInstance().selectByContent(postnum);
	out.println(vo);
	out.println(images);
	request.setAttribute("vo", vo);
	request.setAttribute("images", images);
	// request.setAttribute("files", files);
	pageContext.forward("detailPage.jsp");
%>

</body>
</html>