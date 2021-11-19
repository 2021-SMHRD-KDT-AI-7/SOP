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

import Model.CampaignDAO;
import Model.CampaignDTO;

@WebServlet("/WriterCampaignServiceCon")
public class WriterCampaignServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("euc-kr");
		
		String cam_file1 = null;
		
		String saveDirectory = request.getServletContext().getRealPath("file");
		
		System.out.println(saveDirectory);
		
		
		int maxSize = 1024 * 1024 * 10;
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String cam_title = multi.getParameter("cam_title");
		String mb_id = multi.getParameter("mb_id");
		String cam_content = multi.getParameter("cam_content");
		String cam_start = multi.getParameter("cam_start");
		String cam_finish = (String)multi.getParameter("cam_finish");
		
		if(multi.getFilesystemName("cam_file1") != null) {
			cam_file1 = URLEncoder.encode(multi.getFilesystemName("cam_file1"), "euc-kr");
		} else {
			cam_file1="null";
		}
		

		System.out.println("title : " + cam_title);
		System.out.println("writer : " + mb_id);
		System.out.println("content : " +cam_content );

		
		
		System.out.println("cam_title : " + cam_title);
		System.out.println("mb_id : " + mb_id);
		System.out.println("cam_content : " + cam_content);

		System.out.println("cam_start : " + cam_start);
		System.out.println("cam_finish : " + cam_finish);
		System.out.println("fileName : " + cam_file1);
		
		CampaignDTO dto = new CampaignDTO(cam_title, cam_content, mb_id, cam_file1, cam_start, cam_finish);

		CampaignDAO dao = new CampaignDAO();
		int cnt = dao.upload(dto);
		
		if(cnt > 0) {
			System.out.println("파일 업로드 성공");
		}
		else {
			System.out.println("파일 업로드 실패");
		}
		
		response.sendRedirect("./Resources/campaign.jsp");
	}

}
