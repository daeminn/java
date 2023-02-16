<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="css/link.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
    	function checkValue() {
    		if(!document.LoginInfo.id.value) {
    			alert("아이디를 입력하세요.");
    			document.LoginInfo.id.focus();
    			return false;
    		}
    		if(!document.LoginInfo.password.value) {
    			alert("비밀번호를 입력하세요.");
    			document.LoginInfo.password.focus();
    			return false;
    		}
    		return true;    		
    	}
    </script>
</head>
<body>
   
    <header id="osc-hd" class="clearFix"></header>
    <section id="container">
        <h1>로그인페이지</h1>
        <div class="innerBox">
            <div class="loginBox">
                <form action="pro/LoginPro.jsp" method="post" name="LoginInfo" onsubmit="return checkValue()">
                    <input class="box1" type="text" name="id" placeholder="아이디">
                    <input class="box2" type="password" name="password" placeholder="비밀번호">
                    <div class="box3">
                        <input class="checkBox" type="checkbox">
                        <label>로그인 상태 유지</label>
                        <p class="box3_text1"><a href="#void">비밀번호 재설정</a></p>
                        <p class="box3_text2"><a href="#void">아이디 찾기</a></p>
                    </div>
                    <h3 class="text2">아래 계정으로 로그인</h3>
                    <ul class="box4">
                        <li><a href="https://www.naver.com/"><img src="icon/naver.svg" alt="naver"></a></li>
                        <li><a href="https://www.kakaocorp.com/page/"><img src="icon/kakao.svg" alt="kakao"></a></li>
                        <li><a href="https://www.google.co.kr/"><img src="icon/google.svg" alt="google"></a></li>
                        <li><a href="https://www.facebook.com/"><img src="icon/facebook.svg" alt="facebook"></a></li>
                    </ul>
                    <div class="loginButton"><input type='submit' value="로그인"></div>
                    <div class="signUpButton"><a href="SignUP-before.html">회원가입</a></div>
                </form>
                <%
                	String msg = request.getParameter("msg");
                	if(msg!=null && msg.equals("0")) { //비밀번호 틀린 경우
						out.println("<script>alert('비밀번호가 맞지 않습니다.')</script>");
						
                	} else if (msg!=null && msg.equals("-1")) {
                		out.println("<script>alert('아이디가 존재하지 않습니다.')</script>");
                	}
                %>
            </div>
        </div>
    </section>
    <footer id="footer" class="clearFix"></footer>
</body>
</html>