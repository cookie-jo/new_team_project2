package model;

public class surveyVO {
	
	private String member_id; // 멤버 아이디
	private String question_1; // 설문조사 문항
	private String question_2;
	private String question_3;
	private String question_4;
	private String question_5;
	private String question_6;
	private String question_7;
	private String question_8;
	private String question_9;
	private String question_10;
	private String question_11;
	private String question_12;
	private String question_13;
	
	public surveyVO(String member_id, String question_1, String question_2, String question_3, String question_4,
			String question_5, String question_6, String question_7, String question_8, String question_9,
			String question_10, String question_11, String question_12, String question_13) {
		super();
		this.member_id = member_id;
		this.question_1 = question_1;
		this.question_2 = question_2;
		this.question_3 = question_3;
		this.question_4 = question_4;
		this.question_5 = question_5;
		this.question_6 = question_6;
		this.question_7 = question_7;
		this.question_8 = question_8;
		this.question_9 = question_9;
		this.question_10 = question_10;
		this.question_11 = question_11;
		this.question_12 = question_12;
		this.question_13 = question_13;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getQuestion_1() {
		return question_1;
	}
	public void setQuestion_1(String question_1) {
		this.question_1 = question_1;
	}
	public String getQuestion_2() {
		return question_2;
	}
	public void setQuestion_2(String question_2) {
		this.question_2 = question_2;
	}
	public String getQuestion_3() {
		return question_3;
	}
	public void setQuestion_3(String question_3) {
		this.question_3 = question_3;
	}
	public String getQuestion_4() {
		return question_4;
	}
	public void setQuestion_4(String question_4) {
		this.question_4 = question_4;
	}
	public String getQuestion_5() {
		return question_5;
	}
	public void setQuestion_5(String question_5) {
		this.question_5 = question_5;
	}
	public String getQuestion_6() {
		return question_6;
	}
	public void setQuestion_6(String question_6) {
		this.question_6 = question_6;
	}
	public String getQuestion_7() {
		return question_7;
	}
	public void setQuestion_7(String question_7) {
		this.question_7 = question_7;
	}
	public String getQuestion_8() {
		return question_8;
	}
	public void setQuestion_8(String question_8) {
		this.question_8 = question_8;
	}
	public String getQuestion_9() {
		return question_9;
	}
	public void setQuestion_9(String question_9) {
		this.question_9 = question_9;
	}
	public String getQuestion_10() {
		return question_10;
	}
	public void setQuestion_10(String question_10) {
		this.question_10 = question_10;
	}
	public String getQuestion_11() {
		return question_11;
	}
	public void setQuestion_11(String question_11) {
		this.question_11 = question_11;
	}
	public String getQuestion_12() {
		return question_12;
	}
	public void setQuestion_12(String question_12) {
		this.question_12 = question_12;
	}
	public String getQuestion_13() {
		return question_13;
	}
	public void setQuestion_13(String question_13) {
		this.question_13 = question_13;
	}
	@Override
	public String toString() {
		return "surveyVO [member_id=" + member_id + ", question_1=" + question_1 + ", question_2=" + question_2
				+ ", question_3=" + question_3 + ", question_4=" + question_4 + ", question_5=" + question_5
				+ ", question_6=" + question_6 + ", question_7=" + question_7 + ", question_8=" + question_8
				+ ", question_9=" + question_9 + ", question_10=" + question_10 + ", question_11=" + question_11
				+ ", question_12=" + question_12 + ", question_13=" + question_13 + "]";
	}


}