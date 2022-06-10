<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제 정답</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		String id 	= request.getParameter("id");
		String pw 	= request.getParameter("pw");
		
		String result= "로그인 실패..";
		
		if (dbId.equals(id) && dbPw.equals(pw)) result = "로그인 성공!"; 
	%>
	
	<h4>id : <%=id %></h4>
	<h4>pw : <%=pw %></h4> <br>
	
	<h3>결과 : <%=result %></h3>
	

</body>
</html>