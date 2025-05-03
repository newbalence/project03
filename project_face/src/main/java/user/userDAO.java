package user;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import user.userVO;

public class userDAO extends DBManager {
	
	//회원가입
	public void join(userVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		sql += "insert into users(phone, name, nick, birth) ";
		sql += "values('"+vo.getPhone()+"', '"+vo.getName()+"', '"+vo.getNick()+"', '"+vo.getBirth()+"')";
		executeUpdate(sql);
		
	    DBDisConnect();
	}
	
	//로그인 흠,, 안면인식은?!
	public userVO login(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from users where phone='"+ phone +"' and userType != 2 ";
		executeQuery(sql);
		
		
		if(next()) {
			userVO vo = new userVO();
			
			vo.setPhone(getString("phone"));
			vo.setName(getString("name"));
			vo.setNick(getString("nick"));
			vo.setBirth(getString("birth"));
			vo.setUserType(getInt("userType"));
			vo.setCreateDate(getString("createDate"));
			vo.setUpdateDate(getString("updateDate"));
			vo.setDeleteDate(getString("deleteDate"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
	}
	
	//회원수정 안면인식은?!
	public void updateUser(userVO vo, String upPhone, String nick) {
		driverLoad();
		DBConnect();
		
		String sql = "update users set ";
		
		if(upPhone != "" && upPhone != null) {
			sql += "phone='"+ upPhone +"', ";
		}
		
		if(nick != "" && nick != null) {
			sql += "nick = '"+ nick +"', ";
		}
		sql += "update_date = now() where phone = '" + vo.getPhone() + "'";
		executeUpdate(sql);
		
		DBDisConnect();
	}
		
	//전화번호 중복체크
	public int phoneCheck(String phone) {
		driverLoad();
		DBConnect();
		
		String sql ="select count(*) as cnt from users where phone = '"+phone+"';";
		executeQuery(sql);
		
		if(next()) {
			int cnt = getInt("cnt");
			DBDisConnect();
			return cnt;
		}else {
			DBDisConnect();
			return 0;
		}
	}
	
	//회원목록조회
	public List<userVO> getAllUser() {
		driverLoad();
		DBConnect();
		
		String sql="select * from users";
		executeQuery(sql);
		
		List<userVO> list = new ArrayList<>();
		
		while(next()) {
			userVO vo = new userVO();
			vo.setPhone(getString("phone"));
			vo.setName(getString("name"));
			vo.setNick(getString("nick"));
			vo.setBirth(getString("birth"));
			vo.setUserType(getInt("userType"));
			vo.setCreateDate(getString("createDate"));
			vo.setUpdateDate(getString("updateDate"));
			vo.setDeleteDate(getString("deleteDate"));
			
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
	
	public void delUser(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "update users set userType = 2, deleteDate = now() where phone = '" + phone + "';";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
}
