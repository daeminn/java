<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script>
	window.onload = function() {
		//생일의 년도를 가져오는 작업
		let frm = document.userInfo;
		let date = new Date();
		let year = date.getFullYear(); //현재 년도를 가져오는 메소드
		for(let i = 1960; i<=year; i++) {
			frm.birthyy.add(new Option(i, i));
		}		
	}
	//필수 입력 정보를 체크하는 함수
	function checkValue() {
		if(!document.userInfo.id.value) {
			alert("아이디를 입력하세요");
			document.userInfo.id.focus();
			return false;
		}
		if(!document.userInfo.password.value) {
			alert("비밀번호를 입력하세요");
			document.userInfo.password.focus();
			return false;
		}
		if(document.userInfo.password.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력 하세요");
			return false;
		}
		return true;
	}
	//우편번호 검색화면을 OPEN하는 함수
	function zipSearch() {
		url = "../pro/zipSearch.jsp?search=n";
		//window.open(url: 새 창에 보여질 주소, zipCodeSearch : 열릴 창의 임의의 이름, 속성 지정)
		window.open(url, "zipCodeSearch", "width=500, height=300, scrollbars=yes");
	}
	//아이디 중복확인 버튼을 click 했을 때 실행 되는 함수
	function openIdCheck() {
		let id = document.userInfo.id.value;
		url = "../pro/idCheckPro.jsp?id=" + id;
		//window.open(url: 새 창에 보여질 주소, idCheckForm : 열릴 창의 임의의 이름, 속성 지정)
		window.open(url, "idCheckForm", "width=800, height=400, resizeable=no, scrollbar=no");
	}
</script>
</head>
<body>
<div id="wrap">
	<br><br>
	<b><font size="6" color="gray">회원가입</font></b>
	<br><br><br>
	<!-- onsubmit액션이 발생하면 checkValue()함수가 실행이 되고 함수에서 true값을 리턴 받았을 때 action이 실행된다<!--  -->
	<form method="post" action="mainForm.jsp?contentPage=../pro/JoinPro.jsp" name="userInfo" onsubmit="return checkValue()">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" name="id" maxlength="20">
					<input type="button" value="중복확인" onclick="openIdCheck()">
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td>
					<input type="password" name="password" maxlength="15">
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호 확인</td>
				<td>
					<input type="password" name="passwordcheck" maxlength="15">
				</td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td>
					<input type="text" name="name" maxlength="40">
				</td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td>
					<input type="radio" name="gender" value="남" checked>남
					<input type="radio" name="gender" value="여">여
				</td>
			</tr>
			<tr>
				<td id="title">생일</td>
				<td>
					<!-- <input type="text" name="birth" maxlength="4" placeholder="년(4자)" size="6"> -->
					<select name="birthyy">
						<option value="#">년도선택</option>
					</select>
					<select name="birthmm">
						<option value="">월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
				</td>
			</tr>
			<tr>
				<td id="title">이메일</td>
				<td>
					<input type="text" name="email1" maxlength="30"> @
					<select name="email2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>google.com</option>
						<option>nate.com</option>
					</select>
				</td>
			</tr>	
			<tr>
				<td id="title">휴대전화</td>
				<td>
					<input type="text" name="phone">
				</td>
			</tr>		
			<tr>
				<td id="title">우편번호</td>
				<td>
					<input name="zipcode" size="5" readonly>
					<input type="button" value="우편번호 찾기" onclick="zipSearch()">
				</td>
			</tr>
			<tr>
				<td id="title">주소</td>
				<td>
					<input type="text" size="50" name="address">
				</td>
			</tr>
		</table>
		<br>
		<input type="submit" value="가입">
		<input type="button" value="취소" onclick="goLoginForm()">
	</form>
</div>
</body>
</html>