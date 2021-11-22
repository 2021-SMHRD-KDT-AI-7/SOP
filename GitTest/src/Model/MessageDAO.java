package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.jasper.tagplugins.jstl.core.Catch;


public class MessageDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;

	// DB 연결 메소드
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_ur1 ="jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id ="campus_c_c_1111";
			String db_pw ="smhrd3";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB 연결 메소드
	public void getConn2() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@211.223.37.235:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
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

	// 메시지 저정하는 메소드
	   public int insert(MessageDTO dto) {
	      getConn();
	      try {
	         String sql = "insert into web_message values(num_message.NEXTVAL, ?, ?, ?, sysdate)";
	      
	         psmt = conn.prepareStatement(sql);
	         
	         psmt.setString(1, dto.getSendName());
	         psmt.setString(2, dto.getReceiveEmail());
	         psmt.setString(3, dto.getMessage());
	         
	         cnt = psmt.executeUpdate();
	      }catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         dbClose();
	      }
	      return cnt; 
	   }

	// 나에게 온 메시지 가져오는 메소드
	   public ArrayList<MessageDTO> getMessage(String email) {
	      ArrayList<MessageDTO> m_list = new ArrayList<MessageDTO>();
	      getConn();
	      try {
	         String sql = "select * from web_message where receiveEmail = ?";
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1, email);
	         rs = psmt.executeQuery();
	         while(rs.next()) {
	            int num = rs.getInt("num");
	            String sendName = rs.getString("sendName");
	            String receiveEmail = rs.getString("receiveEmail");
	            String message = rs.getString("message");
	            String m_date = rs.getString("m_date");
	            MessageDTO dto = new MessageDTO(num, sendName, receiveEmail, message, m_date);
	            m_list.add(dto);
	         }
	      }catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         dbClose();
	      }return m_list;
	   }

	// 메세지 전체삭제 메소드
	   public int delete(String email) {
			  getConn();
			  
			  try {
				  
				  String sql ="delete from web_message where receiveEmail = ?";
				  psmt = conn.prepareStatement(sql);
			      psmt.setString(1, email); //email: 로그인 한 사람의 이메일
				  
			      cnt = psmt.executeUpdate();
			      
			  }catch (Exception e) {
				  e.printStackTrace();
			}finally {
			  dbClose();
		  }
			  return cnt;
		  }
	   	
	  //메세지 개별 삭제 메소드
	   public int deleteOne(String num) {
	   getConn();
	   	
	   	try {
	   		String sql = "delete from web_message where num =?";
	   		
	   		psmt = conn.prepareStatement(sql);
	   		psmt.setNString(1, num);
	   		cnt = psmt.executeUpdate();
	   	}catch (Exception e) {
			  e.printStackTrace();
	   	}finally {
	   		dbClose();
	   	}return cnt;
	 } 
}

