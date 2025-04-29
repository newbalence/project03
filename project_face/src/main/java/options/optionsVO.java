package options;

public class optionsVO {
	
	/* 옵션번호 */ 
	private int optionsNum;


	/* 버거 번호 */ 
	private int burgerNum;


	/* 사이드번호 */ 
	private int sideNum;


	/* 음료번호 */ 
	private int drinkNum;

	private String optionType;

	public String getOptionType() {
		return optionType;
	}


	public void setOptionType(String optionType) {
		this.optionType = optionType;
	}


	public int getOptionsNum() {
		return optionsNum;
	}


	public void setOptionsNum(int optionsNum) {
		this.optionsNum = optionsNum;
	}


	public int getBurgerNum() {
		return burgerNum;
	}


	public void setBurgerNum(int burgerNum) {
		this.burgerNum = burgerNum;
	}


	public int getSideNum() {
		return sideNum;
	}


	public void setSideNum(int sideNum) {
		this.sideNum = sideNum;
	}


	public int getDrinkNum() {
		return drinkNum;
	}


	public void setDrinkNum(int drinkNum) {
		this.drinkNum = drinkNum;
	}


}
