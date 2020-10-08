package model; 
// cart.jsp 에서 여러개의 장바구니 목록을 뛰우기 위한 VO
public class BasketVO {
	private String img; //제품사진
	private String name; //제품명
	private String price; //제품가격
	private int count; //제품수량
	
	public BasketVO() {   }

	public BasketVO(String img, String name, String price, int count) {
		super();
		this.img = img;
		this.name = name;
		this.price = price;
		this.count = count;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "BasketVO [img=" + img + ", name=" + name + ", price=" + price + ", count=" + count + "]";
	}
	
	
}
	
