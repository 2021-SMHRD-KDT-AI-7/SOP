package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CommentDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	public void getConn() {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//ī��Ű
		String db_url="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String db_id="campus_c_c_1111";
		String db_pw="smhrd3";
		
		//����
		 conn= DriverManager.getConnection(db_url,db_id,db_pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//DB���� �޼ҵ�
	 public void dbClose() {
		 try {
				if(rs!=null) rs.close();
				if(psmt!=null) psmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
	 }
	
	// ������ �� �޽��� �������� �޼ҵ�
		public ArrayList<CommentDTO> getComment(String set_article_seq) {
			
			ArrayList<CommentDTO> cmt_list = new ArrayList<>();
			
			getConn();
			
			try {
				String sql = "select * from t_comment where article_seq = ?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, set_article_seq);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int article_seq = rs.getInt("article_seq");
					String comment_content = rs.getString("comment_content");
					String mb_id = rs.getString("mb_id");
					
					CommentDTO dto = new CommentDTO(article_seq, comment_content, mb_id);
					cmt_list.add(dto);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				dbClose();
			} return cmt_list;
			
		}
		
		
		//��� ���� ���� �޼ҵ�
		public int deleteOne(String comment_seq) {
			getConn();
			try {
				String sql="delete from t_comment where comment_seq=?";
				
				psmt=conn.prepareStatement(sql);
				
				psmt.setString(1, comment_seq);
				
				cnt=psmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}return cnt;
		}
		
	
}
