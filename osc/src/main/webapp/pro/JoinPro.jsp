<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리JSP</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<!-- 1. 파라미터 값으로 데이터 처리 -->
<!-- 2. 빈즈 클래스(객체) 적용 -->
<%
	//한글깨짐 방지 인코딩
	request.setCharacterEncoding("utf-8");
	//getParameter()를 이용해서 넘겨진 파라미터 값을 가져온다.
	//name = 에 지정된 값과 동일한 값
	//파라미터로 받는 데이터는 String타입
	/* String id = request.getParameter("id");
	String password = request.getParameter("password");	
	String name = request.getParameter("name");	
	
	//성별의 경우 파라미터 이름이 둘다 gender로 동일하므로 배열로 받음 => checkbox는 getParameterValues로 받아야함
	String[] gender = request.getParameterValues("gender");
	
	String birthyy = request.getParameter("birthyy");
	String birthmm = request.getParameter("birthmm");
	String birthdd = request.getParameter("birthdd");
	
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");

	String phone = request.getParameter("phone");
	String address = request.getParameter("address"); */
	
	
%>
<!-- 자바빈 관련 액션태그 -->
<jsp:useBean id="b" class="member.model.memberBean"/>
<jsp:setProperty name="b" property="*"/>

<!-- DAO(Data Access Object)빈즈 관련 액션 정의 -->
<jsp:useBean id="dao" class="member.model.memberDAO" />

<%
	//member테이블에 입력한 데이터를 저장
	dao.insertMember(b);
%>

<div id="wrap">
<br><br>
<b><font size="5" color="gray">회원가입 정보를 확인하세요</font></b>
<br><br>
<font color="blue"><%=b.getId() %></font>님 가입을 축하드립니다.
<br><br>
<table>
	<tr>
		<td id="title">아이디</td>
		<td><%=b.getId() %></td>
	</tr>
	<tr>
		<td id="title">비밀번호</td>
		<td><%=b.getPassword() %></td>
	</tr>
	<tr>
		<td id="title">이름</td>
		<td><%=b.getName() %></td>
	</tr>
	<tr>
		<td id="title">성별</td>
		<td><%=b.getGender() %></td>
	</tr>
	<tr>
		<td id="title">생일</td>
		<td><%=b.getBirthyy() %>년
			<%=b.getBirthmm() %>월
			<%=b.getBirthdd() %>일
		</td>
	</tr>
	<tr>
		<td id="title">이메일</td>
		<td>
			<%=b.getEmail1() %>@<%=b.getEmail2() %>
		</td>
	</tr>	
	<tr>
		<td id="title">휴대전화</td>
		<td><%=b.getPhone() %></td>
	</tr>		
	<tr>
		<td id="title">주소</td>
		<td><%=b.getAddress() %></td>
	</tr>
</table>
<br>
<input type="button" value="확인" onclick="location.href='./index.jsp'"/>
</div>
</body>
</html>