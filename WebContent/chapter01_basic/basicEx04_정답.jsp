<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!--  
		
		// 문제 1) 1부터 5까지 출력
		// 정답 1) 1 2 3 4 5
		

		// 문제 2) 1부터 10까지 반복해 5~9까지 출력
		// 정답 2) 5 6 7 8 9
		
		
		// 문제 3) 10부터 1까지 반복해 6~3까지 출력
		// 정답 3) 6 5 4 3
		

	-->
	
	<!-- 1번 -->
	<%
		for(int i = 1; i <= 5; i++){
	%>
		<%=i %>	
	<%
		}
	%>			
	
	<hr>
	
	<!-- 2번 -->
	<%
		for(int i = 1; i <= 10; i++){
			if(i >= 5 && i < 10){				
	%>
		<%=i %>
	<%
			}
		}
	%>	
	
	<hr>
	<!-- 3번 -->
	
	<%
		for(int i = 10; i > 0; i--){
			if (i <= 6 && i >= 3){
	%>
		<%=i %>
	<%
			}
		}
	%>
	
</body>
</html>




















