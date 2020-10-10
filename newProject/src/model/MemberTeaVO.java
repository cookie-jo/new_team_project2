package model;

public class MemberTeaVO {
	private String member_id;
	private String member_name;
	private int tea_id;
	private String tea_name;
	private String tea_img;
	private String tea_price;
	private String side_effect;
	
	public MemberTeaVO() {   }

	
	public MemberTeaVO(String member_id, String member_name, int tea_id, String tea_name, String tea_img,
			String tea_price, String side_effect) {
		super();
		this.member_id = member_id;
		this.member_name = member_name;
		this.tea_id = tea_id;
		this.tea_name = tea_name;
		this.tea_img = tea_img;
		this.tea_price = tea_price;
		this.side_effect = side_effect;
	}


	public MemberTeaVO(String member_id, int tea_id) {
		super();
		this.member_id = member_id;
		this.tea_id = tea_id;
	}
	
	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getTea_id() {
		return tea_id;
	}

	public void setTea_id(int tea_id) {
		this.tea_id = tea_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getTea_name() {
		return tea_name;
	}

	public void setTea_name(String tea_name) {
		this.tea_name = tea_name;
	}

	public String getTea_img() {
		return tea_img;
	}

	public void setTea_img(String tea_img) {
		this.tea_img = tea_img;
	}


	public String getTea_price() {
		return tea_price;
	}


	public void setTea_price(String tea_price) {
		this.tea_price = tea_price;
	}


	public String getSide_effect() {
		return side_effect;
	}


	public void setSide_effect(String side_effect) {
		this.side_effect = side_effect;
	}
	
	
}
