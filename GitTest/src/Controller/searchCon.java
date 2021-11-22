package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;
import Model.MemberDTO;

@WebServlet("/searchCon")
public class searchCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[searchCon]");

		request.setCharacterEncoding("euc-kr");
		
		String mb_name = request.getParameter("name");
		String mb_year = request.getParameter("mb_year");
		String mb_month = request.getParameter("mb_month");
		String mb_day = request.getParameter("mb_day");
		String mb_phone=request.getParameter("phone");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.search(name, mb_year,mb_month,mb_day,phone);
		
	}

}
