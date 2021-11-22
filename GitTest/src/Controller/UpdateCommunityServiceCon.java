package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommunityDAO;
import Model.CommunityDTO;

@WebServlet("/UpdateCommunityServiceCon")
public class UpdateCommunityServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[UpdateCommunityServiceCon]");
		
		//1.post��� ���ڵ�
				request.setCharacterEncoding("euc-kr");
				
				//2.������ �� �޾ƿ���
				String article_title=request.getParameter("article_title");
				String article_content=request.getParameter("article_content");
				String article_file1=request.getParameter("article_file1");
				
				
				System.out.println("article_title:"+article_title);
				System.out.println("article_content:"+article_content);
				System.out.println("article_file1:"+article_file1);
				
				
				
				//3.session���� �α��� �� �������� mb_id��������
				HttpSession session=request.getSession();
				CommunityDTO change=(CommunityDTO)session.getAttribute("change");
				
				String mb_id=change.getMb_id();
				
				//change ���濡 ������ ������ �ٽ� �־��ֱ�
				change=new CommunityDTO(article_title,article_content,article_file1);
				
				CommunityDAO dao=new CommunityDAO();
				int cnt=dao.update(change);
				
				if(cnt>0) {
					System.out.println("�Խ����������� ����");
					//������ ������ session ������Ʈ
					session.setAttribute("change", change);
				}else {
					System.out.println("�Խ����������� ����");
				}
				response.sendRedirect("./Resources/Community.jsp");
	}

}
