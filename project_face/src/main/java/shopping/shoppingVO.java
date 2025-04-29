package shopping;

public class shoppingVO {
	
	/* 장바구니번호 */ 
	private int shoppingNum;


	/* 주문번호 */ 
	private int middleOrder;

	
	/* 장바구니타입 */ 
	private String shoppoingType;
	
	
	/* 전화번호 */ 
	private String phone;

	
	/* 버거 번호 */ 
	private int buggerNum;


	/* 옵션번호 */ 
	private int optionsNum;


	/* 음료번호 */ 
	private int drinkNum;


	/* 사이드번호 */ 
	private int sideNum;


	/* 디저트번호 */ 
	private int dessertNum;


	/* 기타번호 */ 
	private int etcNum;


	/* 수량 */ 
	private String quantity;


	/* 총가격 */ 
	private String allPay;
	

	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getShoppoingType() {
		return shoppoingType;
	}


	public void setShoppoingType(String shoppoingType) {
		this.shoppoingType = shoppoingType;
	}


	public int getShoppingNum() {
		return shoppingNum;
	}


	public void setShoppingNum(int shoppingNum) {
		this.shoppingNum = shoppingNum;
	}


	public int getMiddleOrder() {
		return middleOrder;
	}


	public void setMiddleOrder(int middleOrder) {
		this.middleOrder = middleOrder;
	}


	public int getBuggerNum() {
		return buggerNum;
	}


	public void setBuggerNum(int buggerNum) {
		this.buggerNum = buggerNum;
	}


	public int getOptionsNum() {
		return optionsNum;
	}


	public void setOptionsNum(int optionsNum) {
		this.optionsNum = optionsNum;
	}


	public int getDrinkNum() {
		return drinkNum;
	}


	public void setDrinkNum(int drinkNum) {
		this.drinkNum = drinkNum;
	}


	public int getSideNum() {
		return sideNum;
	}


	public void setSideNum(int sideNum) {
		this.sideNum = sideNum;
	}


	public int getDessertNum() {
		return dessertNum;
	}


	public void setDessertNum(int dessertNum) {
		this.dessertNum = dessertNum;
	}


	public int getEtcNum() {
		return etcNum;
	}


	public void setEtcNum(int etcNum) {
		this.etcNum = etcNum;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	public String getAllPay() {
		return allPay;
	}


	public void setAllPay(String allPay) {
		this.allPay = allPay;
	}


}
