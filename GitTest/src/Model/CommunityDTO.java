package Model;

import java.util.Date;

public class CommunityDTO {

	private int article_seq;
	private String article_title;
	private String article_content;
	private String mb_id;
	private String article_file1;
	private String article_file2;
	private String article_file3;
	private Date reg_date;
	private int article_cnt;
	private int location_num;
	
	
	public CommunityDTO(int article_seq, String article_title, String mb_id, Date reg_date) {
		
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.mb_id = mb_id;
		this.reg_date = reg_date;
	}
	
	
	public CommunityDTO(String article_title, String article_content, String article_file1) {
		super();
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file1 = article_file1;
	}
	public CommunityDTO(int article_seq, String article_title, String mb_id, Date reg_date, int article_cnt) {
		
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.mb_id = mb_id;
		this.reg_date = reg_date;
		this.article_cnt=article_cnt;
	}
	public CommunityDTO(int article_seq,String article_title, String article_content, String mb_id, String article_file1) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.mb_id = mb_id;
		this.article_file1 = article_file1;
	
	}
	
	public CommunityDTO(int article_seq, String article_title, String article_content, String article_file1, int location_num) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_file1 = article_file1;
		this.location_num = location_num;
	}
	public CommunityDTO(String article_title, String article_content, String mb_id, String article_file1, int location_num) {
		this.article_title = article_title;
		this.article_content = article_content;
		this.mb_id = mb_id;
		this.article_file1 = article_file1;
		this.location_num = location_num;
	}
	public CommunityDTO(int article_seq, String article_title, String article_content, String mb_id,
			String article_file1, String article_file2, String article_file3, Date reg_date, int article_cnt) {
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.mb_id = mb_id;
		this.article_file1 = article_file1;
		this.article_file2 = article_file2;
		this.article_file3 = article_file3;
		this.reg_date = reg_date;
		this.article_cnt = article_cnt;
	}
	public int getArticle_seq() {
		return article_seq;
	}
	public void setArticle_seq(int article_seq) {
		this.article_seq = article_seq;
	}
	public String getArticle_title() {
		return article_title;
	}
	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}
	public String getArticle_content() {
		return article_content;
	}
	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getArticle_file1() {
		return article_file1;
	}
	public void setArticle_file1(String article_file1) {
		this.article_file1 = article_file1;
	}
	public String getArticle_file2() {
		return article_file2;
	}
	public void setArticle_file2(String article_file2) {
		this.article_file2 = article_file2;
	}
	public String getArticle_file3() {
		return article_file3;
	}
	public void setArticle_file3(String article_file3) {
		this.article_file3 = article_file3;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public int getArticle_cnt() {
		return article_cnt;
	}
	public void setArticle_cnt(int article_cnt) {
		this.article_cnt = article_cnt;
	}
	public int getLocation_num() {
		return location_num;
	}
	public void setLocation_num(int location_num) {
		this.location_num = location_num;
	}
	
}
