package Model;

public class NewsDTO {

	private int news_seq;
	private String news_title;
	private String news_content;
	private String reg_date;
	private String news_url;
	private String img_url;

	public NewsDTO(int news_seq, String news_title, String news_content, String reg_date, String news_url,
			String img_url) {
		super();
		this.news_seq = news_seq;
		this.news_title = news_title;
		this.news_content = news_content;
		this.reg_date = reg_date;
		this.news_url = news_url;
		this.img_url = img_url;
	}
	
	public int getNews_seq() {
		return news_seq;
	}
	public void setNews_seq(int news_seq) {
		this.news_seq = news_seq;
	}
	public String getNews_title() {
		return news_title;
	}
	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getNews_url() {
		return news_url;
	}
	public void setNews_url(String news_url) {
		this.news_url = news_url;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	

	
	
	
}
