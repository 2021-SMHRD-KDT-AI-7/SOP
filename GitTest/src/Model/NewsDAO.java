package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class NewsDAO {

	PreparedStatement psmt=null;
	Connection conn=null;
	ResultSet rs=null;
	int cnt=0;
	NewsDTO dto=null;
	
	//DB���� �޼ҵ�
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
		 
	//�� ���� ���� �޼ҵ�
		 public int getCount() {
			 
			 getConn();
				try {
					String sql = "select count(*) from t_news";
					
					PreparedStatement psmt=conn.prepareStatement(sql);
					rs=psmt.executeQuery();
					
					if(rs.next()) {
						System.out.println(rs.getInt(1));
						return rs.getInt(1);
					}			
				} catch(Exception e) {
					e.printStackTrace();
				}finally {
					dbClose();
				}
				return -1;
			}
		 
	
		 
	
}
