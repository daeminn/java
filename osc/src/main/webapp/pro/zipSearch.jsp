<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Vector, member.model.zipcodeBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
	//한글깨짐 방지 인코딩
	request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dao" class="member.model.memberDAO"/>

<%
	String search = request.getParameter("search");
	String area3 = null;
	
	//ArrayList : 가변의 객체 배열
	//add(), get(), size().... 메소드 이용해서 데이터 추가, 조회..
	Vector<zipcodeBean> vlist = null;
	
	if(search.equals("y")) { //우편번호검색 화면에서 <검색>버튼 누른 경우
		area3 = request.getParameter("area3");
		
		//member객체의 zipcodeRead()메소드 실행
		//결과값을 vlist에 받는다.
		vlist = dao.zipcodeRead(area3);
	}
%>
</head>
<body bgcolor="#ffffcc">
	<div align="center">
		<br>
		<form name="zipFrm" method="post" action="zipSearch.jsp">
			<table>
				<tr>
					<td>
						<br>도로명 입력: <input type="text" id="area3" name="area3">
									  <input type="submit" value="검색">
					</td>
				</tr>
				<%
					if(search.equals("y")) { //<검색>버튼을 눌렀을 때
						if(vlist.isEmpty()) {
				%>
							<tr>
								<td align="center"><br>검색된 결과가 없습니다.
							</tr>
				<%							
						} else {
				%>
							<tr>
								<td align="center"><br>
									※검색 후, 아래 우편번호를 클릭하면 자동으로 입력됩니다.
								</td>
							</tr>
				<%
							for(int i=0; i<vlist.size(); i++) {
								zipcodeBean bean = vlist.get(i);
								
								String rzipcode = bean.getZipcode();
								String rarea1 = bean.getArea1();
								String rarea2 = bean.getArea2();
								String rarea3 = bean.getArea3();
								String adds = " " + rarea1 + " " + rarea2 + " " + rarea3;
				%>
								<tr>
									<td>
										<a href="#" onclick="sendAdd('<%=rzipcode %>', '<%=adds %>')">
										<%=rzipcode %><%=adds %>
										</a>
									</td>
								</tr>
				<%								
							} // end for문
						} // end else문
					} // end if문
				%>
				<tr>
					<td align="center"><br>
						<a href="#" onclick="self.close()">닫기</a>
					</td>
				</tr>
			</table>	
			<input type="hidden" name="search" value="y">	
		</form>	
	</div>
</body>
<script>
	function sendAdd(zipcode, adds) {
		//opener()함수 : 자식 창의 데이터를 부모 창으로 넘기는 함수
		opener.document.userInfo.zipcode.value = zipcode;
		opener.document.userInfo.address.value = adds;
		
		//자신의 창을 닫는다.
		self.close();
	}
</script>
</html>