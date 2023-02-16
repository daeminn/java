<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<style>
	#wrap {
		width: 800px;
		margin: 0 auto;
	}
	#header {
		text-align: center;
		width: 800px; height: 150px;
		background-color: #92ffff;
		padding: 60px 0px;
	}
	#main {
		float: left; vertical-align: middle;
		width: 800px; height: 500px;
		background-color: #ffca6c;
		text-align: center;
	}
	#footer {
		clear: left;
		width: 800px; height: 60px;
		background-color: #7dfe74;
		text-align: center;
	}
</style>
</head>
<body>
<%	//한글깨짐 방지 인코딩
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
	<div id="footer">하단</div>
</div>
</body>
</html>