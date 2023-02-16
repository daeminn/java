<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="osc.loginBean" /> 
<jsp:setProperty property="*" name="bean" />

<jsp:useBean id="dao" class="osc.loginDAO" />
<%
	//로그인 화면에서 입력한 아이디와 비밀번호를 가져온다.
	String id = bean.getId();
	String pw = bean.getPassword();
		
	//loginCheck(아이디, 비밀번호)메소드를 호출
	int check = dao.loginCheck(id, pw);
	System.out.println("check:" + check);
	//URL, 로그인 관련 전달 메세지
	String msg = "";
	
	if(check == 1) { //로그인 성공
		//세션에 아이디 저장
		session.setAttribute("sessionID", id);
		msg = "../index.jsp"; //메인화면 호출
	} else if (check == 0) { //비밀번호 틀린 경우
		msg = "../index.jsp?msg=0";
	} else { //회원가입이 안되어있는 경우
		msg = "../index.jsp?msg=-1";
	}
	
	//sendRedirect(String URL) : 해당 URL로 이동
	response.sendRedirect(msg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>