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

@WebServlet("/searchpwCon")
public class searchpwCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("[searchpwCon]");

		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("mb_id");
		String birthdate = request.getParameter("mb_birthdate");
		String phone=request.getParameter("mb_phone");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.searchpw(id, birthdate, phone);
		
		
		if(info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		
		System.out.println("mb_id : " + id);
		System.out.println("mb_birthdate : " + birthdate);
		System.out.println("mb_phone : " +phone );
		
		response.sendRedirect("./Resources/index.jsp");
		
	}

}
