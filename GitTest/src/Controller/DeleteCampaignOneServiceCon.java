package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CampaignDAO;
import Model.CommunityDAO;

@WebServlet("/DeleteCampaignOneServiceCon")
public class DeleteCampaignOneServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cam_seq = Integer.parseInt(request.getParameter("cam_seq"));
		
		CampaignDAO dao=new CampaignDAO();
		
		int cnt = dao.deleteOne(cam_seq);
		
		if(cnt > 0) {
			System.out.println("파일 업로드 성공");
		}
		else {
			System.out.println("파일 업로드 실패");
		}
		
		response.sendRedirect("./Resources/campaign.jsp");
		
	}

}
