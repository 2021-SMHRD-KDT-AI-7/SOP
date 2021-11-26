package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;

@WebServlet("/UpdateMypageServiceCon")
public class UpdateMypageServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String mb_id = request.getParameter("mb_id");
		String mb_pwd = request.getParameter("mb_pwd");
		String mb_name = request.getParameter("mb_name");
		String mb_nickname = request.getParameter("mb_nickname");
		int mb_point = Integer.parseInt(request.getParameter("mb_point"));
		int mb_grade = Integer.parseInt(request.getParameter("mb_grade"));
		String mb_birthdate = request.getParameter("mb_birthdate");
		String mb_addr = request.getParameter("mb_addr");
		String mb_email = request.getParameter("mb_email");
		String mb_phone = request.getParameter("mb_phone");

		MemberDAO dao = new MemberDAO();
		int cnt = dao.update(mb_id, mb_pwd, mb_name, mb_nickname, mb_point, mb_grade, mb_birthdate, mb_addr, mb_email, mb_phone);
		
		if (cnt > 0) {
			System.out.println("정보수정 성공");
			response.sendRedirect("./Resources/index.jsp");
		} else {
			System.out.println("정보수정 실패");
			response.sendRedirect("./Resources/index.jsp");
		}
	}

}
