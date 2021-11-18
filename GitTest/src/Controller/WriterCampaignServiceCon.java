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

@WebServlet("/WriterCampaignServiceCon")
public class WriterCampaignServiceCon extends HttpServlet {
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
		String cam_start = multi.getParameter("cam_start");
		String cam_finish = (String)multi.getParameter("cam_finish");
		
		if(multi.getFilesystemName("file1") != null) {
			fileName = URLEncoder.encode(multi.getFilesystemName("file1"), "euc-kr");
		} else {
			fileName="null";
		}
		
		
		
		System.out.println("title : " + title);
		System.out.println("writer : " + writer);
		System.out.println("content : " + content);
		System.out.println("cam_start : " + cam_start);
		System.out.println("cam_finish : " + cam_finish);
		System.out.println("fileName : " + fileName);
		
		
	}

}
