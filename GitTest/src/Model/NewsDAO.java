package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NewsDAO {

	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;
	NewsDTO dto = null;

	// DB연결 메소드
	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 카드키
			String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String db_id = "campus_c_c_1111";
			String db_pw = "smhrd3";

			// 연결
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB종료 메소드
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

	// 페이징 메소드
	public int getCount() {

		getConn();
		try {
			String sql = "select count(*) from t_news";

			PreparedStatement psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return -1;
	}
	
	public int getSearchCount(String searchText) {

		getConn();
		try {
			String sql = "select count(*) from t_news where news_title like ? order by reg_date desc";

			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + searchText + "%");
			rs = psmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return -1;
	}

	// 뉴스 DB 연동 메소드
	public ArrayList<NewsDTO> getNews() {
		ArrayList<NewsDTO> news_list = new ArrayList<NewsDTO>();
		getConn();

		String sql = null;

		try {
			sql = "select * from t_news";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int news_seq1 = rs.getInt("news_seq");
				String news_title = rs.getString("news_title");
				String news_content = rs.getString("news_content");
				String reg_date = rs.getString("reg_date");
				String news_url = rs.getString("news_url");
				String img_url = rs.getString("img_url");

				dto = new NewsDTO(news_seq1, news_title, news_content, reg_date, news_url, img_url);

				news_list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return news_list;
	}

	// 페이지 처리 메소드(X)
	public boolean nextPage(int pageNumber) {// 페이지 처리를 위한 함수
		getConn();
		String SQL = "SELECT * from t_news where news_seq < ?";
		try {
			PreparedStatement psmt = conn.prepareStatement(SQL);
			psmt.setInt(1, dto.getNews_seq() - (pageNumber - 1) * 10);
			rs = psmt.executeQuery();
			if (rs.next()) {
				return true;// 다음 페이지로 넘어갈 수 있음
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return false;
	}

	public ArrayList<NewsDTO> getSearch(String searchText) {
		getConn();
		ArrayList<NewsDTO> news_list = new ArrayList<NewsDTO>();

		try {
			String sql = "select * from t_news where news_title like ? order by reg_date desc";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + searchText + "%");

			rs = psmt.executeQuery();

			while (rs.next()) {
				int news_seq1 = rs.getInt("news_seq");
				String news_title = rs.getString("news_title");
				String news_content = rs.getString("news_content");
				String reg_date = rs.getString("reg_date");
				String news_url = rs.getString("news_url");
				String img_url = rs.getString("img_url");

				dto = new NewsDTO(news_seq1, news_title, news_content, reg_date, news_url, img_url);

				news_list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return news_list;
		
	}

}
