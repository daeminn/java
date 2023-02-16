<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단영역</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>
<div id="wrap">
	<p>
		<button class="btn btn-success" onclick="changeView(0)">HOME</button>
		<!-- 로그인이 안되었을 경우에는 로그인, 회원가입 버튼을 보여준다 -->
<%
	if(session.getAttribute("sessionID") == null) {
%>
		<button id="loginBtn" class="btn btn-primary" onclick="changeView(1)">로그인</button>
		<button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">회원가입</button>
<%		
	} else {
%>		
		<!-- 로그인이 되었을 경우에는 로그아웃, 내정보 버튼을 보여준다 -->
		<button id="logoutBtn" class="btn btn-primary" onclick="changeView(3)">로그아웃</button>
		<button id="updateBtn" class="btn btn-primary" onclick="changeView(4)">내정보</button>
<%		
	}
%>
		<button id="memberViewBtn" class="btn btn-warning" onclick="changeView(5)">회원정보</button>
</div>
</body>
<script>
	function changeView(value) {
		if(value == "0") { //HOME 버튼 클릭 시
			location.href="mainForm.jsp";
		} else if(value == "1") { //로그인 버튼 클릭 시
			location.href="mainForm.jsp?contentPage=loginForm.jsp";
		} else if(value == "2") { //회원가입 버튼 클릭 시
			location.href="mainForm.jsp?contentPage=JoinForm.jsp";
		} else if(value == "3") { //로그아웃 버튼 클릭 시
			location.href="../pro/logoutPro.jsp";
		} else if(value == "4") { //내정보 버튼 클릭 시
			location.href="mainForm.jsp?contentPage=userInfoForm.jsp";
		}
	}
</script>
</html>