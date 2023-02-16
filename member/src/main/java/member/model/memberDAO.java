package member.model;
import java.util.Vector;

import member.util.DBConnect;

public class memberDAO {
	//DBConnect객체의 인스턴스 생성
	DBConnect db = new DBConnect();
	
	//회원정보를 member테이블에 저장하는 메소드
	//입력 파라미터: 입력한 정보들
	//return: true/false
	public boolean insertMember(memberBean member) {
		db.connect();
		
		//sql문 생성
		String sql = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		
		try {
			//실행시킬 sql문 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, member.getId());
			db.pstmt.setString(2, member.getPassword());
			db.pstmt.setString(3, member.getName());
			db.pstmt.setString(4, member.getGender());
			db.pstmt.setString(5, member.getBirthyy()+member.getBirthmm()+member.getBirthdd());
			db.pstmt.setString(6, member.getEmail1()+"@"+member.getEmail2());
			db.pstmt.setString(7, member.getPhone());
			db.pstmt.setString(8, member.getAddress());
			
			//sql문 실행
			db.pstmt.executeUpdate(); //commit;처리를 하는 메소드
		} catch(Exception e) {
			e.printStackTrace();
			return false;
			
		} finally {
			db.disconnect();
		}
		return true;
	}
	/*
	 * 검색조건에 해당하는 우편번호를 조회하는 메소드
	 * 입력파라미터 : area3
	 * return : zipcodeBean객체 타입 벡터
	 * */
	public Vector<zipcodeBean> zipcodeRead(String area3) {
		//DB접속
		db.connect();
		System.out.println(area3);
		//우편번호를 검색한 결과를 저장하는 장소 => 벡터(zipcodeBean 객체배열)
		Vector<zipcodeBean> vlist = new Vector<zipcodeBean>();
		
		//sql문 작성
		String sql= "select * from zip where area3 like ?";
		try {
			//sql 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, "%"+area3+"%");
			
			//sql문 실행
			db.rs = db.pstmt.executeQuery();
			
			//next():조회한 데이터를 읽는 메소드
			//조회한 데이터를 읽어서 zipcodeBean객체에 저장(setter) -> 객체배열에 추가 
			while(db.rs.next()) {
				zipcodeBean bean = new zipcodeBean();
				bean.setZipcode(db.rs.getString(1));
				bean.setArea1(db.rs.getString(2));
				bean.setArea2(db.rs.getString(3));
				bean.setArea3(db.rs.getString(4));
				
				vlist.add(bean);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
		
		return vlist;
	}
	/*
	 * 로그인 시 아이디와 비밀번호를 체크하는 메소드
	 * 입력 : 아이디, 비밀번호
	 * return : 체크한 결과값(1: 정상, 0: 비밀번호가 틀린경우, -1: DB에 아이디가 없는경우)
	 * */
	public int loginCheck(String id, String pw) {
		String dbPW = "";
		int ck = 0;
		
		//데이터베이스 접속
		db.connect();
		//sql문 작성
		String sql = "SELECT PASSWORD FROM MEMBER WHERE ID = ?";
		
		try {
			//sql문 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, id);
			
			//sql문 실행
			db.rs = db.pstmt.executeQuery(); 
			if(db.rs.next()) { // 조회한 데이터가 있는 경우(회원가입이 되어있는 경우)
				dbPW = db.rs.getString("password");
				
				if(dbPW.equals(pw)) { // 정상
					ck = 1;
				} else {
					ck = 0; // 비밀번호가 틀린경우
				}
			} else { // 조회한 데이터가 없는 경우(회원가입이 안된 경우)
				ck = -1; 
			};

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect(); 
		}		
		return ck;
	}
	/*
	 * 회원가입시 아이디 중복여부 체크하는 메소드
	 * 입력파라미터 : id
	 * return : 1 => 아이디 있음(사용불가능), -1 => 아이디 없음(사용가능)
	 * */
	public int idCheck(String id) {
		int ch = 0;
		
		//데이터베이스 접속
		db.connect();
		//sql문 작성
		String sql = "SELECT ID FROM MEMBER WHERE ID = ?";
		
		try {
			//sql문 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, id);
			
			//sql문 실행
			db.rs = db.pstmt.executeQuery(); 
			if(db.rs.next()) { // 조회한 데이터가 있는 경우(회원가입이 되어있는 경우)
				ch = 1;

			} else { // 조회한 데이터가 없는 경우(회원가입이 안된 경우)
				ch = -1; 
			};

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect(); 
		}		
		return ch;
	}
	//내 정보를 조회하는 메소드
	//입력 파라미터 : id
	// return : 조회한 내 정보를 memberBean객체
	public memberBean getUserInfo(String id) {
		//데이터베이스 접속
		db.connect();
		
		//조회한 데이터를 저장하는 객체
		memberBean member = null;  
		
		//sql문 작성
		String sql = "SELECT * FROM MEMBER WHERE ID = " +"'" + id + "'"; 
		try {
			//실행하기 위해서 sql문 완성
			db.pstmt = db.conn.prepareStatement(sql);
			
			//sql문 실행
			db.rs = db.pstmt.executeQuery(); //조회를 실행시키면 결과값은 resultSet(rs)에 저장
			
			//sql문 실행 결과를 읽어온다.
		   if(db.rs.next()) { //데이터가 있는 경우
			   //생년월일 -> yyyy, mm, dd 이메일 -> email1, email2
			   //생년월일
			   String birthday = db.rs.getString("birth");
			   String year = birthday.substring(0, 4);
			   String month = birthday.substring(4, 6);
			   String day = birthday.substring(6);
			   
			   //이메일을 @기준으로 자른다
			   String mail = db.rs.getString("email");
			   int idx = mail.indexOf("@"); //@마크의 위치를 찾는 변수
			   String email1 = mail.substring(0, idx); 
			   String email2 = mail.substring(idx+1); 
			   
			   //memberBean클래스에 저장
			   member = new memberBean(); //인스턴스 생성
			   member.setId(db.rs.getString("id"));
			   member.setPassword(db.rs.getString("password"));
			   member.setName(db.rs.getString("name"));
			   member.setGender(db.rs.getString("gender"));
			   member.setBirthyy(year);
			   member.setBirthmm(month);
			   member.setBirthdd(day);
			   member.setEmail1(email1);
			   member.setEmail2(email2);
			   member.setPhone(db.rs.getString("phone"));
			   member.setAddress(db.rs.getString("address"));
			   member.setRegdate(db.rs.getString("regdate"));
		   };
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
		return member;
	}
	/*
	 * 회원정보를 삭제하는 메소드
	 * 입력파라미터 : id, pw
	 * return : 삭제 성공여부 체크값:1 -> 성공
	 * */
	public int deleteMember(String id, String pw) {
		
		//데이터베이스 접속
		db.connect();
		
		//조회한 데이터를 저장하는 객체
		memberBean member = null;  
				
		String dbPW = null;
		int chk = 0;
		
		//1. 삭제하기 전에 입력한 비밀번호가 맞는지 check
		String sql1 = "select password from member where id = ?";
		//2. 삭제하는 sql문
		String sql2 = "delete from member where id = ?";
		
		try {
			db.pstmt = db.conn.prepareStatement(sql1);
			db.pstmt.setString(1, id);
			db.rs = db.pstmt.executeQuery();
			
			if(db.rs.next()) {
				dbPW = db.rs.getString("password");
				if(dbPW.equals(pw)) { //DB에 있는 비밀번호와 파라미터로 받은 비밀번호가 같은 경우에 삭제
					db.pstmt = db.conn.prepareStatement(sql2);
					db.pstmt.setString(1,  id);
					db.pstmt.executeUpdate();
					chk = 1; //삭제 성공
				} else { //DB에 있는 비밀번호와 파라미터로 받은 비밀번호가 같지 않은 경우
					chk = 0; 
				}
			};
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}		
		return chk;
	}
	public boolean updateMember(memberBean m) {
		//데이터베이스 접속
		db.connect();
		
		//sql문 작성
		
		String sql = "update member set " +
					"password = ?, email = ?, phone =? " +
					"where id = ?";
		System.out.println( m.getEmail1());
		try {
			//실행할 sql문장 완성
			db.pstmt = db.conn.prepareStatement(sql);
			db.pstmt.setString(1, m.getPassword());
			db.pstmt.setString(2, m.getEmail1() + "@" + m.getEmail2());
			db.pstmt.setString(3, m.getPhone());
			db.pstmt.setString(4, m.getId());
			
			//sql문 실행
			db.pstmt.executeUpdate(); //commit처리
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			db.disconnect();
		}	
		return true;
	}
}
