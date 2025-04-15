package user;

public class userVO {

	/* 회원전화번호 */ 
	private String phone;
	
	/* 회원이름 */ 
	private String name;
	
	/* 닉네임 */ 
	private String nick;
	
	/* 회원 생년월일 */ 
	private String birth;

	/* 0: 관리자
	1: 일반회원
	2: 탈퇴회원
	3: 차단회원 */ 
	private int userType;

}
