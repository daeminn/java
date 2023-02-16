package member.util;
import java.sql.*;

public class DBConnect {
	//데이터베이스 연결 관련 변수
	public Connection conn = null;
	public PreparedStatement pstmt = null;
	
	//데이터베이스 실행 관련 변수
	public ResultSet rs = null;
	
	//데이터베이스 연결 관련 정보를 문자열로 선언
	String driverName = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	//DB연결 메소드
	public void connect() {
		try {
			//jdbc드라이버 로드
			Class.forName(driverName);
			
			//데이터베이스 접속
			conn = DriverManager.getConnection(url, "c##board", "board");
			System.out.println("DB에 성공적으로 접속했습니다." + "<br>");
		} catch(Exception e) {
			System.out.println("DB 접속에 실패했습니다.");
		}
	}
	
	//DB연결을 해제하는 메소드
	public void disconnect() {
		//사용한 자원을 반납
		try {
			pstmt.close();
			conn.close();			
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
}
