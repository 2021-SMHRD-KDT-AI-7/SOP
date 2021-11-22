package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityDAO;

@WebServlet("/CommunityDeleteOneServiceCon")
public class CommunityDeleteOneServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[CommunityDeleteOneServiceCon]");
		
		String article_seq=request.getParameter("article_seq");
		
		System.out.println("게시판의 고유한 값:"+article_seq);
		
		CommunityDAO dao=new CommunityDAO();
		int cnt=dao.deleteOne(article_seq);
		
		if(cnt>0) {
			System.out.println("게시판 개별 삭제 성공");
		}else {
			System.out.println("게시판 개별 삭제 실패");
		}
		response.sendRedirect("./Resources/Community.jsp");
	}

}
