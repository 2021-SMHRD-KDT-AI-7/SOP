package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DailyMission")
public class DailyMission extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList <String> dm_title = new ArrayList<>();
		ArrayList <String> dm_value = new ArrayList<>();
		
		dm_title.add("����µ� 2�� ���߱�");
		dm_value.add("������ ���� �ǳ��µ�(�ܿ�ö 18~20��)�� ����Ͽ�, ���Ϸ� �µ� ������ 2�� ���߱�");
		dm_title.add("������ ���±�� ��� ���̱�");
		dm_title.add("�������� ��綧�� ����ϰ� ���� ���� ��ŭ�� ����. ���� ���� ���� ��ŭ�� ���� �õ��ϱ�");
		
		System.out.println(dm_title.get(0));
		
		
		
	}

}
