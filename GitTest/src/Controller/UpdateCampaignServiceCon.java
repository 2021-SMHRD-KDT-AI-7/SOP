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
import Model.CommunityDAO;
import Model.CommunityDTO;

@WebServlet("/UpdateCampaignServiceCon")
public class UpdateCampaignServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/image";
		int maxSize = 1024 * 1024 * 10;
		String encoding = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		String cam_title = multi.getParameter("cam_title");
		String cam_content = multi.getParameter("cam_content");
		String cam_start = multi.getParameter("cam_start");
		String cam_finish = multi.getParameter("cam_finish");
		int cam_seq = Integer.parseInt(multi.getParameter("cam_seq"));
	
		String cam_file1 = null;
		
		if(multi.getFilesystemName("cam_file1") != null) {
			cam_file1 = URLEncoder.encode(multi.getFilesystemName("cam_file1"), "euc-kr");
		} else {
			cam_file1="null";
		}
	
		CampaignDTO dto = new CampaignDTO(cam_seq, cam_title, cam_content, cam_file1, cam_start, cam_finish);
		
		CampaignDAO dao = new CampaignDAO();
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("캠페인 정보수정 성공");
		}else {
			System.out.println("캠페인 정보수정 실패");
		}
		response.sendRedirect("./Resources/campaign.jsp");
		
	}

}
