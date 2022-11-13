<%@page import="com.ojo.vo.PosttblVO"%>
<%@page import="com.ojo.service.TestService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="vo" class="com.ojo.vo.PosttblVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>
	
<%
	TestService service = TestService.getInstance();
	PosttblVO origin = service.selectByContent(vo.getPostnum());
	out.println(origin);
	request.setAttribute("vo", vo);
	pageContext.forward("test.jsp");

%>

</body>
</html>