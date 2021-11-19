package Model;

public class CampaignDTO {

	private int cam_seq;
	private String cam_title;
	private String cam_content;
	private String reg_date;
	private String mb_id;
	private String cam_file1;
	private String cam_file2;
	private String cam_start;
	private String cam_finish;

	public CampaignDTO(int cam_seq, String cam_title, String cam_content, String reg_date, String mb_id,
			String cam_file1, String cam_file2, String cam_start, String cam_finish) {
		this.cam_seq = cam_seq;
		this.cam_title = cam_title;
		this.cam_content = cam_content;
		this.reg_date = reg_date;
		this.mb_id = mb_id;
		this.cam_file1 = cam_file1;
		this.cam_file2 = cam_file2;
		this.cam_start = cam_start;
		this.cam_finish = cam_finish;
	}
	
	
	public CampaignDTO(int cam_seq, String cam_title, String cam_content, String reg_date, String mb_id,
			String cam_file1, String cam_start, String cam_finish) {
		this.cam_seq = cam_seq;
		this.cam_title = cam_title;
		this.cam_content = cam_content;
		this.reg_date = reg_date;
		this.mb_id = mb_id;
		this.cam_file1 = cam_file1;
		this.cam_start = cam_start;
		this.cam_finish = cam_finish;
	}
	
	public CampaignDTO(int cam_seq, String cam_title, String mb_id, String cam_start,
			String cam_finish) {
		this.cam_seq = cam_seq;
		this.cam_title = cam_title;
		this.mb_id = mb_id;
		this.cam_start = cam_start;
		this.cam_finish = cam_finish;
	}
	
	public CampaignDTO(String cam_title, String cam_content, String mb_id, String cam_file1, String cam_start,
			String cam_finish) {
		this.cam_title = cam_title;
		this.cam_content = cam_content;
		this.mb_id = mb_id;
		this.cam_file1 = cam_file1;
		this.cam_start = cam_start;
		this.cam_finish = cam_finish;
	}
	
	
	public int getCam_seq() {
		return cam_seq;
	}

	public void setCam_seq(int cam_seq) {
		this.cam_seq = cam_seq;
	}

	public String getCam_title() {
		return cam_title;
	}

	public void setCam_title(String cam_title) {
		this.cam_title = cam_title;
	}

	public String getCam_content() {
		return cam_content;
	}

	public void setCam_content(String cam_content) {
		this.cam_content = cam_content;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getCam_file1() {
		return cam_file1;
	}

	public void setCam_file1(String cam_file1) {
		this.cam_file1 = cam_file1;
	}

	public String getCam_file2() {
		return cam_file2;
	}

	public void setCam_file2(String cam_file2) {
		this.cam_file2 = cam_file2;
	}

	public String getCam_start() {
		String[] start = cam_start.split(" ");
		return start[0];
	}

	public void setCam_start(String cam_start) {
		this.cam_start = cam_start;
	}

	public String getCam_finish() {
		String[] finish = cam_finish.split(" ");
		return finish[0];
	}

	public void setCam_finish(String cam_finish) {
		this.cam_finish = cam_finish;
	}

}
