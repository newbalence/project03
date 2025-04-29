package pay;

public class payVO {
	
	/* 결제번호 */ 
	private int payNum;


	/* 회원전화번호 */ 
	private String phone;


	/* 주문내역번호 */ 
	private int receiptNum;


	/* 결제금액 */ 
	private String money;


	/* 결제 성공 실패 확인
	0: 결제 성공
	1: 결제 실패 */ 
	private int payType;


	public int getPayNum() {
		return payNum;
	}


	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public int getReceiptNum() {
		return receiptNum;
	}


	public void setReceiptNum(int receiptNum) {
		this.receiptNum = receiptNum;
	}


	public String getMoney() {
		return money;
	}


	public void setMoney(String money) {
		this.money = money;
	}


	public int getPayType() {
		return payType;
	}


	public void setPayType(int payType) {
		this.payType = payType;
	}
	
	
}
