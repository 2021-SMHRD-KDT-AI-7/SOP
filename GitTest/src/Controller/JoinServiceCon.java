package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDAO;


@WebServlet("/JoinServiceCon")
public class JoinServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinServiceCon]");

		// 1. post 방식 인코딩
		request.setCharacterEncoding("EUC-KR");

		// 2. eamil, pw, tel, address 값 받아오기
		String mb_id = request.getParameter("mb_id");
		String mb_pwd = request.getParameter("mb_pwd");
		String mb_name = request.getParameter("mb_name");
		String mb_nickname = request.getParameter("mb_nickname");
		String mb_year = request.getParameter("mb_year");
		String mb_month = request.getParameter("mb_month");
		String mb_day = request.getParameter("mb_day");
		String mb_addr = request.getParameter("mb_addr");
		String mb_email = request.getParameter("mb_email");
		String mb_phone = request.getParameter("mb_phone");
		String mb_gender = request.getParameter("mb_gender");
		if(mb_gender.equals("M")){
			mb_gender="M";
		} else if (mb_gender.equals("F")) {
			mb_gender="F";
		}
		String mb_birthdate = mb_year + mb_month + mb_day;
		System.out.println(mb_birthdate);
		
		System.out.println("mb_id: " +mb_id);
		System.out.println("mb_pwd: " +mb_pwd);
		System.out.println("mb_name: " +mb_name);
		System.out.println("mb_nickname: " +mb_nickname);
		System.out.println("mb_year: " + mb_year);
		System.out.println("mb_month: " + mb_month);
		System.out.println("mb_day: " + mb_day);
		System.out.println("mb_addr: " +mb_addr);
		System.out.println("mb_email: " +mb_email);
		System.out.println("mb_phone: " +mb_phone);
		System.out.println("mb_gender: " +mb_gender);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(mb_id, mb_pwd, mb_name, mb_nickname, mb_birthdate, mb_addr, mb_email, mb_phone, mb_gender);
				

		String path = null;
		
		if (cnt > 0) {
			System.out.println("회원가입 성공");
			response.sendRedirect("./Resources/index.html");
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("./Resources/index.html");
		}
		
	}

}
