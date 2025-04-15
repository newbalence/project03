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
}
