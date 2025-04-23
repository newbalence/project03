package user;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import user.userVO;

public class userDAO extends DBManager {
	
<<<<<<< HEAD
	//회원가입
	public void join(userVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		sql += "insert into user(phone, name, nick, birth)";
		sql += "values('"+vo.getPhone()+"', '"+vo.getName()+"', '"+vo.getNick()+"', '"+vo.getBirth()+"')";
		executeUpdate(sql);
		
	    DBDisConnect();
	}
	
	//로그인 흠,, 안면인식은?!
	public void login(userVO uvo) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from user where";
		sql += "phone='"+uvo.getPhone()+"' and user_type != 2 ";
		executeQuery(sql);
		
		DBDisConnect();
	}
	
	//회원수정 안면인식은?!
	public void modify(userVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update user set ";
		sql += "phone='"+vo.getPhone()+"', update_date = now() ";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//전화번호 중복체크
	public int phoneCheck(String phone) {
		driverLoad();
		DBConnect();
		
		String sql ="select count(*) as cnt from user where phonr = '"+phone+"';";
		executeQuery(sql);
		
		if(next()) {
			int cnt = getInt("cnt");
			DBDisConnect();
			return cnt;
		}else {
			DBDisConnect();
			return 1;
		}
	}
	
	//회원목록조회
	public List<userVO> getAllUser() {
		driverLoad();
		DBConnect();
		
		String sql="";
		executeQuery(sql);
		
		List<userVO> list = new ArrayList<>();
		
		while(next()) {
			userVO vo = new userVO();
			vo.setPhone(getString("phone"));
			vo.setName(getString("name"));
			vo.setNick(getString("nick"));
			vo.setBirth(getString("birth"));
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
=======
>>>>>>> branch 'main' of https://github.com/newbalence/project03.git
}
