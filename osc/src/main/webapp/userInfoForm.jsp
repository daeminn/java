<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 빈즈 클래스 import -->
<%@ page import="member.model.memberBean" %>    
	<!-- DAO클래스는 useBean액션 -->
<jsp:useBean id="dao" class="member.model.memberDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 로그인한 회원의 상세정보</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<%
	//sessionID를 읽어서 문자열로 형 변환
	String id = session.getAttribute("sessionID").toString();

	//내 정보를 가져오는 메소드 실행
	//입력 파라미터 : id
	//return : memberBean객체
	memberBean member = dao.getUserInfo(id);
%>
</head>
<body>
<div id="wrap">
	<br><br>
	<b><font size="6" color="gray">내정보</font></b>
	<br><br><br>
		
	<table>
		<tr>
			<td id="title">아이디</td>
			<td><%=member.getId() %>
			</td>
		</tr>
		<tr>
			<td id="title">비밀번호</td>
			<td>****</td>
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
				<%=member.getEmail1() %>@<%=member.getEmail2() %>
			</td>
		</tr>	
		<tr>
			<td id="title">휴대전화</td>
			<td><%=member.getPhone() %></td>
		</tr>
		<tr>
			<td id="title">주소</td>
			<td><%=member.getAddress() %></td>
		</tr>
	</table>
	<br>
	<input type="button" value="회원정보변경" onclick="changeForm(0)">
	<input type="button" value="회원탈퇴" onclick="changeForm(1)">
	<input type="button" value="로그아웃" onclick="javascript:window.location='pro/LogoutPro.jsp';"></a>
</div>
</body>
<script>
	function changeForm(val) {
		if(val == "0") {
			location.href="mainForm.jsp?contentPage=modifyForm.jsp";
		} else if(val == "1") {
			location.href="mainForm.jsp?contentPage=deleteForm.jsp";
		}
	}
</script>
</html>