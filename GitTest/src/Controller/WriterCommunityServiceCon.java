package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityDTO;
import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/WriterCommunityServiceCon")
public class WriterCommunityServiceCon extends HttpServlet {
   private static final String String = null;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[WriterCommunityServiceCon]");
      
      request.setCharacterEncoding("euc-kr");
      
      
      String article_file1 = null;
      

      String saveDirectory = "C:/Users/smhrd/Desktop/SOP/SOP/GitTest/WebContent/Resources/image";
      //String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/image";
      //String saveDirectory = "C:/Users/smhrd/git/SOP/GitTest/WebContent/Resources/image";
      //String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/image";
      //String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/assets/images";

      
      int maxSize = 1024 * 1024 * 10;
      String encoding = "euc-kr";
      
      MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
      
      String article_title = multi.getParameter("article_title");
      String article_content = multi.getParameter("article_content");
      String mb_id = multi.getParameter("mb_id");
      int location_num = Integer.parseInt(multi.getParameter("location_num"));
      
      
      
      
      if(multi.getFilesystemName("article_file1") != null) {
         article_file1 = URLEncoder.encode(multi.getFilesystemName("article_file1"), "euc-kr");
      } else {
         article_file1="null";
      }
      System.out.println(article_file1);
   
      
      CommunityDTO dto=new CommunityDTO(article_title, article_content, mb_id, article_file1, location_num);
      CommunityDAO dao=new CommunityDAO();
      int cnt=dao.upload(dto);
      
      
      if(cnt>0) {
    	  
    	  //포인트있는 db table 현재 로그인한 사용자의 포인트 만 가지고옴
    	  //세션을 재생성 (info) -> (원래아이디, 새로운 포인트값)
    	  
			/*
			 * MemberDAO m_dao = new MemberDAO(); int new_point = m_dao.point(s_mb_id);
			 * 
			 * HttpSession session2 = request.getSession(); session2.setAttribute(s_mb_id,
			 * s_mb_pwd); session2.setAttribute("info", info); mb_point = new_point;
			 * 
			 * dao.articleUp(s_mb_id, mb_point);
			 */
    	 System.out.println("파일업로드 성공");
      }else {
         System.out.println("파일업로드 실패");
      }
      
      response.sendRedirect("./Resources/Community.jsp");//게시판 메인으로 보내기
      
   }
   

}