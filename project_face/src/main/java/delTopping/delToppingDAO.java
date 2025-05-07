package delTopping;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class delToppingDAO extends DBManager {
	
	public void insDel(delToppingVO vo){
		driverLoad();
		DBConnect();
		
		String sql = "insert into deltopping(delToppingName, delToppingType) ";
		sql += "values('" + vo.getDelToppingName() + "', " + vo.getDelToppingType() + ")";
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
//	토핑
	public List<delToppingVO> selToppingAll() {
		driverLoad();
		DBConnect();
		
		String sql = "select * from deltopping where delToppingType = 1";
		executeQuery(sql);
		
		List<delToppingVO> list = new ArrayList<>();
		while(next()) {
			delToppingVO vo = new delToppingVO();
			vo.setDelToppingNo(getInt("delToppingNo"));
			vo.setDelToppingName(getString("delToppingName"));
			vo.setDelToppingType(getInt("delToppingType"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
//	소스
	public List<delToppingVO> selSauceAll() {
		driverLoad();
		DBConnect();
		
		String sql = "select * from deltopping where delToppingType = 2";
		executeQuery(sql);
		
		List<delToppingVO> list = new ArrayList<>();
		while(next()) {
			delToppingVO vo = new delToppingVO();
			vo.setDelToppingNo(getInt("delToppingNo"));
			vo.setDelToppingName(getString("delToppingName"));
			vo.setDelToppingType(getInt("delToppingType"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	public List<delToppingVO> selDrinkAll() {
		driverLoad();
		DBConnect();
		
		String sql = "select * from deltopping where delToppingType = 3";
		executeQuery(sql);
		
		List<delToppingVO> list = new ArrayList<>();
		while(next()) {
			delToppingVO vo = new delToppingVO();
			vo.setDelToppingNo(getInt("delToppingNo"));
			vo.setDelToppingName(getString("delToppingName"));
			vo.setDelToppingType(getInt("delToppingType"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
}
