<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 화면</title>
<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/common_res.css">
<link href="./css/mainForm.css" rel="stylesheet" type="text/css">
<script src="./js/jquery-3.6.1.min.js"></script>
<script src="./js/loading.js"></script>
</head>
<body>
<%
//한글깨짐 방지 인코딩
request.setCharacterEncoding("utf-8");
	//mainForm화면을 호출하는 프로그램에서 contentPage파라미터를 받음
	String contentPage = request.getParameter("contentPage");
	
	if(contentPage == null) {
		contentPage = "firstView.jsp";
	}
%>
<div id="wrap">
	<div id="header">
		<!-- 헤더를 include함 -->
		<jsp:include page="header.jsp"/>
	</div>
	<div id="main">
		<!-- content page를 include함 -->
		<jsp:include page="<%=contentPage %>"/>
	</div>
</div>
</body>
</html>