package Model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class DailyMissionDAO {

	
	public String dm_title(int num) {
		
		ArrayList <String> dm_title = new ArrayList<>();
		
		
		dm_title.add("난방온도 2℃ 낮추기");
		dm_title.add("전기밥솥 보온기능 사용 줄이기");
		dm_title.add("냉장고 적정용량 유지하기");
		dm_title.add("비데 절전기능 사용하기");
		dm_title.add("물은 받아서 사용하기");
		dm_title.add("텔레비전 시청 시간 줄이기");
		dm_title.add("디지털 탄소발자국 줄이기");
		dm_title.add("주기적으로 보일러 청소하기");
		dm_title.add("가정 내 지역난방배관 청소하기");
		dm_title.add("저탄소 제품 구매하기");
		dm_title.add("중고제품 이용하고 안 쓴는 제품은 나눔하기");
		dm_title.add("개인용 자동차 대신 대중교통 이용하기");
		dm_title.add("재활용을 위한 분리배출 실천하기");
		dm_title.add("1회용 컵 대신 다회용 컵 사용하기");	
		
		return dm_title.get(num);
	}
	
	
	public String dm_value(int num) {
		
		ArrayList <String> dm_value = new ArrayList<>();
		
		dm_value.add("동절기 적정 실내온도(겨울철 18~20℃)를 고려하여, 보일러 온도 설정시 2℃ 낮추기. </br> 겨울에는 내복, 수면양말, 무릎담요 같은 보온용품 적극 활용하기");
		dm_value.add("전기밥솥은 취사때만 사용하고 밥을 먹을 만큼만 짓기. </br>남은 밥은 먹을 만큼씩 나눠 냉동하기.");
		dm_value.add("냉장실은 냉기가 잘 순환할 수 있도록 60%만 채우기. </br>냉동실은 냉기가 빠지지 않도록 꽉 채우기.");
		dm_value.add("비데에 절전모드가 탑재된 제품을 구매하고 상시 절전모드 설정하기");
		dm_value.add("설거지할 때 설거지통 사용하기 : 설거지통에 물을 담아 그릇의 음식물을 불리고 간단히 헹구는데 물을 사용한다면 물을 약 60%(10분 기준, 120L~72L) 절약. </br>양치할 때 컵 사용하기 : 양치할 때 입을 헹구는 동안 물을 계속 틀어 놓는다면 물이 약 36L(3회기준) 사용되나 컵을 사용하면 1L 이하만 소모");
		dm_value.add("텔레비전 보는 시간을 매일 1시간 줄이기. </br>텔레비전 시청 관련 기기(셋톱박스, 스피커 등) 사용에 따른 소비전력 감소");
		dm_value.add("디지털 기기 사용시간을 줄이고, 화면은 '절전모드', '밝기 조절'로 밝기 낮게 설정하기. </br>동영상은 데이터 사용량을 고려해 스트리밍보다 직접 내려받아서 시청하기. 불필요한 메일은 정리(완전 삭제)하고 광고성 스팸메일 차단하기");
		dm_value.add("직접 개별난방 보일러 청소하기. </br>개별난방 보일러 전문업체에 의뢰해 작업 가능");
		dm_value.add("각 가정 내에 설치된 계량기, 온도조절기 등은 각 가정에서 관리하는 대상. </br>직접 배관을 청소할 때 카트리지 분해 청소는 미세한 솔이나 열교환기 세척약품등을 활용하여 청소 (전문업체에 맡겨 작업 가능)");
		dm_value.add("저탄소제품 인증 마크 또는 탄소발자국을 확인하고 구매하기. </br>세제나 샴푸, 섬유유연제, 탈취제 등은 재구매 시 리필용 제품으로 구매하기");
		dm_value.add("필요성이 다한 물건은 버리기 전에 중고거래나 나눔장터에서 쓰임새 찾기. </br>물건을 구매하기 전에 꼭 필요한지, 중고물품으로 구매할 수 있는지 확인하기");
		dm_value.add("버스, 지하철, 기차 등 대중교통 적극 이용하기");
		dm_value.add("재활용품별 분리배출 방법에 따라 올바르게 분리배출 하기. </br>재활용품으로 헷갈리기 쉬운 폐기물은 종량제 봉투에 담아 배출");
		dm_value.add("실내에서는 개인 컵을 사용하고, 외출할 때는 휴대하기 편한 텀블러 사용하기");
		
		return dm_value.get(num);
	}
	
	public int getDayOfweek(){ 
		
		LocalDate now = LocalDate.now();
		String dayOfWeek = now.getDayOfWeek().toString();
		int dayOfWeekValue = now.getDayOfWeek().getValue();
		int day = dayOfWeekValue-1;
		
		return day;
	
	}

	
	
}
