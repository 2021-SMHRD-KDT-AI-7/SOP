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

@WebServlet("/UpdateCommunityServiceCon")
public class UpdateCommunityServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[UpdateCommunityServiceCon]");
		
		//1.post��� ���ڵ�
				request.setCharacterEncoding("euc-kr");
				
				//2.������ �� �޾ƿ���
				String saveDirectory = "C:/Users/smhrd/git/SOP/GitTest/WebContent/Resources/image";
				int maxSize = 1024 * 1024 * 10;
				String encoding = "euc-kr";
				
				MultipartRequest multi = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
				
				String article_title = multi.getParameter("article_title");
				String article_content = multi.getParameter("article_content");
				String mb_id = multi.getParameter("mb_id");
				
				System.out.println("article_title:"+article_title);
				System.out.println("article_content:"+article_content);
				
				
				//3.session���� �α��� �� �������� mb_id��������
				HttpSession session=request.getSession();
				
		
				String c_article_title = (String)session.getAttribute(article_title);
				String c_article_content = (String)session.getAttribute(article_content);
				// String c_article_file1 = (String)session.getAttribute(article_file1);
				String c_article_file1 = null;
				
				if(multi.getFilesystemName("article_file1") != null) {
					c_article_file1 = URLEncoder.encode(multi.getFilesystemName("article_file1"), "euc-kr");
				} else {
					c_article_file1="null";
				}
				
				//change ���濡 ������ ������ �ٽ� �־��ֱ�
				CommunityDTO change=new CommunityDTO(c_article_title,c_article_content,c_article_file1, mb_id);
				
				CommunityDAO dao=new CommunityDAO();
				int cnt=dao.update(change);
				
				if(cnt>0) {
					System.out.println("�Խ����������� ����");
					//������ ������ session ������Ʈ
					session.setAttribute("change", change);
				}else {
					System.out.println("�Խ����������� ����");
				}
				response.sendRedirect("./Resources/Community.jsp");
	}

}
