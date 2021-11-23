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
		
		dm_title.add("난방온도 2℃ 낮추기");
		dm_value.add("동절기 적정 실내온도(겨울철 18~20℃)를 고려하여, 보일러 온도 설정시 2℃ 낮추기");
		dm_title.add("전기밥솥 보온기능 사용 줄이기");
		dm_title.add("전기밥솥은 취사때만 사용하고 밥을 먹을 만큼만 짓기. 남은 밥은 먹을 만큼씩 나눠 냉동하기");
		
		System.out.println(dm_title.get(0));
		
		
		
	}

}
