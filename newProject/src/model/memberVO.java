package model; 

public class memberVO {

   private String member_name;
   private String member_id;
   private int member_pw;
   private String member_tel;
   private String member_addr;
   private String member_post;
   
public memberVO(String member_name, String member_id, int member_pw, String member_tel, String member_addr,
		String member_post) {
	super();
	this.member_name = member_name;
	this.member_id = member_id;
	this.member_pw = member_pw;
	this.member_tel = member_tel;
	this.member_addr = member_addr;
	this.member_post = member_post;
}

public memberVO(String member_name, String member_tel, String member_addr,
		String member_post) {
	super();
	this.member_name = member_name;
	this.member_tel = member_tel;
	this.member_addr = member_addr;
	this.member_post = member_post;
}

public memberVO(String member_id) {
	super();
	this.member_id = member_id;
}
public memberVO(String member_id, int member_pw) {
	super();
	this.member_id = member_id;
	this.member_pw = member_pw;
}
public String getMember_name() {
	return member_name;
}
public void setMember_name(String member_name) {
	this.member_name = member_name;
}
public String getMember_id() {
	return member_id;
}
public void setMember_id(String member_id) {
	this.member_id = member_id;
}
public int getMember_pw() {
	return member_pw;
}
public void setMember_pw(int member_pw) {
	this.member_pw = member_pw;
}
public String getMember_tel() {
	return member_tel;
}
public void setMember_tel(String member_tel) {
	this.member_tel = member_tel;
}
public String getMember_addr() {
	return member_addr;
}
public void setMember_addr(String member_addr) {
	this.member_addr = member_addr;
}
public String getMember_post() {
	return member_post;
}
public void setMember_post(String member_post) {
	this.member_post = member_post;
}
   
   
}