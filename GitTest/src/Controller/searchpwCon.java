package Controller;

import java.io.IOException;
import java.io.PrintWriter;

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
			System.out.println("비밀번호 는 "+info.getMb_pwd()+"입니다");
//			HttpSession session = request.getSession();
//			session.setAttribute("info", info);
		}
		
		System.out.println("mb_id : " + id);
		System.out.println("mb_birthdate : " + birthdate);
		System.out.println("mb_phone : " +phone );
		
<<<<<<< HEAD
		
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter writer = response.getWriter(); 
		String PageUrl = "./Resources/index.jsp";
		// writer.println("<script>alert(name+'님의 id 는 '+info.getMb_id()+'입니다');location.href='"+PageUrl+"';</script>"); 
		writer.println("<script>alert('PW는 '+ '"+info.getMb_pwd()+"' +' 입니다');location.href='"+PageUrl+"';</script>"); 
		writer.close();
		
		//response.sendRedirect("./Resources/index.jsp");
=======
		response.sendRedirect("./Resources/index.html");
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-7/SOP.git
		
	}

}
