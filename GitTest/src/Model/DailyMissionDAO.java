package Model;

import java.util.ArrayList;

public class DailyMissionDAO {

	
	public String dm_title(int num) {
		
		ArrayList <String> dm_title = new ArrayList<>();
		
		
		dm_title.add("난방온도 2℃ 낮추기");
		dm_title.add("전기밥솥 보온기능 사용 줄이기");
		
		
		
		
		return dm_title.get(num);
	}
	
	public String dm_value(int num) {
		
		ArrayList <String> dm_value = new ArrayList<>();
		
		dm_value.add("동절기 적정 실내온도(겨울철 18~20℃)를 고려하여, 보일러 온도 설정시 2℃ 낮추기. </br> 겨울에는 내복, 수면양말, 무릎담요 같은 보온용품 적극 활용하기");
		dm_value.add("전기밥솥은 취사때만 사용하고 밥을 먹을 만큼만 짓기. 남은 밥은 먹을 만큼씩 나눠 냉동하기");
		
		
		return dm_value.get(num);
	}
	
	
}
