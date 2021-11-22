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

	// DB ���� �޼ҵ�
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
	
	// DB ���� �޼ҵ�
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
	
	// ȸ������ �޼ҵ�
	public int join(String eamil, String pw, String tel, String address) {
		// 1. ojdbc.jar ���� import �ϱ�
		// 2. ���� �ε� ���
		getConn();
		int cnt = 0;
		try {
			// DB�� ��Ŭ���� ���� ��� class �ҷ�����
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// ī��Ű
			String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id ="campus_c_c_1111";
			String db_pw ="smhrd3";

			// ī��Ű ����ؼ� �����ϱ�
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

			// sql�� �ۼ�
			String sql = "insert into web_member values(?,?,?,?)";

			// DB�� ����
			psmt = conn.prepareStatement(sql);

			// ?�� �� �־��ֱ�
			psmt.setString(1, eamil);
			psmt.setString(2, pw);
			psmt.setString(3, tel);
			psmt.setString(4, address);

			// ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;

	}

	// �α��� �޼ҵ�
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


	// ȸ���������� �޼ҵ�
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
	
	// ȸ���������� �޼ҵ�
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
//				dto = new MemberDTO(email, tel, address); //ȸ�������� dto�� �����ֱ�
//				list.add(dto); // �� ����� ������  list�� �߰�
//			}
//			
//		}catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			dbClose();
//		}return list;
//	}
}