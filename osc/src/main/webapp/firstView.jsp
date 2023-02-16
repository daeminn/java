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
	<img src="./images/logo.png">
	<br><br><br>
	<b><font size="5" color="gray">회원가입을 진심으로 환영합니다.</font></b>
	<br><br><br>
	<button id="joinBtn" class="btn btn-primary" onclick="changeView(2)">회원가입</button>
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