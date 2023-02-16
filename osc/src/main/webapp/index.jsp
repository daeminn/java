<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Oscotec lnc.</title>
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="./css/fullpage.min.css">
  <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/common_res.css">
  <link rel="stylesheet" href="./css/main.css">
  <link rel="stylesheet" href="./css/main_res.css">
  <script src="./js/jquery-3.6.1.min.js"></script>
  <script src="./js/fullpage.min.js"></script>
  <script src="./js/common.js"></script>
  <script src="./js/main.js"></script>
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
<body id="osc-main">
  <div id="skip">
    <a href="#osc-main">본문 바로가기</a>
    <a href="#osc-gnb">주 메뉴 바로가기</a>
    <a href="#osc-lnb">서브 메뉴 바로가기</a>
  </div>
  <header id="osc-hd">
    <div class="hd-wrap">
      <h1 class="osc-logo"><a href="index.html"><span class="blind">오스코텍</span></a></h1>
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
              <a href="sub_MBbones.html">의료사업</a>
              <ul class="depth2">
                <li><a href="sub_MBbones.html">치과용뼈이식재</a></li>
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
            <li><a href="sub_RA.html">류마티스 관절염</a></li>
            <li><a href="#">면역혈소판 감소증</a></li>
            <li><a href="#">급성골수성 백혈병</a></li>
            <li><a href="#">비소세포성폐암</a></li>
            <li><a href="#">알츠하이머 치매</a></li>
          </ul>
        </li>
        <li>
          <a href="sub_MBbones.html">의료사업</a>
          <ul class="dp2">
            <li><a href="sub_MBbones.html">치과용뼈이식재</a></li>
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
	            	<input type="button" id="updateBtn" class="btn btn-primary" value="내정보" onclick="javascript:window.location='mainForm.jsp?contentPage=userInfoForm.jsp';">
	            	<a href="pro/LogoutPro.jsp" class="logout">로그아웃</a>
	            </li>
	        </ul>
      	<% 		   
       			}
       	%>
      </div>
    </form>
  </div>
  <main id="osc-main-container">
    <section class="section sec00">
      <h2 class="blind">회사소개</h2>
      <div class="intro-wrap wrapper">
        <div class="intro-title-wrap">
          <h3 class="intro-title">Who we are</h3>
          <div class="intro-text">오스코텍은 글로벌 임상단계에 있는 혁신신약 연구개발 전문기업입니다.
          </div>
          <h3 class="intro-title intro-title2">What we do</h3>
          <div class="intro-text">오스코텍은 암의 완치를 바라볼 수 있는 혁신적인 치료제를 개발하기 위해 노력하고 있습니다.
          </div>
          <a href="#" class="more">자세히 보기</a>
        </div>      
        
      </div>
    </section>
       
    <section class="section sec01">
      <h2 class="blind">신약개발&의료사업</h2>
      <div class="biz-wrap">
        <div class="develop">
          <div class="dev-wrap">
            <h3 class="dev-tit">신약개발</h3>
            <ul class="dev-list">
              <li><a href="#">류마티스 관절염<span class="material-symbols-outlined">
                arrow_right_alt
                </span></a></li>
              <li><a href="#">면역혈소판 감소증<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
              <li><a href="#">급성골수성 백혈병<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
              <li><a href="#">비소세포성폐암<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
              <li><a href="#">알츠하이머 치매<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
            </ul>
          </div>
        </div>
        <div class="business">
          <div class="bsn-wrap">
            <h3 class="bsn-tit">의료사업</h3>
            <ul class="bsn-list">
              <li>
                <h4 class="bsn-list-title">치과용뼈이식재</h4>
                <ul>
                  <li><a href="#">InduCera<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                  <li><a href="#">BioCera-F<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                  <li><a href="#">SynCera II<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                  <li><a href="#">COLLACERA<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                </ul>
              </li>
              <li>
                <h4 class="bsn-list-title">치과용멤브레인</h4>
                <ul>
                  <li><a href="#">LysoGide<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                  <li><a href="#">CollaGuide<span class="material-symbols-outlined">arrow_right_alt</span></a></li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section class="section sec02">
      <div class="news-wrap wrapper">
        <div class="news-title-wrap">
          <h2>언론보도</h2>
          <p>오스코텍의 언론보도 자료를 확인하세요.</p>
          <a href="#" class="more">자세히 보기</a>
        </div>
          
        
      <div class="news-box clearfix">
        <div class="news-li">
          <div class="news-li-tit">오스코텍, 바이오리버트와 신규 항암치료제 공동연구개발 추진</div>
          <div class="news-txt">오스코텍(대표 김정근 윤태영)은 바이오리버트(대표 이충환)와 13일 항암가역치료를 목표로 하는 신규타겟들에 대한  공동연구개발 계약을 체결했다고 밝혔다. 이번 계약을 통해 양사는 바이오리버트가 확보한 2종의 신규 항암가역타겟 (BRVT121, BRVT221)에 대해 간암 및 폐암 치료제 개발을 위한 초기 공동연구를 진행하고, 이를 통해 성공적인 후속 개발과 상용화를 위한 사업화 협력까지 기대하고 있다. </div>
          <div class="news-date">2023-01-16</div>
        </div>
        <div class="news-li">
          <div class="news-li-tit">오스코텍, 세비도플레닙 2상 탑라인 2월 중 발표</div>
          <div class="news-txt">오스코텍이 개발 중인 면역혈소판감소증(ITP) 신규 치료제 세비도플레닙(SYL 저해제)의 임상 2상 탑라인 결과가 오는 2월 중 발표될 예정이다.</div>
          <div class="news-date">2023-01-11</div>
        </div>
        <div class="news-li">
          <div class="news-li-tit">오스코텍 "유한양행 '렉라자' 1차 치료제 허가 시 로열티 수익 증가 기대"</div>
          <div class="news-txt">혁신신약개발 기업 오스코텍(대표 김정근 윤태영)은 유한양행 렉라자(레이저티닙, 3세대 EGFR 저해제)의 우수한 임상 3상시험 결과가 공개됨에 따라 (유럽종양학회 아시아 프레지덴셜 심포지엄), 국내 1차 치료제 허가 및 보험 승인의 가능성을 높이 평가하면서 그에 따른 로열티 수익 증가가 기대된다고 밝혔다.</div>
          <div class="news-date">2022.12.05</div>
        </div>
        <div class="news-li">
          <div class="news-li-tit">오스코텍, '면역혈소판감소증 치료제' 글로벌 임상 2상 환자 모집 완료</div>
          <div class="news-txt">혁신신약개발 기업 오스코텍 (대표 김정근 윤태영)은 SYK저해제 세비도플레닙의 ITP(면역혈소판감소증) 글로벌 임상 2상의 환자모집이 완료됐다고 밝혔다. 총 환자 수는 61명이며, 올해 중 투약을 완료해 2023년 1분기에 톱라인 결과가 공개될 것으로 전망된다.</div>
          <div class="news-date">2022.09.23</div>
        </div>
        <div class="news-li">
          <div class="news-li-tit">오스코텍 "유한양행 '렉라자' 1차 치료제 허가 시 로열티 수익 증가 기대"</div>
          <div class="news-txt">혁신신약개발 기업 오스코텍(대표 김정근 윤태영)은 유한양행 렉라자(레이저티닙, 3세대 EGFR 저해제)의 우수한 임상 3상시험 결과가 공개됨에 따라 (유럽종양학회 아시아 프레지덴셜 심포지엄), 국내 1차 치료제 허가 및 보험 승인의 가능성을 높이 평가하면서 그에 따른 로열티 수익 증가가 기대된다고 밝혔다.</div>
          <div class="news-date">2022.12.05</div>
        </div>
        <div class="news-li">
          <div class="news-li-tit">오스코텍 "유한양행 '렉라자' 1차 치료제 허가 시 로열티 수익 증가 기대"</div>
          <div class="news-txt">혁신신약개발 기업 오스코텍(대표 김정근 윤태영)은 유한양행 렉라자(레이저티닙, 3세대 EGFR 저해제)의 우수한 임상 3상시험 결과가 공개됨에 따라 (유럽종양학회 아시아 프레지덴셜 심포지엄), 국내 1차 치료제 허가 및 보험 승인의 가능성을 높이 평가하면서 그에 따른 로열티 수익 증가가 기대된다고 밝혔다.</div>
          <div class="news-date">2022.12.05</div>
        </div>
      </div>
    </div>
    </section>
    <section class="section sec03">
      <div class="emp-wrap wrapper">
        <div class="emp-title-wrap">
          <h2 class="emp-title">인재채용</h2>
          <div class="emp-text">오스코텍에서는 혁신적인 생물학적 가설을 기반으로 철저한 과학적 접근을 통해 글로벌 시장에서 인정받고 경쟁하는 혁신신약 개발을 추구하는 혁신신약 연구개발자로서의 꿈과 성장을 이룰, 패기 넘치는 인재를 찾습니다.</div>
        </div>
        <a href="#" class="more">자세히 보기</a>
      </div>
    </section>
    <section class="section sec04 fp-auto-height"></section>
  </main>    
  <footer id="osc-ft">
    <div class="osc-ft-container">
      <h2 class="blind">푸터 영역</h2>
      <div class="ft-wrap">
        <div class="ft-info-wrap">
          <div class="ft-logo"><span class="blind">푸터로고</span></div>
          <div class="ft-info">
            <h3>(주)오스코텍</h3>
            경기도 성남시 분당구 대왕판교로 700(삼평동) 코리아바이오파크 A동 9층<br>대표 : 김정근, 윤태영 | 사업자등록번호 : 312-81-32175
          </div>
          <div class="ft-cs">
            <div class="cs-info">
              <h3>CUSTOMER CENTER</h3>
              <div>※ 업무 시간 : 평일 09: 00 ~ 18: 00 / 주말 · 공휴일 휴무</div>
            </div>
            <div class="contact-info">
              <h3>CONTACT US</h3>
              <div>
                메일주시면 확인 후 회신드립니다.<br>
                <button class="btn-contact">메일보내기</button>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <div class="ft-sub-copyright">이 사이트는 (주)오스코텍과 실제 관련이 없으며 포트폴리오용으로 제작되었습니다.</div>
    </div>
</footer>

</body>
</html>