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
	
	


	public MemberDTO(String mb_id, String mb_pwd, String mb_nickname) {
		this.mb_id = mb_id;
		this.mb_pwd = mb_pwd;
		this.mb_nickname = mb_nickname;
	}


	public MemberDTO(String mb_id) {
		this.mb_id = mb_id;
	}
	


	public String getMb_id() {
		return mb_id;
	}


	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}


	public String getMb_pwd() {
		return mb_pwd;
	}


	public void setMb_pwd(String mb_pwd) {
		this.mb_pwd = mb_pwd;
	}


	public String getMb_name() {
		return mb_name;
	}


	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}


	public String getMb_nickname() {
		return mb_nickname;
	}


	public void setMb_nickname(String mb_nickname) {
		this.mb_nickname = mb_nickname;
	}


	public String getMb_birthdate() {
		return mb_birthdate;
	}


	public void setMb_birthdate(String mb_birthdate) {
		this.mb_birthdate = mb_birthdate;
	}


	public String getMb_addr() {
		return mb_addr;
	}


	public void setMb_addr(String mb_addr) {
		this.mb_addr = mb_addr;
	}


	public String getMb_point() {
		return mb_point;
	}


	public void setMb_point(String mb_point) {
		this.mb_point = mb_point;
	}


	public String getMb_email() {
		return mb_email;
	}


	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}


	public String getMb_phone() {
		return mb_phone;
	}


	public void setMb_phone(String mb_phone) {
		this.mb_phone = mb_phone;
	}


	public String getMb_gender() {
		return mb_gender;
	}


	public void setMb_gender(String mb_gender) {
		this.mb_gender = mb_gender;
	}


	public String getMb_path() {
		return mb_path;
	}


	public void setMb_path(String mb_path) {
		this.mb_path = mb_path;
	}


	public String getMb_grade() {
		return mb_grade;
	}


	public void setMb_grade(String mb_grade) {
		this.mb_grade = mb_grade;
	}


	public String getMb_joindate() {
		return mb_joindate;
	}


	public void setMb_joindate(String mb_joindate) {
		this.mb_joindate = mb_joindate;
	}


	public String getAdmin_yn() {
		return admin_yn;
	}


	public void setAdmin_yn(String admin_yn) {
		this.admin_yn = admin_yn;
	}
	
	
	
	
	
	

}
