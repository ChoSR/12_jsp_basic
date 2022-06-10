<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>
	
	<%
		for(int i = 2; i <= 9; i++){
	%>
			<table border = "1">
				<tr>
					<th colspan="2"><%=i %>단</th>
				</tr>
	<%
			for(int j = 1; j<= 9; j++){
	%>
				<tr align="center">	
					<td><%=i %> *<%=j %></td>
					<td><%=i * j %></td>
				</tr>
	<%
			}
	%>
			</table>
	<%
		}
	%>
	
</body>
</html>