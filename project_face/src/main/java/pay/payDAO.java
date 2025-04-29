package pay;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class payDAO extends DBManager {
	
	public void insPay(payVO vo) {
		driverLoad();
		DBConnect();
		
		String sql ="insert into pay(phone, receiptNum, money) ";
		sql += "values('" + vo.getPhone() + "', " + vo.getReceiptNum() + ", '" + vo.getMoney() + ")";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public void suPayType(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "update pay set payType = 0 where payNum = " + num;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public void faPayType(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "update pay set payType = 2 where payNum = " + num;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public payVO selPayOne(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from pay where payNum = " + num;
		executeQuery(sql);
		
		if(next()) {
			payVO vo = new payVO();
			vo.setPayNum(getInt("payNum"));
			vo.setPhone(getString("phone"));
			vo.setReceiptNum(getInt("receiptNum"));
			vo.setMoney(getString("money"));
			vo.setPayType(getInt("payType"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
		
	}
	
	public List<payVO> selPayAll(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		executeQuery(sql);
		
		List<payVO> list = new ArrayList<>();
		while(next()) {
			payVO vo = new payVO();
			vo.setPayNum(getInt("payNum"));
			vo.setPhone(getString("phone"));
			vo.setReceiptNum(getInt("receiptNum"));
			vo.setMoney(getString("money"));
			vo.setPayType(getInt("payType"));
			
			list.add(vo);
			
		}
		
		DBDisConnect();
		return list;
	}
	
	
	
}
