package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityDTO;

@WebServlet("/WriterCommunityServiceCon")
public class WriterCommunityServiceCon extends HttpServlet {
	private static final String String = null;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String article_file1 = null;
		

		String saveDirectory = "C:/Users/smhrd/git/SOP/GitTest/WebContent/Resources/image";

<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-7/SOP.git
		
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
			System.out.println("파일업로드 성공");
		}else {
			System.out.println("파일업로드 실패");
		}
		response.sendRedirect("./Resources/Community.jsp");//게시판 메인으로 보내기
		
	}
	

}
