<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="member.model.memberDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<%
	String id = request.getParameter("id");
	
	int chk = dao.idCheck(id); //1: 아이디가 있음(사용불가능) -1: 아이디가 없음(사용가능)
	if(chk ==1) {
		out.println("<br>");
		out.println("<font color='red' size='2'>사용 불가능한 아이디 입니다.(이미 사용중)</font>");
%>
	<script>
		window.onload = function(){
			document.getElementById("useBtn").style.visibility="hidden";
		}
	</script>
<%
	} else {
		out.println("<br>");
		out.println("<font color='red' size='2'>사용 가능한 아이디 입니다.</font>");
%>
		<script>
			window.onload = function(){
				document.getElementById("useBtn").style.visibility="visible";
			}
		</script>
<%
	}
%>
<style>
	#wrap {
		width: 490px; text-align: center; margin: auto;
	}
	#chk {text-aling: center;}
	#cancelBtn {visibility: visible;}
	#useBtn {visibility: hidden;}
	body{text-align: center;}
</style>
<script>
	//중복확인 버튼 클릭시 아이디 중복 체크 메소드를 실행시키는 함수
	function loadIdCheck() {
		document.frm1.action="idCheckPro.jsp";
		document.frm1.submit();
		
	}
	//사용하기 버튼 클릭시 부모창으로 값을 전달하는 함수
	function sendCheckValue() {
		//회원가입 화면으로 id입력란에 값을 전달
		opener.document.userInfo.id.value = document.getElementById("userId").value;
		self.close();
	}
</script>
</head>
<body>
<div id="wrap">
	<br>
	<b><font size="4" color="gray">아이디 중복체크</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
		<form id="checkForm" name="frm1">
			<input type="text" name="id" id="userId" value="<%=id %>">
			<input type="button" value="중복확인" onclick="loadIdCheck()">
		</form>
		<div id="msg"></div>
		<br>
		<input id="cancelBtn" type="button" value="취소" onclick="window.close()">
		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
	</div>
</div>
</body>
</html>