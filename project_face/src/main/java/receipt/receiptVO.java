package receipt;

public class receiptVO {
	
	/* 주문내역번호 */ 
	private int receiptNum;


	/* middleOrder */ 
	private int middleOrder;


	/* 회원전화번호 */ 
	private String phone;


	/* 주문가격 */ 
	private String receiptPay;


	public int getReceiptNum() {
		return receiptNum;
	}


	public void setReceiptNum(int receiptNum) {
		this.receiptNum = receiptNum;
	}


	public int getMiddleOrder() {
		return middleOrder;
	}


	public void setMiddleOrder(int middleOrder) {
		this.middleOrder = middleOrder;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getReceiptPay() {
		return receiptPay;
	}


	public void setReceiptPay(String receiptPay) {
		this.receiptPay = receiptPay;
	}
	
	


}
