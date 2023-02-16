<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.memberBean" %>
<%@ page import="member.model.memberDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정처리 JSP</title>
<!-- useBean액션으로 처리 -->
<jsp:useBean id="member" class="member.model.memberBean" />
<jsp:useBean id="dao" class="member.model.memberDAO" />
<jsp:setProperty property="*" name="member" />
<%
	String id = (String)session.getAttribute("sessionID");
	member.setId(id);
	/*update처리 메소드 호출
	  입력파라미터 : memberBean객체
	*/
	boolean chk = dao.updateMember(member);
%>
</head>
<body>
	<br><br><br>
	<% 
		if(chk) {
	%>	
		<font size="5" color="gray">회원 정보가 수정되었습니다.</font>
		<br><br><br>
		<input type="button" value="메인으로" onclick="javascript:window.location='mainForm.jsp'"/>
	<%
		} else {
	%>
		
	<%			
		}
	%>
	
</body>
</html>