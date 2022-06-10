<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process</title>
</head>
<body>
	 
	 <%
	 
	 	request.setCharacterEncoding("utf-8");	
	 
	 	String userName 	= request.getParameter("userName");
	 	String userContact 	= request.getParameter("userContact");
	 	String temp 		= request.getParameter("userAge");
	 	
	 	int userAge = Integer.parseInt(temp); 		// 문자열을 숫자로 형변환
	 	userAge--;
	 	
	 	System.out.println("=================");
	 	System.out.println("userName : " 	+ userName);
	 	System.out.println("userContact : " + userContact);
	 	System.out.println("userAge : " 	+ userAge);
	 	System.out.println("=================");
	 	
	 %>
	 
	 <script>
	 	alert("전송 완료!!");
	 </script>
	 
</body>
</html>