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
	
	private String updateDate;
	private String deleteDate;

	

	/* 0: 관리자
	1: 일반회원
	2: 탈퇴회원
	3: 차단회원 */ 
	private int userType;

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}
	
	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}
}
