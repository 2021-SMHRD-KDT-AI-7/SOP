package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.CommunityDAO;
import Model.CommunityDTO;
import Model.MemberDTO;

@WebServlet("/UpdateCommunityServiceCon")
public class UpdateCommunityServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[UpdateCommunityServiceCon]");
		
		//1.post��� ���ڵ�
				request.setCharacterEncoding("euc-kr");
				
				//2.������ �� �޾ƿ���
				String saveDirectory = "C:/Users/smhrd/git/SOP2/GitTest/WebContent/Resources/image";
				int maxSize = 1024 * 1024 * 10;
				String encoding = "euc-kr";
				
				//3.session���� �α��� �� �������� mb_id��������
				
				
				MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
				
				String article_title = multi.getParameter("article_title");
				String article_content = multi.getParameter("article_content");
				int article_seq = Integer.parseInt(multi.getParameter("article_seq"));
				
				System.out.println("article_title:"+article_title);
				System.out.println("article_content:"+article_content);
				System.out.println("article_seq:"+article_seq);
				
				
				
				String c_article_file1 = null;
				
				if(multi.getFilesystemName("article_file1") != null) {
					c_article_file1 = URLEncoder.encode(multi.getFilesystemName("article_file1"), "euc-kr");
				} else {
					c_article_file1="null";
				}
				
				//change ���濡 ������ ������ �ٽ� �־��ֱ�
				CommunityDTO change=new CommunityDTO(article_seq, article_title,article_content,c_article_file1);
				
				CommunityDAO dao=new CommunityDAO();
				int cnt=dao.update(change);
				System.out.println(cnt);
				
				if(cnt>0) {
					System.out.println("�Խ����������� ����");
				}else {
					System.out.println("�Խ����������� ����");
				}
				response.sendRedirect("./Resources/Community.jsp");
	}

}
