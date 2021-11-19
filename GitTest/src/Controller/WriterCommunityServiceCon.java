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
		
		String fileName = null;
		
		String saveDirectory = request.getServletContext().getRealPath("file");
		
		
		int maxSize = 1024 * 1024 * 10;
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		
		
		if(multi.getFilesystemName("file1") != null) {
			fileName = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} else {
			fileName="null";
		}
		
		
		
		System.out.println("title : " + title);
		System.out.println("writer : " + writer);
		System.out.println("content : " + content);
		System.out.println("fileName : " + fileName);
		
		CommunityDTO dto=new CommunityDTO(title, writer, content, fileName);
		CommunityDAO dao=new CommunityDAO();
		int cnt=dao.upload(dto);
		
		if(cnt>0) {
			System.out.println("파일업로드 성공");
		}else {
			System.out.println("파일업로드 실패");
		}
		response.sendRedirect("#");//게시판 메인으로 보내기
		
	}
	

}
