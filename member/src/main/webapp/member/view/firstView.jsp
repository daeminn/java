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
if(session.getAttribute("sessionID") == null){
%>
	<br><br><br><br>
	<b><font size="5" color="gray">첫화면</font></b>
	<br><br><br><br>
	<img src="../img/welcome.png">
	<br><br><br><br>
<%
	} else {
%>
	<br><br><br><br>
	<font size="5" color="skyblue"><%=session.getAttribute("sessionID") %></font>
	<font size="3">님 환영합니다.</font>
	<br><br><br><br>
<%		
	}
%>
</body>
</html>