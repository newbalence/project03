package shopping;

public class shoppingVO {
	
	/* 장바구니번호 */ 
	private int shoppingNum;
	
	/* 장바구니타입 */ 
	private String shoppoingType;
	
	/* 버거 번호 */ 
	private int burgerNum;


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

	public void setburgerNum(int burgerNum) {
		this.burgerNum = burgerNum;
	}


	public int getBurgerNum() {
		return burgerNum;
	}


	public void setBurgerNum(int burgerNum) {
		this.burgerNum = burgerNum;
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
