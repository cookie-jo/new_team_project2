package model;

public class productVO {
	private int pd_num;
	private String pd_img;
	private String pd_name;
	private String pd_price;
	private String pd_content;
	
	public productVO() {    }

	public productVO(int pd_num, String pd_img, String pd_name, String pd_price, String pd_content) {
		super();
		this.pd_num = pd_num;
		this.pd_img = pd_img;
		this.pd_name = pd_name;
		this.pd_price = pd_price;
		this.pd_content = pd_content;
	}

	public int getPd_num() {
		return pd_num;
	}

	public void setPd_num(int pd_num) {
		this.pd_num = pd_num;
	}

	public String getPd_img() {
		return pd_img;
	}

	public void setPd_img(String pd_img) {
		this.pd_img = pd_img;
	}

	public String getPd_name() {
		return pd_name;
	}

	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}

	public String getPd_price() {
		return pd_price;
	}

	public void setPd_price(String pd_price) {
		this.pd_price = pd_price;
	}

	public String getPd_content() {
		return pd_content;
	}

	public void setPd_content(String pd_content) {
		this.pd_content = pd_content;
	}

	@Override
	public String toString() {
		return "productVO [pd_num=" + pd_num + ", pd_img=" + pd_img + ", pd_name=" + pd_name + ", pd_price=" + pd_price
				+ ", pd_content=" + pd_content + "]";
	}
	
	
}
