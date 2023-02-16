<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	session.invalidate(); // 세션의 모든 정보를 삭제하는 메소드 
	response.sendRedirect("../view/mainForm.jsp"); // 메인화면으로 돌아간다.
%>
<body>

</body>
</html>