package Model;

public class MemberDTO {
	
	private String mb_id;
	private String mb_pwd;
	private String mb_name;
	private String mb_nickname;
	private String mb_birthdate;
	private String mb_addr;
	private String mb_point;
	private String mb_email;
	private String mb_phone;
	private String mb_gender;
	private String mb_path;
	private String mb_grade;
	private String mb_joindate;
	private String admin_yn;
	
	
	public MemberDTO(String mb_id, String mb_pwd, String mb_name, String mb_nickname, String mb_birthdate,
			String mb_addr, String mb_point, String mb_email, String mb_phone, String mb_gender, String mb_path,
			String mb_grade, String mb_joindate, String admin_yn) {
		this.mb_id = mb_id;
		this.mb_pwd = mb_pwd;
		this.mb_name = mb_name;
		this.mb_nickname = mb_nickname;
		this.mb_birthdate = mb_birthdate;
		this.mb_addr = mb_addr;
		this.mb_point = mb_point;
		this.mb_email = mb_email;
		this.mb_phone = mb_phone;
		this.mb_gender = mb_gender;
		this.mb_path = mb_path;
		this.mb_grade = mb_grade;
		this.mb_joindate = mb_joindate;
		this.admin_yn = admin_yn;
	}
	
	
	
	
	
	

}
