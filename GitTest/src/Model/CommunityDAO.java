package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import Model.CommunityDTO;

public class CommunityDAO {
   PreparedStatement psmt = null;
   Connection conn = null;
   ResultSet rs = null;
   int cnt = 0;
   CommunityDTO dto = null;

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

   // 게시글 업로드 메소드
   public int upload(CommunityDTO dto) {
      getConn();
      try {
         String sql = "insert into t_community (article_title,article_content,mb_id,article_file1,reg_date,location_num)values(?,?,?,?,sysdate,?)";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, dto.getArticle_title());
         psmt.setString(2, dto.getArticle_content());
         psmt.setString(3, dto.getMb_id());
         psmt.setString(4, dto.getArticle_file1());
         psmt.setInt(5, dto.getLocation_num());

         cnt = psmt.executeUpdate();
         
         // 포인트 up!
         pointUp(dto.getMb_id(), dto.getLocation_num());

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   // 게시글 보여주는 메소드
   public ArrayList<CommunityDTO> viewBoard(String get_id) {

      ArrayList<CommunityDTO> b_list = new ArrayList<>();
      getConn();

      try {
         String sql = "select*from t_community order by reg_date desc";

         psmt = conn.prepareStatement(sql);
         rs = psmt.executeQuery();

         while (rs.next()) {
            int article_seq = rs.getInt("article_seq");
            String article_title = rs.getString("article_title");
            String mb_id = rs.getString("mb_id");
            Date reg_date = rs.getDate("reg_date");
            int article_cnt=rs.getInt("article_cnt");

            dto = new CommunityDTO(article_seq, article_title, mb_id, reg_date,article_cnt);
            b_list.add(dto);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return b_list;
   }

   // 게시글 세부내용을 보여주는 메소드
   public CommunityDTO viewOneBoard(String article_seq) {
      getConn();

      try {
         String sql = "select * from t_community where article_seq=?";

         psmt = conn.prepareStatement(sql);
         psmt.setString(1, article_seq);
         rs = psmt.executeQuery();

         if (rs.next()) {
            int article_seq1 = rs.getInt("article_seq");
            String article_title = rs.getString("article_title");
            String article_content = rs.getString("article_content");
            String mb_id = rs.getString("mb_id");
            String article_file1 = rs.getString("article_file1");
            String article_file2 = rs.getString("article_file2");
            String article_file3 = rs.getString("article_file3");
            Date reg_date = rs.getDate("reg_date");
            int article_cnt = rs.getInt("article_cnt");

            dto = new CommunityDTO(article_seq1, article_title, article_content, mb_id, article_file1,
                  article_file2, article_file3, reg_date, article_cnt);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return dto;
   }

   // 게시판 개별 삭제 메소드
   public int deleteOne(String article_seq) {
      getConn();
      try {
         String sql = "delete from t_community where article_seq=?";

         psmt = conn.prepareStatement(sql);
         psmt.setString(1, article_seq);
         cnt = psmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   // 게시판정보수정 메소드
   public int update(CommunityDTO change) {
      getConn();

      try {

         String sql = "update t_community set article_title=?,article_content=?,article_file1=?, location_num=? where article_seq=?";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, change.getArticle_title());
         psmt.setString(2, change.getArticle_content());
         psmt.setString(3, change.getArticle_file1());
         psmt.setInt(4, change.getLocation_num());
         psmt.setInt(5, change.getArticle_seq());

         System.out.println(change.getArticle_title());
         System.out.println(change.getArticle_content());
         System.out.println(change.getArticle_file1());
         System.out.println(change.getArticle_seq());

         cnt = psmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   // 댓글 업로드 메소드

   public int cmt_upload(CommentDTO dto) {
      System.out.println("============");
      System.out.println(dto.getArticle_seq());
      System.out.println(dto.getComment_content());
      System.out.println(dto.getMb_id());
      getConn();
      try {
         String sql = "insert into t_comment values (t_comment_seq.NEXTVAL,?,?,sysdate,?)";

         psmt = conn.prepareStatement(sql);

         psmt.setInt(1, dto.getArticle_seq());
         psmt.setString(2, dto.getComment_content());
         psmt.setString(3, dto.getMb_id());

         cnt = psmt.executeUpdate();

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return cnt;
   }

   public ArrayList<CommunityDTO> getSearch(String searchText) {
      getConn();
      ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();

      try {
         String sql = "select * from t_community where article_title like ? order by reg_date desc";

         psmt = conn.prepareStatement(sql);
         psmt.setString(1, "%" + searchText + "%");

         rs = psmt.executeQuery();

         while (rs.next()) {
            int article_seq = rs.getInt("article_seq");
            String article_title = rs.getString("article_title");
            String mb_id = rs.getString("mb_id");
            Date reg_date = rs.getDate("reg_date");

            dto = new CommunityDTO(article_seq, article_title, mb_id, reg_date);
            list.add(dto);
         }
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         dbClose();
      }
      return list;
   }
   
   
   // 글 포인트 추가 포인트 
   public void pointUp(String mb_id, int location_num) {
	   
	   getConn();
	   MemberDAO m_dao = new MemberDAO();

	   int mb_point;
	   
	   // 일반글 10점, 데일리미션 15점
	   switch(location_num) {
		   case 18 :
			   mb_point = m_dao.point(mb_id) + 15;
		   break;
		   
		   default :
			   mb_point = m_dao.point(mb_id) + 10;
			   break;
	   }
	   
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
	      } 
	   
   }
   
   // 현재 글 DB에서 작성자 id 꺼내오기
   public String getID(String article_seq) {
	      getConn();
	      String mb_id=null;
	      try {
	         String sql="select mb_id from T_COMMUNITY where article_seq=?";
	         
	         psmt=conn.prepareStatement(sql);
	         
	         psmt.setString(1, article_seq);
	         
	         rs = psmt.executeQuery();

	         while (rs.next()) {
	        	mb_id = rs.getString("mb_id"); 
	        	System.out.println("DAO 작성자 아이디 : "+mb_id);
	         }
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         dbClose();
	      } return mb_id;
	      
	   }

 //페이징 메소드
 	public int getCount() {
 			 // 작성자 : 준영
 			 getConn();
 				try {
 					String sql = "select count(*) from t_community";
 					
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
 	
 	public int getSelectCount(String num) {
		 // 작성자 : 준영
		 getConn();
			try {
				String sql = "select count(*) from t_community where location_num = ?";
				
				PreparedStatement psmt=conn.prepareStatement(sql);
				psmt.setString(1, num);
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
 	
 // 게시판 조회수
    public void count(String article_seq) {
    	getConn();
       int article_cnt = 0;
       try {
          String sql = "select article_cnt from t_community where article_seq = ?";
          
          psmt = conn.prepareStatement(sql);
          
          psmt.setString(1, article_seq);
          rs = psmt.executeQuery();
          
          if(rs.next()) {
             article_cnt = rs.getInt(1);
             article_cnt++;
          }
          
          String sql1 = "update t_community set article_cnt = ? where article_seq = ?";
          psmt = conn.prepareStatement(sql1);
          psmt.setInt(1, article_cnt);
          psmt.setString(2, article_seq);
          psmt.executeUpdate();
          
       } catch (Exception e) {
          e.printStackTrace();
       } finally {
    	   dbClose();
       }
    }
    
    public ArrayList<CommunityDTO> selectLocation(String num) {
        getConn();
        ArrayList<CommunityDTO> list = new ArrayList<CommunityDTO>();

        try {
           String sql = "select * from t_community where location_num = ? order by reg_date desc";

           psmt = conn.prepareStatement(sql);
           psmt.setString(1, num);

           rs = psmt.executeQuery();

           while (rs.next()) {
              int article_seq = rs.getInt("article_seq");
              String article_title = rs.getString("article_title");
              String mb_id = rs.getString("mb_id");
              Date reg_date = rs.getDate("reg_date");

              dto = new CommunityDTO(article_seq, article_title, mb_id, reg_date);
              list.add(dto);
           }
           System.out.println(list);
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
           dbClose();
        }
        return list;
     }
}