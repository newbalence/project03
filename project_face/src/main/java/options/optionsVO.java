package options;

import optionList.optionListVO;

public class optionsVO extends optionListVO {

	private int optionsNum;

	private int optionListNo;

	private int delToppingNo;

	private int addToppingNo;

	private int optionType;
	
	private String addToppingName;

	private int addToppingType;
	
	private String delToppingName;

	private int delToppingType;
	
	

	public String getAddToppingName() {
		return addToppingName;
	}

	public void setAddToppingName(String addToppingName) {
		this.addToppingName = addToppingName;
	}

	public int getAddToppingType() {
		return addToppingType;
	}

	public void setAddToppingType(int addToppingType) {
		this.addToppingType = addToppingType;
	}

	public String getDelToppingName() {
		return delToppingName;
	}

	public void setDelToppingName(String delToppingName) {
		this.delToppingName = delToppingName;
	}

	public int getDelToppingType() {
		return delToppingType;
	}

	public void setDelToppingType(int delToppingType) {
		this.delToppingType = delToppingType;
	}

	public int getOptionsNum() {
		return optionsNum;
	}

	public void setOptionsNum(int optionsNum) {
		this.optionsNum = optionsNum;
	}

	public int getOptionListNo() {
		return optionListNo;
	}

	public void setOptionListNo(int optionListNo) {
		this.optionListNo = optionListNo;
	}

	public int getDelToppingNo() {
		return delToppingNo;
	}

	public void setDelToppingNo(int delToppingNo) {
		this.delToppingNo = delToppingNo;
	}

	public int getAddToppingNo() {
		return addToppingNo;
	}

	public void setAddToppingNo(int addToppingNo) {
		this.addToppingNo = addToppingNo;
	}

	public int getOptionType() {
		return optionType;
	}

	public void setOptionType(int optionType) {
		this.optionType = optionType;
	}

	
}
