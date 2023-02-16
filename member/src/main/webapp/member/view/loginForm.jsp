<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/login.css" type="text/css">
</head>
<body>
<div id="wrap">
	<br><br>
	<b><font size="6" color="#a4aaa7">로그인 폼</font></b>
	<br><br>
	<form name="loginInfo" method="post" action="../pro/loginPro.jsp">
		<table>
			<tr>
				<td bgcolor="skyblue" id="title">아이디</td>
				<td><input type="text" name="id" maxlength="50"></td>
			</tr>
			<tr>
				<td bgcolor="skyblue" id="title">비밀번호</td>
				<td><input type="password" name="password" maxlength="50"></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="로그인">
		<input type="button" value="취소">
	</form>
	<%
		String msg = request.getParameter("msg");
	if(msg != null && msg.equals("0")) { // 비밀번호 오류일 때
		out.println("<br>");
		out.println("<font color='red' size='5'>비밀번호 오류</font>");
	} else if(msg != null && msg.equals("-1")) { // 회원가입이 안된 경우 (아이디가 없는 경우)
		out.println("<br>");
		out.println("<font color='red' size='5'>아이디가 존재하지 않습니다.</font>");
	}
	%>
</div>
</body>
</html>