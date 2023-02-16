<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.6.1.min.js"></script>
<script src="./js/common.js"></script>
</head>
<body>
<header id="osc-hd">
    <div class="hd-wrap">
      <h1 class="osc-logo"><a href="index.jsp"><span class="blind">오스코텍</span></a></h1>
      <div class="gnb-wrap">
        <div class="gnb-close"><a href="#"><span class="blind">gnb 닫기 버튼</span></a></div>
        <div class="profile">
          <h2>Oscotec Inc.</h2>
          <div>Translating science into medicine</div>
        </div>
        <nav id="osc-gnb">
          <ul class="depth1">
            <li>
              <a href="sub_introduce.html">회사소개</a>
              <ul class="depth2">
                <li><a href="sub_introduce.html">오스코텍 소개</a></li>
                <li><a href="#">회사연혁</a></li>
                <li><a href="#">Contact Us</a></li>
              </ul>
            </li>
            <li>
              <a href="#">신약개발</a>
              <ul class="depth2">
                <li><a href="#">신약개발개요</a></li>
                <li><a href="sub_RA.html">류마티스 관절염</a></li>
                <li><a href="#">면역혈소판 감소증</a></li>
                <li><a href="#">급성골수성 백혈병</a></li>
                <li><a href="#">비소세포성폐암</a></li>
                <li><a href="#">알츠하이머 치매</a></li>
              </ul>
            </li>
            <li>
              <a href="#">의료사업</a>
              <ul class="depth2">
                <li><a href="#">치과용뼈이식재</a></li>
                <li><a href="#">치과용멤브레인</a></li>
              </ul>
            </li>
            <li>
              <a href="#">기능소재</a>
              <ul class="depth2">
                <li><a href="#">건강식품소재</a></li>
                <li><a href="#">일반식품소재</a></li>
                <li><a href="#">Product</a></li>
              </ul>
            </li>
            <li>
              <a href="#">투자정보</a>
              <ul class="depth2">
                <li><a href="#">공지사항</a></li>
                <li><a href="#">언론센터</a></li>
                <li><a href="#">IR Materials</a></li>
                <li><a href="#">Coverage Reports</a></li>
              </ul>
            </li>
            <li>
              <a href="#">인재채용</a>
              <ul class="depth2">
                <li><a href="#">채용공고</a></li>
              </ul>
            </li>
            <li>
              <a href="#">준법경영</a>
              <ul class="depth2">
                <li><a href="#">윤리강령</a></li>
                <li><a href="#">신고하기</a></li>
              </ul>
            </li>
          </ul>
        </nav>
      </div>
      <div class="attr-nav">
        <div><a href="#" class="all-menu-open"><span class="material-symbols-outlined">apps</span></a></div>
        <div><a href="#" class="gnb-open"><span class="blind">메뉴버튼</span></a></div>
        <div><a href="#" class="login-form-open"><span class="material-symbols-outlined">login</span></a></div>
      </div>
    </div>
    <div class="modal"></div>
  </header>
  <div id="all-menu">
    <nav class="all-gnb">
      <h2 class="all-menu-title"><span class="blind">Oscotec inc.</span></h2>
      <ul class="dp1">
        <li>
          <a href="sub_introduce.html">회사소개</a>
          <ul class="dp2">
            <li><a href="sub_introduce.html">오스코텍 소개</a></li>
            <li><a href="#">회사연혁</a></li>
            <li><a href="#">Contact Us</a></li>
          </ul>
        </li>
        <li>
          <a href="#">신약개발</a>
          <ul class="dp2">
            <li><a href="#">신약개발개요</a></li>
            <li><a href="#">류마티스 관절염</a></li>
            <li><a href="#">면역혈소판 감소증</a></li>
            <li><a href="#">급성골수성 백혈병</a></li>
            <li><a href="#">비소세포성폐암</a></li>
            <li><a href="#">알츠하이머 치매</a></li>
          </ul>
        </li>
        <li>
          <a href="#">의료사업</a>
          <ul class="dp2">
            <li><a href="#">치과용뼈이식재</a></li>
            <li><a href="#">치과용멤브레인</a></li>
          </ul>
        </li>
        <li>
          <a href="#">기능소재</a>
          <ul class="dp2">
            <li><a href="#">건강식품소재</a></li>
            <li><a href="#">일반식품소재</a></li>
            <li><a href="#">Product</a></li>
          </ul>
        </li>
        <li>
          <a href="#">투자정보</a>
          <ul class="dp2">
            <li><a href="#">공지사항</a></li>
            <li><a href="#">언론센터</a></li>
            <li><a href="#">IR Materials</a></li>
            <li><a href="#">Coverage Reports</a></li>
          </ul>
        </li>
        <li>
          <a href="#">인재채용</a>
          <ul class="dp2">
            <li><a href="#">채용공고</a></li>
          </ul>
        </li>
        <li>
          <a href="#">준법경영</a>
          <ul class="dp2">
            <li><a href="#">윤리강령</a></li>
            <li><a href="#">신고하기</a></li>
          </ul>
        </li>
      </ul>
      <div class="all-menu-close-wrap"><a href="#" class="all-menu-close"><span class="blind">메뉴버튼</span></a></div>
    </nav>
  </div>
<div class="login-form">
    <div><a href="#" class="login-form-close"><span class="material-symbols-outlined">
      close
      </span></a></div>
    <div class="profile">
      <h2>Oscotec Inc.</h2>
      <div>Translating science into medicine</div>
    </div>
    <form action="pro/LoginPro.jsp" method="post" name="LoginInfo" onsubmit="return checkValue()">
   		<%
             	//로그인이 되었을 경우에는 회원가입, 로그인 버튼을 보여준다.
             	if(session.getAttribute("sessionID") == null){
		%>
      <div>
        <input type="text" class="form-control" name="id" placeholder="아이디" >
      </div>
      <div>
        <input type="password" class="form-control" name="password" placeholder="비밀번호">
      </div>
      <%		
              	}
      %>
      <div>
   	<%
	   	String msg = request.getParameter("msg");
	   	if(msg!=null && msg.equals("0")) { //비밀번호 틀린 경우
			out.println("<script>alert('비밀번호가 맞지 않습니다.');window.location.href='index.jsp'</script>");
	   	} else if (msg!=null && msg.equals("-1")) {
	   		out.println("<script>alert('아이디가 존재하지 않습니다.');window.location.href='index.jsp'</script>");
	   	}
	   //로그인이 안되었을 경우에는 회원가입, 로그인 버튼을 보여준다.
	            	if(session.getAttribute("sessionID") == null){
	%>
			<div class="login">
		        <input class="signup-btn" type="button" onclick="javascript:window.location='mainForm.jsp';" value="회원가입">
		        <input type = "submit" value="로그인" class="submit-btn" >
		        <!-- <li><a href= class="login-btn">로그인</a></li> -->
	        </div>
      	<%		
            	} else { //로그인이 되었을 경우 회원아이디와 로그아웃 버튼을 보여준다.
		%>
	       	<ul class="login">
	            <li class="login-txt"><%=session.getAttribute("sessionID") %>님이 로그인 되었습니다.</li>
	            <li>
	            	<input type="button" id="updateBtn" class="btn btn-primary" value="내정보" onclick="javascript:window.location='userInfoForm.jsp';">
	            	<a href="pro/LogoutPro.jsp" class="logout">로그아웃</a>
	            </li>
	        </ul>
      	<% 		   
       			}
       	%>
      </div>
    </form>
  </div>
</body>
<script>
function changeView(value) {
	if(value == "0") { //HOME 버튼 클릭 시
		location.href="mainForm.jsp";
	} else if(value == "1") { //로그인 버튼 클릭 시
		location.href="mainForm.jsp?contentPage=loginForm.jsp";
	} else if(value == "2") { //회원가입 버튼 클릭 시
		location.href="mainForm.jsp?contentPage=JoinForm.jsp";
	} else if(value == "3") { //로그아웃 버튼 클릭 시
		location.href="../pro/logoutPro.jsp";
	} else if(value == "4") { //내정보 버튼 클릭 시
		location.href="mainForm.jsp?contentPage=userInfoForm.jsp";
	}
}
</script>
</html>