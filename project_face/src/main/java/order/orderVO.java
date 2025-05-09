package order;

import orderList.orderListVO;

public class orderVO extends orderListVO{

	private int orderNum;

	private int orderListNo;

	private int burgerNum;

	private int optionsNum;

	private int drinkNum;

	private int sideNum;

	private int dessertNum;

	private int etcNum;

	private int orderType;
	
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

	public int getOrderType() {
		return orderType;
	}

	public void setOrderType(int orderType) {
		this.orderType = orderType;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getOrderListNo() {
		return orderListNo;
	}

	public void setOrderListNo(int orderListNo) {
		this.orderListNo = orderListNo;
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
