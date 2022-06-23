<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload</title>
</head>
<body>
	
	<%
	
		request.setCharacterEncoding("utf-8");
		try {
			
			/*
		    
			# 파일 업로드를 수행하는 MultipartRequest 객체 생성 ( 핵심 역할 )
			
			[ 생성자의 인수 설명 ]
					
		    - 첫번째 인자는 폼에서 가져온 인자 값을 얻기 위해 request객체를 전달한다. 
			- 두번째 인자는 업로드 될 파일의 위치를 입력한다.
		    - 세번째 인자는 업로드한 모든 파일의 용량의 합의 최대치를 의미하며 최대 크기를 넘는경우 Exception이 발생한다.
		    - 네번째 인자는 한글 이름이 넘어올 경우 한글에 문제되지 않도록 인코딩을 지정한다.
			- 다섯번째 인자는 똑같은 파일을 업로드 할 경우 중복되지 않도록 파일이름을 변환해 주는 기능을 갖는다.
		
		 */
			String location = "C:\\Users\\15_web_csr\\git\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
		 		
				//파일의 업로드를 담당하는 코드
				//MultipartRequest  request, "위치" , "최대크기", "utf-8", "리네임정책"
			MultipartRequest multi = new MultipartRequest(request, location, 1024 * 1024 * 50, "utf-8", new DefaultFileRenamePolicy());
			
				
			/*
			multipart/form-data형식으로 전송 되었기 때문에 request.getParameter가 불가능하고
			MultipartRequest 객체의 getParamter메서드를 사용해야 한다.
			request.getParameter("userName"); 불가능 
			*/
			
			// String userName = request.getParameter("userName");
			String userName = multi.getParameter("userName");
				
			Enumeration files = multi.getFileNames(); // <input type="file">인 모든 엘리먼트를 반환
			
			if (files.hasMoreElements()) { // 다음 정보가 있으면
				String element 			= (String)files.nextElement(); 			// <input type="file"> 1개를 반환
				
				String filesystemName 	= multi.getFilesystemName(element); 	// 서버에 업로드 '된' 파일명을 반환
				String originalFileName = multi.getOriginalFileName(element); 	// 서버에 업로드 '한' 파일명을 반환
				String contentType 		= multi.getContentType(element);		// 서버에 업로드된 파일의 타입을 반환
				long length 			= multi.getFile(element).length();		// 서버에 업로드된 파일의 크기를 반환 (long 타입)
				
				out.println("userName : " 		  + userName		 + "<br>");
				out.println("element : " 		  + element 		 + "<br>");
				out.println("filesystemName : "   + filesystemName   + "<br>");
				out.println("originalFileName : " + originalFileName + "<br>");
				out.println("contentType : " 	  + contentType 	 + "<br>");
				out.println("length : " 		  + length 			 + "<br>");
				
			}

		} catch(Exception e) {
			e.printStackTrace();
		}
	
	%>
	
	
</body>
</html>