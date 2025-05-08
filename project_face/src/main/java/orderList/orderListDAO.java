package orderList;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class orderListDAO extends DBManager {
	
	public int insOrderList(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into orderList(phone) values('" + phone + "')";
		
		executeUpdate(sql);
		
		sql = "select last_insert_id() as no;";
		executeQuery(sql);
		if(next()) {
			int no = getInt("no");
			
			DBDisConnect();
			return no;
		}
		
		DBDisConnect();
		return 0;
		
	}
	
	public orderListVO selOrderListOne(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from orderList where orderListNo = " + no;
		executeQuery(sql);
		
		if(next()) {
			orderListVO vo = new orderListVO();
			vo.setOrderListNo(getInt("orderListNo"));
			vo.setPhone(getString("phone"));
			
			DBDisConnect();
			return vo;
		}
		DBDisConnect();
		return null;
	}
	
	public orderListVO selOrderListAll(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from orderList where phone = '" + phone + "'";
		executeQuery(sql);
		
		if(next()) {
			orderListVO vo = new orderListVO();
			vo.setOrderListNo(getInt("orderListNo"));
			vo.setPhone(getString("phone"));
			
			DBDisConnect();
			return vo;
			
		}
		
		DBDisConnect();
		return null;
	}
	
}
