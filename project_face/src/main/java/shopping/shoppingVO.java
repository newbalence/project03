package shopping;

import shoppingList.shoppingListVO;

public class shoppingVO extends shoppingListVO {

	private int shoppingNum;

	private int shoppingListNo;

	private int burgerNum;

	private int optionsNum;

	private int drinkNum;

	private int sideNum;

	private int dessertNum;

	private int etcNum;

	private String quantity;

	private String allPay;
	
	private String burgerName;
	
	private String drinkName;
	
	private String sideName;
	
	private String dessertName;
	
	private String etcName;
	
	

	public String getBurgerName() {
		return burgerName;
	}

	public void setBurgerName(String burgerName) {
		this.burgerName = burgerName;
	}

	public String getDrinkName() {
		return drinkName;
	}

	public void setDrinkName(String drinkName) {
		this.drinkName = drinkName;
	}

	public String getSideName() {
		return sideName;
	}

	public void setSideName(String sideName) {
		this.sideName = sideName;
	}

	public String getDessertName() {
		return dessertName;
	}

	public void setDessertName(String dessertName) {
		this.dessertName = dessertName;
	}

	public String getEtcName() {
		return etcName;
	}

	public void setEtcName(String etcName) {
		this.etcName = etcName;
	}

	public int getShoppingNum() {
		return shoppingNum;
	}

	public void setShoppingNum(int shoppingNum) {
		this.shoppingNum = shoppingNum;
	}

	public int getShoppingListNo() {
		return shoppingListNo;
	}

	public void setShoppingListNo(int shoppingListNo) {
		this.shoppingListNo = shoppingListNo;
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

	@Override
	public String toString() {
		return "shoppingVO [shoppingNum=" + shoppingNum + ", shoppingListNo=" + shoppingListNo + ", burgerNum="
				+ burgerNum + ", optionsNum=" + optionsNum + ", drinkNum=" + drinkNum + ", sideNum=" + sideNum
				+ ", dessertNum=" + dessertNum + ", etcNum=" + etcNum + ", quantity=" + quantity + ", allPay=" + allPay
				+ ", burgerName=" + burgerName + ", drinkName=" + drinkName + ", sideName=" + sideName
				+ ", dessertName=" + dessertName + ", etcName=" + etcName + "]";
	}


	

}
