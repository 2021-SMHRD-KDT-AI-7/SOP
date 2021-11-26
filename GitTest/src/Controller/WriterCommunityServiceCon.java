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
import Model.MemberDTO;

@WebServlet("/WriterCommunityServiceCon")
public class WriterCommunityServiceCon extends HttpServlet {
   private static final String String = null;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[WriterCommunityServiceCon]");
      
      request.setCharacterEncoding("euc-kr");
      
      HttpSession session = request.getSession();
      MemberDTO info=(MemberDTO)session.getAttribute("info"); 
      
      String s_mb_id = info.getMb_id();
      int mb_point = info.getMb_point();
      
      
      String article_file1 = null;
      

      String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/image";

      
      int maxSize = 1024 * 1024 * 10;
      String encoding = "euc-kr";
      
      MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
      
      String article_title = multi.getParameter("article_title");
      String article_content = multi.getParameter("article_content");
      String mb_id = multi.getParameter("mb_id");
      
      
      
      if(multi.getFilesystemName("article_file1") != null) {
         article_file1 = URLEncoder.encode(multi.getFilesystemName("article_file1"), "euc-kr");
      } else {
         article_file1="null";
      }
   
      System.out.println("article_title : " + article_title);
      System.out.println("article_content : " + article_content);
      System.out.println("mb_id : " + mb_id);
      System.out.println("article_file1 : " + article_file1);
      
      CommunityDTO dto=new CommunityDTO(article_title, article_content, mb_id, article_file1);
      CommunityDAO dao=new CommunityDAO();
      int cnt=dao.upload(dto);
      
      if(cnt>0) {
    	  dao.articleUp(s_mb_id, mb_point);
    	  // 세션 업데이트 
    	  request.getSession().removeAttribute("info");
    	  request.getSession().setAttribute("info", info);
         System.out.println("파일업로드 성공");
      }else {
         System.out.println("파일업로드 실패");
      }
      response.sendRedirect("./Resources/Community.jsp");//게시판 메인으로 보내기
      
   }
   

}