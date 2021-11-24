package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CampaignDAO;
import Model.CampaignDTO;

@WebServlet("/AcceptCampaignServiceCon")
public class AcceptCampaignServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");
		
		int cam_seq = Integer.parseInt(request.getParameter("cam_seq"));
		
		String cam_accept = "Y";
		
		CampaignDTO dto = new CampaignDTO(cam_accept, cam_seq);
		

		CampaignDAO dao = new CampaignDAO();
		int cnt = dao.accept(dto);
		
		
		if(cnt > 0) {
			System.out.println("캠페인 수락 성공");
		}
		else {
			System.out.println("캠페인 수락 실패");
		}
		
		response.sendRedirect("./Resources/campaign.jsp");
	}
		
		
	

}
