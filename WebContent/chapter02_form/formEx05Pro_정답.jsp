<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int myAnswer = Integer.parseInt(request.getParameter("answer"));
		int mul = num1 * num2;
		
		String result = "";
		
		if(mul == myAnswer) result = "정답";
		else 				result = "땡";
	
	%>
	
	<h2><%=num1 %> X <%=num2 %> = <%=myAnswer %></h2><br>
	<h3>결과 : <%=result %></h3>
	
</body>
</html>