package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommentDAO;

@WebServlet("/CommentDeleteServiceCon")
public class CommentDeleteServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("!CommentDeleteCon");
		
		CommentDAO dao = new CommentDAO();
		
		String comment_seq = request.getParameter("comment_seq");
		
		System.out.println(comment_seq);
		
		
		int cnt = dao.deleteOne(comment_seq);
		
		if(cnt>0) {
			System.out.println("댓글 개별 삭제 성공");
		}else {
			System.out.println("댓글 개별 삭제 실패");
		}
	}

}
