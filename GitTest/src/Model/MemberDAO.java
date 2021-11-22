package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	
	ResultSet rs= null;
	PreparedStatement psmt = null;
	Connection conn = null;
	MemberDTO dto = null;
	int cnt = 0;

	// DB 연결 메소드
	public void getConn() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		
		String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String db_id ="campus_c_c_1111";
		String db_pw ="smhrd3";

		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// DB 종료 메소드
	public void dbClose() {
		try {

			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원가입 메소드
	public int join(String eamil, String pw, String tel, String address) {
		// 1. ojdbc.jar 파일 import 하기
		// 2. 동적 로딩 방식
		getConn();
		int cnt = 0;
		try {
			// DB와 이클립스 연결 통로 class 불러오기
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 카드키
			String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id ="campus_c_c_1111";
			String db_pw ="smhrd3";

			// 카드키 사용해서 연결하기
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			// sql문 작성
			String sql = "insert into web_member values(?,?,?,?)";

			// DB에 전달
			psmt = conn.prepareStatement(sql);

			// ?에 값 넣어주기
			psmt.setString(1, eamil);
			psmt.setString(2, pw);
			psmt.setString(3, tel);
			psmt.setString(4, address);

			// 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;

	}

	// 로그인 메소드
	public MemberDTO login(String get_email, String get_pw) {


		
	
		try {

			getConn();

			String sql = "select*from web_member where email =? and pw =?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, get_email);
			psmt.setString(2, get_pw);

			rs = psmt.executeQuery();
			
			if (rs.next()) {
				String email = rs.getString("email");
				String pw = rs.getString("pw");
				String tel = rs.getString("tel");
				String address = rs.getString("address");

				dto = new MemberDTO(email, pw, tel, address);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return dto;
	}


	// 회원정보수정 메소드
//	public int update(MemberDTO info) {
//		getConn();
//		
//		try {
//		String sql = "update web_member set pw =?,tel=?,address=? where email =?";
//		
//		psmt = conn.prepareStatement(sql);
//		psmt.setNString(1,info.getPw());
//		psmt.setNString(2,info.getTel());
//		psmt.setNString(3,info.getAddress());
//		psmt.setNString(4,info.getEmail());
//		
//		cnt = psmt.executeUpdate();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			dbClose();
//		}return cnt;
//	}
	
	// 회원정보관리 메소드
//	public ArrayList<MemberDTO> select() {
//		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
//		getConn();
//		try {
//			String sql = "select*from web_member";
//			
//			psmt = conn.prepareStatement(sql);
//			rs =psmt.executeQuery();
//			
//			while(rs.next()) {
//				String email = rs.getString("email");
//				String tel = rs.getString("tel");
//				String address = rs.getString("address");
//				
//				dto = new MemberDTO(email, tel, address); //회원정보를 dto로 묶어주기
//				list.add(dto); // 한 사람의 정보를  list에 추가
//			}
//			
//		}catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			dbClose();
//		}return list;
//	}
}