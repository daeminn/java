package osc;
import member.util.DBConnect;

//다른 프로젝트에 있는 클래스를 참조
//1.[Build Path>Configure Build Path]선택
//2. Java Build Path에서 Project 탭 선택
//3. classpath에 [add]버튼을 클릭해서 추가 클래스(member)

public class loginDAO {
	//객체(인스턴스)생성
	DBConnect db = new DBConnect();
	
	/*
	 * 로그인 데이터를 체크하는 메소드
	 * 입력파라미터 : 아이디, 비밀번호
	 * return : 체크사항 (1: 정상 2: 비밀번호 오류 3: 회원가입이 안되어 있음)
	 * */
	public int loginCheck(String id, String pw) {
		String dbPW = "";
		int chk = 0;
		//데이터베이스 접속
		db.connect();
		
		//sql문 작성
		String sql = "SELECT PASSWORD FROM MEMBER WHERE ID = ?";
		
		try {
			//실행시킬 sql문 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, id);
			db.rs = db.pstmt.executeQuery();
			
			//조회한 데이터를 읽는다 .next()
			if(db.rs.next()) { //조회한 데이터가 있는 경우
				dbPW = db.rs.getString("password");
				if(dbPW.equals(pw)) { //조회한 비밀번호와 파라미터로 받은 비밀번호가 같은 경우
					chk = 1; //정상 로그인
				} else { //비밀번호가 틀린경우
					chk = 0;
				}
			} else { //조회한 데이터가 없는 경우
				chk = -1;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		} 
		return chk;
	}
	
}