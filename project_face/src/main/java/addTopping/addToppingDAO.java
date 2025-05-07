package addTopping;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class addToppingDAO extends DBManager {
	
	public void insAdd(addToppingVO vo){
		driverLoad();
		DBConnect();
		
		String sql = "insert into addtopping(addToppingName, addToppingpay, addToppingType) ";
		sql += "values('" + vo.getAddToppingName() + "', '" + vo.getAddToppingPay() + "', " + vo.getAddToppingType() + ")";
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
	public List<addToppingVO> selToppingAll() {
		driverLoad();
		DBConnect();
		
		String sql = "select * from addtopping where addToppingType = 1";
		executeQuery(sql);
		
		List<addToppingVO> list = new ArrayList<>();
		while(next()) {
			addToppingVO vo = new addToppingVO();
			vo.setAddToppingNo(getInt("addToppingNo"));
			vo.setAddToppingName(getString("addToppingName"));
			vo.setAddToppingPay(getString("addToppingpay"));
			vo.setAddToppingType(getInt("addToppingType"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	public List<addToppingVO> selSauceAll() {
		driverLoad();
		DBConnect();
		
		String sql = "select * from addtopping where addToppingType = 2";
		executeQuery(sql);
		
		List<addToppingVO> list = new ArrayList<>();
		while(next()) {
			addToppingVO vo = new addToppingVO();
			vo.setAddToppingNo(getInt("addToppingNo"));
			vo.setAddToppingName(getString("addToppingName"));
			vo.setAddToppingPay(getString("addToppingpay"));
			vo.setAddToppingType(getInt("addToppingType"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	

}
