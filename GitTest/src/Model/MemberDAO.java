package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {

	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	String name = null;

	// 연결 getConn 메소드
	public void getConn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_c_c_1111";
			String db_pw = "smhrd3";
			
			// DB에 연결, 연결이 되면 Connection객체로 변환
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}		
	
	// DBclose메소드
	public void DBclose() {
		try {
			// DB문 닫기(열랬을 때만 닫아주기) - 역순으로 닫아주기
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 회원가입 join 메소드
	public int join(String mb_id, String mb_pwd, String mb_name, String mb_nickname, String mb_birthdate, String mb_addr, String mb_email, String mb_phone, String mb_gender) {
		
		getConn();

		try {

			// sql문 작성(변하는 값을 넣어 줄때는 ? 를 사용한다)
			String sql = "insert into t_member values(?,?,?,?,?,?,0,?,?,?,0,0,sysdate,'N')";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1,mb_id);
			psmt.setString(2,mb_pwd);
			psmt.setString(3,mb_name);
			psmt.setString(4,mb_nickname);
			psmt.setString(5,mb_birthdate);
			psmt.setString(6,mb_addr);
			psmt.setString(7,mb_email);
			psmt.setString(8,mb_phone);
			psmt.setString(9,mb_gender);

			// SQL 실행
			// executeUpdate : 수행결과로 int 타입의 값을 반환, select문을 제외한 다른 구문을 수행할때 사용하는 함수
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {// 무조건 실행
			DBclose();
		}

		return cnt;
	}

	// 로그인 login 메소드
//	public String login(String id, String pw) {
//
//		try {
//			getConn();
//			
//			String sql = "select name from member2 where id =? and pw =?";
//
//			psmt = conn.prepareStatement(sql);
//
//			psmt.setString(1, id);
//			psmt.setString(2, pw);
//
//			rs = psmt.executeQuery();
//
//			if (rs.next()) {
//				name = rs.getNString("name");
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			DBclose();
//		}
//		return name;
//	}
}
