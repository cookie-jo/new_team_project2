package model; 
 
public class TeaVO {

	//tea 테이블 속성 8개 tea_id	tea_name	tea_img	tea_price	tea_efficacy	score_average	score_count	side_effect
	private int tea_id;//상품번호
	private String tea_name;//상품명
	private String tea_img;//상품이미지경로
	private String tea_price;//상품가격
	private String tea_efficacy;//상품효능
	private float score_average;//상품평점평균
	private int score_count;//상품재고
	private String side_effect;//상품부작용
	
	public TeaVO() {   }

	public TeaVO(int tea_id, String tea_name, String tea_img, String tea_price, String tea_efficacy, float score_average,
			int score_count, String side_effect) {
		super();
		this.tea_id = tea_id;
		this.tea_name = tea_name;
		this.tea_img = tea_img;
		this.tea_price = tea_price;
		this.tea_efficacy = tea_efficacy;
		this.score_average = score_average;
		this.score_count = score_count;
		this.side_effect = side_effect;
	}
	

	public int getTea_id() {
		return tea_id;
	}

	public void setTea_id(int tea_id) {
		this.tea_id = tea_id;
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

	public String getTea_efficacy() {
		return tea_efficacy;
	}

	public void setTea_efficacy(String tea_efficacy) {
		this.tea_efficacy = tea_efficacy;
	}

	public float getScore_average() {
		return score_average;
	}

	public void setScore_average(float score_average) {
		this.score_average = score_average;
	}

	public int getScore_count() {
		return score_count;
	}

	public void setScore_count(int score_count) {
		this.score_count = score_count;
	}

	public String getSide_effect() {
		return side_effect;
	}

	public void setSide_effect(String side_effect) {
		this.side_effect = side_effect;
	}

	@Override
	public String toString() {
		return "TeaVO [tea_id=" + tea_id + ", tea_name=" + tea_name + ", tea_img=" + tea_img + ", tea_price="
				+ tea_price + ", tea_efficacy=" + tea_efficacy + ", score_average=" + score_average + ", score_count="
				+ score_count + ", side_effect=" + side_effect + "]";
	}

	
	
}
