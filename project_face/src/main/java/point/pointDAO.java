package point;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class pointDAO extends DBManager {
	
//	user 포인트 insert
	public void insPoint(pointVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into point(phone, point) ";
		sql += "values('" + vo.getPhone() + "', " + vo.getPoint() + ")";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
//	전화번호 모든 포인트 조회
	public List<pointVO> selPointAll(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from point where phone = '" + phone + "'";
		executeQuery(sql);
		
		List<pointVO> list = new ArrayList<>();
		while(next()) {
			pointVO vo = new pointVO();
			vo.setPhone(getString("phone"));
			vo.setPoint(getInt("point"));
			
			list.add(vo);
			
		}
		
		DBDisConnect();
		return list;
		
	}
	
	public pointVO SelPointOne(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "select phone, sum(point)as point from point where phone = '" + phone + "';";
		
		executeQuery(sql);
		if(next()) {
			
			pointVO vo = new pointVO();
			vo.setPhone(getString("phone"));
			vo.setPoint(getInt("point"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
		
	}
	
}
