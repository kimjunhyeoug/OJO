<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.ojo.vo.PostimageVO"%>
<%@page import="com.ojo.service.PostImageService"%>
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
%>
	<jsp:useBean id="vo" class="com.ojo.vo.PostimageVO">
		<jsp:setProperty property="*" name="vo"/>
	</jsp:useBean>
<%
	PostImageService.getInstance().insert(vo);
	
	MultipartRequest multipartRequest  = new MultipartRequest (
			request, "E:/uploadImage/", 
			5 * 1024 * 1024 * 1024, "UTF-8",
			new DefaultFileRenamePolicy()
			);
	
	Enumeration filenames = multipartRequest.getFileNames();
	
	while (filenames.hasMoreElements()) { // 업로드 할 파일이 있는 동안 반복한다.
		
		// nextElement(): Enumeration 인터페이스 객체에 저장된 다음에 처리할 데이터를 얻어온다.
		String parameter = (String) filenames.nextElement();
		
		String filename = multipartRequest.getOriginalFileName(parameter);
		String fileRealname = multipartRequest.getFilesystemName(parameter);
		// 업로드 할 파일이 넘어오지 않았으면 다음 파일을 처리한다. => 남은 반복문을 실행할 필요없다.
		if (filename == null) {
			continue;
		}
		// out.println("원본 파일 이름: " + filename + ", 실제 업로드된 파일 이름: " + fileRealname + "<br/>");
		
		// 업로드 제한
		File realFilename = new File("E:/uploadImage/" + fileRealname);
		long fileLength = realFilename.length();
		// out.println("파일 크기: " + fileLength + "<br/>");
		if (fileLength > 5 * 1024 * 1024) {
			out.println("<script>");
			out.println("alert('업로드 용량 초과')");
			out.println("</script>");
			realFilename.delete();
		} else if(!fileRealname.endsWith(".zip") && !fileRealname.endsWith(".txt")) {
			out.println("<script>");
			out.println("alert('업로드할 수 있는 형식의 파일이 아닙니다.\\nzip 파일과 txt 파일만 가능합니다.')");
			out.println("</script>");
			realFilename.delete();
		} else {
						
			// filename과 fileRealname을 테이블에 저장하는 메소드를 호출한다.
	
		}
	}

	out.println("<script>");
	out.println("location.href='index.jsp'");
	out.println("</script>");
	
%>
</body>
</html>