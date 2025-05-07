package orderList;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class orderListDAO extends DBManager {
	
	public void insOrderList(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into orderList(phone) values('" + phone + "')";
		
		executeUpdate(sql);
		DBDisConnect();
		
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
	
	public List<orderListVO> selOrderListAll(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from orderList where phone = '" + phone + "'";
		executeQuery(sql);
		
		List<orderListVO> list = new ArrayList<>();
		while(next()) {
			orderListVO vo = new orderListVO();
			vo.setOrderListNo(getInt("orderListNo"));
			vo.setPhone(getString("phone"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
}
