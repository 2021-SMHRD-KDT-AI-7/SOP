package Model;

public class MemberDTO {

	private String email;
	private String pw;
	private String tel;
	private String address;

	// »ý¼ºÀÚ (Alt+ shift+S -> generate constructor..)
	public MemberDTO(String email, String pw, String tel, String address) {
		super();
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	}

	// getter,setter
