package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

			// 연결
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

	public int upload(CampaignDTO dto) {
		getConn();
		try {
			String sql = "INSERT INTO t_campaign (cam_title, cam_content, reg_date, mb_id, cam_file1, cam_start, cam_finish) VALUES (?, ?, sysdate, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getCam_title());
			psmt.setString(2, dto.getCam_content());
			psmt.setString(3, dto.getMb_id());
			psmt.setString(4, dto.getCam_file1());
			psmt.setString(5, dto.getCam_start());
			psmt.setString(6, dto.getCam_finish());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	public ArrayList<CampaignDTO> viewBoard(String get_id) {
		ArrayList<CampaignDTO> c_list = new ArrayList<CampaignDTO>();
		getConn();
		
		String sql = null;

		try {
			if(get_id.equals("admin")) {
				sql = "select * from t_campaign order by reg_date desc";
			}
			else {
				sql = "select * from t_campaign where cam_accept = 'Y' order by reg_date desc";
			}

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int cam_seq = rs.getInt("cam_seq");
				String cam_title = rs.getString("cam_title");
				String mb_id = rs.getString("mb_id");
				String cam_start = rs.getString("cam_start");
				String cam_finish = rs.getString("cam_finish");

				dto = new CampaignDTO(cam_seq, cam_title, mb_id, cam_start, cam_finish);

				c_list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return c_list;
	}

	public CampaignDTO viewOneBoard(String num) {
		getConn();

		try {
			String sql = "select * from t_campaign where cam_seq = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);

			rs = psmt.executeQuery();

			if (rs.next()) {
				int num2 = rs.getInt("cam_seq");
				String cam_title = rs.getString("cam_title");
				String mb_id = rs.getString("mb_id");
				String cam_file1 = rs.getString("cam_file1");
				String cam_content = rs.getString("cam_content");
				String reg_date = rs.getString("reg_date");
				String cam_start = rs.getString("cam_start");
				String cam_finish = rs.getString("cam_finish");

				dto = new CampaignDTO(num2, cam_title, cam_content, reg_date, mb_id, cam_file1, cam_start, cam_finish);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return dto;
	}

	
	// 관리자 기능
	public int accept(CampaignDTO cam_accept) {
		getConn();
		try {
			String sql = "update t_campaign set cam_accept = 'Y' where cam_seq = ? ";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cam_accept.getCam_seq());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	
	public int update(CampaignDTO dto){
		getConn();

		try {
			
			String sql="update t_campaign set cam_title=?, cam_content=?, cam_file1=?, cam_start=?, cam_finish=? where cam_seq=?";
			
			psmt=conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCam_title());
			psmt.setString(2, dto.getCam_content());
			psmt.setString(3, dto.getCam_file1());
			psmt.setString(4, dto.getCam_start());
			psmt.setString(5, dto.getCam_finish());
			psmt.setInt(6, dto.getCam_seq());
			
			
			cnt=psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}return cnt;
	}
	
	public ArrayList<CampaignDTO> getSearch(String searchText){
		getConn();
		ArrayList<CampaignDTO> list = new ArrayList<CampaignDTO>();
		
		try {
			String sql = "select * from t_campaign where cam_title like ? and cam_accept = 'Y' order by reg_date desc";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + searchText + "%");
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int cam_seq = rs.getInt("cam_seq");
				String cam_title = rs.getString("cam_title");
				String mb_id = rs.getString("mb_id");
				String cam_start = rs.getString("cam_start");
				String cam_finish = rs.getString("cam_finish");

				dto = new CampaignDTO(cam_seq, cam_title, mb_id, cam_start, cam_finish);
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return list;
	}

	//페이징 메소드
	public int getCount(String get_id) {
		String sql;
				 
				 getConn();
					try {
						if(get_id.equals("admin")) {
							sql = "select count(*) from t_campaign";
						}else {
							sql = "select count(*) from t_campaign where cam_accept='Y'";
						}
						
						PreparedStatement psmt=conn.prepareStatement(sql);
						rs=psmt.executeQuery();
						
						if(rs.next()) {
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
