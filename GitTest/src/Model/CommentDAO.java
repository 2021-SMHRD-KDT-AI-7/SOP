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
		
		//카드키
		String db_url="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
		String db_id="campus_c_c_1111";
		String db_pw="smhrd3";
		
		//연결
		 conn= DriverManager.getConnection(db_url,db_id,db_pw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//DB종료 메소드
	 public void dbClose() {
		 try {
				if(rs!=null) rs.close();
				if(psmt!=null) psmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
	 }
	
	// 나에게 온 메시지 가져오는 메소드
		public ArrayList<CommentDTO> getComment(String set_article_seq) {
			
			ArrayList<CommentDTO> cmt_list = new ArrayList<>();
			
			getConn();
			
			try {
				String sql = "select * from t_comment where article_seq = ?";
				
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, set_article_seq);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int comment_seq = rs.getInt("comment_seq");
					int article_seq = rs.getInt("article_seq");
					String comment_content = rs.getString("comment_content");
					String mb_id = rs.getString("mb_id");
					
					CommentDTO dto = new CommentDTO(comment_seq, article_seq, comment_content, mb_id);
					cmt_list.add(dto);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				dbClose();
			} return cmt_list;
			
		}
		
		
		//댓글 개별 삭제 메소드
		public int deleteOne(String comment_seq) {
			getConn();
			try {
				String sql="delete from T_COMMENT where comment_seq=?";
				
				psmt=conn.prepareStatement(sql);
				
				psmt.setString(1, comment_seq);
				
				cnt=psmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				dbClose();
			}return cnt;
		}
		
		//댓글 포인트 update 메소드
		   public int commentUp(String mb_id, int mb_point) {
		      getConn();
		      
		      mb_point += 1;
		      
		      try {
		         
		         String sql="update t_member set mb_point=? where mb_id=?";
		         
		         psmt=conn.prepareStatement(sql);
		         
		         psmt.setInt(1, mb_point);
		         psmt.setString(2, mb_id);
		         
		         System.out.println(mb_point);
		         System.out.println(mb_id);
		         
		         cnt=psmt.executeUpdate();
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      }finally {
		         dbClose();
		      }return 0;
		      
		   }
		   
		
		
	
}
