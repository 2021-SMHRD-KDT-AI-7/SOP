package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/LoginServiecCon")
public class LoginServiecCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[LoginServiecCon]");
		
		// 1. post ��� ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		// 2. �� �޾ƿ��� (email,pw)
		String mb_id = request.getParameter("mb_id");
		String mb_pwd = request.getParameter("mb_pwd");
		
		System.out.println("mb_id: " +mb_id);
		System.out.println("mb_pwd: " +mb_pwd);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(mb_id, mb_pwd);
		
		if(info != null) {
			System.out.println("�α��� ����");
			// session���� �α��� ����
			HttpSession session = request.getSession();
			session.setAttribute("info", info); // object ���¶� MemberDTO ���·� ���� �� �ִ�
		}else {
			System.out.println("�α��� ����");
		}
		
		response.sendRedirect("index.html");
	}

}
