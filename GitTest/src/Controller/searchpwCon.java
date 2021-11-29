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
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = response.getWriter(); 
		String PageUrl = "./Resources/main.jsp";
		// writer.println("<script>alert(name+'님의 id 는 '+info.getMb_id()+'입니다');location.href='"+PageUrl+"';</script>"); 
		
		
		if(info != null) {
			writer.println("<script>alert('PW는 '+ '"+info.getMb_pwd()+"' +' 입니다');location.href='"+PageUrl+"';</script>"); 
			writer.close();
//			HttpSession session = request.getSession();
//			session.setAttribute("info", info);
		}else {
			writer.println("<script>alert('해당정보가 없습니다');location.href='"+PageUrl+"';</script>"); 
			writer.close();
			
			
		}
		



		
		//response.sendRedirect("./Resources/index.jsp");

		response.sendRedirect("./Resources/main.jsp");

	}

}
