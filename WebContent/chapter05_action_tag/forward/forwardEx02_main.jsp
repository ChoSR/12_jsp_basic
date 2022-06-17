<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>

	 
	 <!-- html -->
	 <%-- <jsp:forward page="forwardEx01_target.jsp"></jsp:forward> --%>
	 
	 <!-- java -->
	 <%
	 	String pdCd = "0x002";
	 	String pdNm = "mouse";
	 	
	 	//response.sendRedirect("forwardEx02_target.jsp?pdCd=" + pdCd + "&pdNm=" + pdNm);
	 	
	 	String url = "forwardEx02_target.jsp";
	 		url += "?pdCd=" + pdCd;
	 		url += "&pdNm=" + pdNm;
	 	
	 	response.sendRedirect(url);
	 	
	 	
	 %>
	 
	 <!-- javascript -->
	 <script>
	 	/*
	 	var pdCd = "0x001";
	 	var pdNm = "keyboard";
	 	
	 	//location.href = "forwardEx02_target.jsp?pdCd=" + pdCd + "&pdNm=" + pdNm;
	 	var url = "forwardEx02_target.jsp";
	 		url += "?pdCd=" + pdCd;
	 		url += "&pdNm=" + pdNm;
	 	
	 	location.href = url;
	 	*/
	 </script>
	 
	
</body>
</html>