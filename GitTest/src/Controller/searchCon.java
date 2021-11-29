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

@WebServlet("/searchCon")
public class searchCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[searchCon]");

		request.setCharacterEncoding("euc-kr");
		
		String name = request.getParameter("mb_name");
		String birthdate = request.getParameter("mb_birthdate");
		String phone=request.getParameter("mb_phone");
		
		MemberDAO dao = new MemberDAO();
		MemberDTO info = dao.searchid(name, birthdate, phone);
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = response.getWriter(); 
		String PageUrl = "./Resources/main.jsp";
		// writer.println("<script>alert(name+'님의 id 는 '+info.getMb_id()+'입니다');location.href='"+PageUrl+"';</script>"); 
		
		if(info != null) {
			writer.println("<script>alert('ID는 '+ '"+info.getMb_id()+"' +' 입니다');location.href='"+PageUrl+"';</script>"); 
			writer.close();
//			HttpSession session = request.getSession();
//			session.setAttribute("info", info);
		}else {
			writer.println("<script>alert('일치하는 id가 없습니다');location.href='"+PageUrl+"';</script>"); 
			writer.close();
		}
		

		
		
//		response.sendRedirect("./Resources/index.jsp");
		
		
	}

}
