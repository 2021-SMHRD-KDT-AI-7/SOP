package Model;

import java.util.ArrayList;

public class DailyMissionDAO {

	
	public String dm_title(int num) {
		
		ArrayList <String> dm_title = new ArrayList<>();
		
		
		dm_title.add("����µ� 2�� ���߱�");
		dm_title.add("������ ���±�� ��� ���̱�");
		
		
		
		
		return dm_title.get(num);
	}
	
	public String dm_value(int num) {
		
		ArrayList <String> dm_value = new ArrayList<>();
		
		dm_value.add("������ ���� �ǳ��µ�(�ܿ�ö 18~20��)�� ����Ͽ�, ���Ϸ� �µ� ������ 2�� ���߱�. </br> �ܿ￡�� ����, ����縻, ������� ���� ���¿�ǰ ���� Ȱ���ϱ�");
		dm_value.add("�������� ��綧�� ����ϰ� ���� ���� ��ŭ�� ����. ���� ���� ���� ��ŭ�� ���� �õ��ϱ�");
		
		
		return dm_value.get(num);
	}
	
	
}
