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
		
		// 1. post 방식 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 2. 값 받아오기 (email,pw)
		String mb_id = request.getParameter("mb_id");
		String mb_pwd = request.getParameter("mb_pwd");
		
		System.out.println("mb_id: " +mb_id);
		System.out.println("mb_pwd: " +mb_pwd);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.login(mb_id, mb_pwd);
		
		if(info != null) {
			System.out.println("로그인 성공");
			// session으로 로그인 정보
			HttpSession session = request.getSession();
			session.setAttribute("info", info); // object 형태라서 MemberDTO 형태로 담을 수 있다
		}else {
			System.out.println("로그인 실패");
		}
		
		response.sendRedirect("index.html");
	}

}
