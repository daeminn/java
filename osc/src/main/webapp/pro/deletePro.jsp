<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.memberBean" %>
<%@ page import="member.model.memberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴 처리</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("sessionID");
	String pw = request.getParameter("password");
	
	// 객체 생성
	memberDAO dao = new memberDAO();
	//회원정보를 삭제하는 메소드
	//입력파라미터 : id, pw
	//return : 삭제 성공여부 check값 1: -> 성공 0:비밀번호가 틀림
	int check = dao.deleteMember(id, pw);
	if (check == 1) {
		session.invalidate(); // 삭제성공이면 세션정보를 삭제한다.
%>
	<br><br><br><br>
	<b><font size="4" color="gray">회원정보가 삭제 되었습니다.</font></b>
	<br><br><br><br>
	<input type="button" value="확인" onclick="javascript:window.location = 'index.jsp'">
<%		
	} else { //비밀번호가 틀린 경우 (check != 1)
%>
	<script>
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script>
<%		
	}
%>
</body>
</html>