<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- 빈즈액션 정의 : bean클래스 -->
<jsp:useBean id="memberbean" class="member.model.memberBean"/>
<jsp:setProperty property="id" name="memberbean"/>
<jsp:setProperty property="password" name="memberbean"/>

<!-- 빈즈액션 정의 : dao클래스 -->
<jsp:useBean id="dao" class="member.model.memberDAO"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리하는 JSP</title>
<%
	//로그인 화면에서 입력된 아이디와 비밀번호 가져오기
	String id = memberbean.getId();
	String pw = memberbean.getPassword();
	
	//데이터베이스(DB)에서 아이디, 비밀번호가 맞는지 확인
	//입력 파라미터 : 아이디, 비밀번호
	//return: 아이디, 비밀번호 체크 결과
	int check = dao.loginCheck(id, pw);
	String msg = "";
	
	System.out.println("check : " + check);
	
	if(check == 1) { // 로그인 성공
		session.setAttribute("sessionID", id);
		msg = "../view/mainForm.jsp";
		
	} else if(check == 0) { // 비밀번호가 틀린경우
		msg = "../view/mainForm.jsp?contentPage=loginForm.jsp?msg=0";
	
	} else { // 아이디가 없는 경우 (회원등록이 안되어있는 경우)
		msg = "../view/mainForm.jsp?contentPage=loginForm.jsp?msg=-1";
	}
	
	// sendRedirect(String URL) : 해당 URL로 이동하는 내장객체
	// get방식으로 데이터 전달
	response.sendRedirect(msg);
%>
</head>
<body>

</body>
</html>