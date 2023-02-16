<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- useBean액션을 사용해도 되지만 import 처리 -->
<%@ page import="member.model.memberBean" %>
<%@ page import="member.model.memberDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<%
	String id = session.getAttribute("sessionID").toString();

	/*인스턴스 생성*/
	memberDAO dao = new memberDAO();
	
	/* DAO클래스에서 한 건 상세조회하는 메소드 호출 */
	memberBean member = dao.getUserInfo(id);
	
%>
</head>
<body>
	<div id="wrap">
	<br><br>
	<b><font size="6" color="gray">회원정보 수정</font></b>
	<br><br><br>
	<form method="post" action="mainForm.jsp?contentPage=./pro/modifyPro.jsp" name="userInfo">
		<table>
			<tr>
			<td id="title">아이디</td>
			<td><%=member.getId() %></td>
		</tr>
		<tr>
			<td id="title">비밀번호</td>
			<td> 
				<input type="password" name="password" maxlength="50"
						value="<%=member.getPassword() %>">
			</td>
		</tr>
		<tr>
			<td id="title">이름</td>
			<td><%=member.getName() %></td>
		</tr>
		<tr>
			<td id="title">성별</td>
			<td><%=member.getGender() %></td>
		</tr>
		<tr>
			<td id="title">생일</td>
			<td>
				<%=member.getBirthyy() %>년
				<%=member.getBirthmm() %>월
				<%=member.getBirthdd() %>일
			</td>
		</tr>
		<tr>
			<td id="title">이메일</td>
			<td>
				<input type="text" name="email1" maxlength="50"
					value="<%=member.getEmail1() %>">@
				<select name="email2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>google.com</option>
				</select>
			</td>
		</tr>	
		<tr>
			<td id="title">휴대전화</td>
			<td> 
				<input type="text" name="phone"
					value="<%=member.getPhone() %>">
			</td>
		</tr>
		<tr>
			<td id="title">주소</td>
			<td><%=member.getAddress() %></td>
		</tr>
		</table>
		<br>
		<input type="submit" value="수정" >
		<input type="button" value="취소" onclick="history.go(-1)">
	</form>
</div>
</body>
</html>