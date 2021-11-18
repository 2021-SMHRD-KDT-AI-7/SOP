package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CampaignDAO {
	
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;
	CampaignDTO dto = null;
	
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_c_c_1111";
			String db_pw = "smhrd3";

			// ¿¬°á
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
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
	
	
//	public int upload(CampaignDTO dto) {
//		getConn();
//		try {
//			String sql = "insert into web_board values(num_board.nextval, ?, ?, ?, ?, sysdate)";
//			
//			psmt = conn.prepareStatement(sql);
//			
//			psmt.setString(1, dto.getTitle());
//			psmt.setString(2, dto.getWriter());
//			psmt.setString(3, dto.getFileName());
//			psmt.setString(4, dto.getContent());
//			
//			cnt = psmt.executeUpdate();			
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			dbClose();
//		}
//		return cnt;
//	}

}
