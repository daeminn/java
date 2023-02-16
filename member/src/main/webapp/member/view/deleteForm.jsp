<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 화면</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<br><br><br>
<b><font size="6" color="gray">회원탈퇴</font></b>
<br><br><br>
<form name="deleteForm" method="post" action="mainForm.jsp?contentPage=../pro/deletePro.jsp">
	<table>
		<tr>
			<td bgcolor="skyblue">비밀번호</td>
			<td>
				<input type="password" name="password" maxlength="50">
			</td>
		</tr>
	</table>
	<br>
	<input type="submit" value="탈퇴">
	<input type="button" value="취소" onclick="javascript:window.location='mainForm.jsp'">
</form>
</body>
</html>