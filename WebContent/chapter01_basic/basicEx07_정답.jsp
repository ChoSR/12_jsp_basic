<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<%
		Random ran = new Random();
	
		int r = ran.nextInt(3);
		
		if(r == 0){				
	%>
		
		<select>
			<option>HTML5</option>
			<option>CSS3</option>
			<option>JAVASCRIPT</option>
		</select>
	
	<%
		} else if (r == 1){
			
	%>
		<input type = "checkbox" name = "checkLanguage" value = "HTML5">HTML5 &emsp;
		<input type = "checkbox" name = "checkLanguage" value = "CSS3">CSS3 &emsp;
		<input type = "checkbox" name = "checkLanguage" value = "JAVASCRIPT">JAVASCRIPT &emsp;
	<%
		} else if (r == 2){
	%>
	
		<input type = "radio" name = "radioLanguage" value = "HTML5">HTML5 &emsp;
		<input type = "radio" name = "radioLanguage" value = "CSS3">CSS3 &emsp;
		<input type = "radio" name = "radioLanguage" value = "JAVASCRIPT">JAVASCRIPT &emsp;
	<% 
		}
	
	%>		
</body>
</html>