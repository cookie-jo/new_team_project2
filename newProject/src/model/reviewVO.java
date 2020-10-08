package model;
 
public class reviewVO {
	
	private int review_count; // 리뷰번호
	private String member_member_id; // 회원아이디
	private String item_item_name; // 아이템 이름
	private String review_main; // 리뷰내용
	private int review_score; // 리뷰점수
	private String review_day; // 리뷰입력날짜
	
	
	public reviewVO(String review_main, int review_score) {
		super();
		this.review_main = review_main;
		this.review_score = review_score;
	}


	public int getReview_count() {
		return review_count;
	}


	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}


	public String getMember_member_id() {
		return member_member_id;
	}


	public void setMember_member_id(String member_member_id) {
		this.member_member_id = member_member_id;
	}


	public String getItem_item_name() {
		return item_item_name;
	}


	public void setItem_item_name(String item_item_name) {
		this.item_item_name = item_item_name;
	}


	public String getReview_main() {
		return review_main;
	}


	public void setReview_main(String review_main) {
		this.review_main = review_main;
	}


	public int getReview_score() {
		return review_score;
	}


	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}


	public String getReview_day() {
		return review_day;
	}


	public void setReview_day(String review_day) {
		this.review_day = review_day;
	}
	
	
}
