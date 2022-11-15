<%@page import="java.util.ArrayList"%>
<%@page import="com.ojo.vo.CategoryVO"%>
<%@page import="com.ojo.vo.PosttblVO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.ojo.vo.PostimageVO"%>
<%@page import="com.ojo.service.PosttblService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	PosttblService service = PosttblService.getInstance();
	PosttblVO vo = new PosttblVO();
	PostimageVO io = new PostimageVO();

	MultipartRequest multipartRequest  = new MultipartRequest (
		request, application.getRealPath("./uploadImages/"),
		5 * 1024 * 1024 * 1024, "UTF-8",
		new DefaultFileRenamePolicy()
		);
	
	Enumeration filenames = multipartRequest.getFileNames();
	
	ArrayList<CategoryVO> category = service.selectByCategory();
	out.println(category);
	
	String title = multipartRequest.getParameter("title").trim();
	String postgu = multipartRequest.getParameter("postgu").trim();
	String postdong = multipartRequest.getParameter("postdong").trim();
	int price = Integer.parseInt(multipartRequest.getParameter("price"));
	String postcontent = multipartRequest.getParameter("postcontent").trim();
	String userid = multipartRequest.getParameter("userid").trim();
	vo.setTitle(title);
	vo.setPostgu(postgu);
	vo.setPostdong(postdong);
	vo.setPrice(price);
	vo.setPostcontent(postcontent);
	vo.setUserid(userid);
	
	service.upload(vo);

		while (filenames.hasMoreElements()) { // 업로드 할 파일이 있는 동안 반복한다.
			
			String parameter = (String) filenames.nextElement();
			
			String filename = multipartRequest.getOriginalFileName(parameter);
			String fileRealname = multipartRequest.getFilesystemName(parameter);
			
			if (filename == null) {
				continue;
			}
			
			File realFilename = new File("./uploadImages/" + fileRealname);
			long fileLength = realFilename.length();
			if (fileLength > 5 * 1024 * 1024) {
				out.println("<script>");
				out.println("alert('업로드 용량 초과')");
				out.println("</script>");
				realFilename.delete();
			} else if(!fileRealname.endsWith(".jpg") && !fileRealname.endsWith(".png") && !fileRealname.endsWith(".gif")) {
				out.println("<script>");
				out.println("alert('업로드할 수 있는 형식의 파일이 아닙니다.\\njpg 파일과 png 파일만 가능합니다.')");
				out.println("</script>");
				realFilename.delete();
			} else {
				// out.println("<script>");
				// out.println("alert('상품등록 완료.')");
				// out.println("</script>");
				
				io.setFilename(filename);
				io.setFilerealname(fileRealname);
				io.setPostnum(vo.getPostnum());
				//out.println(vo.toString());
				service.uploadImage(io);
			}
			
		}
		
		request.setAttribute("category", category);
		request.setAttribute("vo", vo);
		pageContext.forward("detailPage.jsp");
		
		/* 
		out.println("<script>");
		out.println("location.href='detail.jsp'");
		out.println("</script>"); */ 
%>
</body>
</html>