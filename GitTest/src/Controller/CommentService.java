package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.CommentDAO;
import Model.CommentDTO;
import Model.CommunityDAO;
import Model.MemberDTO;

@WebServlet("/CommentService")
public class CommentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("!S");
	
	//int comment_seq = Integer.parseInt(request.getParameter("comment_seq"));
	
	HttpSession session = request.getSession();
	
	MemberDTO info=(MemberDTO)session.getAttribute("info");
		System.out.println("���� Ȯ��:"+info);
	int article_seq=Integer.parseInt(request.getParameter("article_seq"));
	String comment = request.getParameter("comment");
	String mb_id = info.getMb_id();
	int mb_point = info.getMb_point();
		System.out.println(mb_id);
	CommentDTO dto = new CommentDTO(article_seq, comment, mb_id);
	
	CommentDAO cmt_dao = new CommentDAO();
	CommunityDAO dao = new CommunityDAO();
	int cnt = dao.cmt_upload(dto);
	
	if(cnt>0) {
		// ��� ��ϼ����ϸ� ����Ʈ+1��!
		cmt_dao.commentUp(mb_id, mb_point);
		
		System.out.println("��� ��� ����");
	}else {
		System.out.println("��� ��� ����");
	}
	
	
	PrintWriter out = response.getWriter();
	out.print("data");
	
	}

}
