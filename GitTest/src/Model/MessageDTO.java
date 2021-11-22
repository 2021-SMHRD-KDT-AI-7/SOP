package Model;

public class MessageDTO {

	private String mb_id;
	private String mb_pwd;
	private String mb_name;
	private String mb_nickname;
	private String mb_birthdate;
	private String mb_addr;
	private String mb_email;
	private String mb_phone;
	private String mb_gender;
	

	
	public MessageDTO(mb_id, mb_pwd, mb_name, mb_nickname, mb_birthdate, mb_addr, mb_email, mb_phone, mb_gender) {
		this.mb_id = mb_id;
		this.mb_pwd = mb_pwd;
		this.mb_name = mb_name;
		this.mb_nickname = mb_nickname;
		this.mb_birthdate = mb_birthdate;
		this.mb_addr = mb_addr;
		this.mb_email = mb_email;
		this.mb_phone = mb_phone;
		this.mb_gender = mb_gender;
	}

	public MessageDTO(String sendName, String receiveEmail, String message) {
		super();
		this.sendName = sendName;
		this.receiveEmail = receiveEmail;
		this.message = message;
	}

