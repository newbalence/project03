package receipt;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class receiptDAO extends DBManager {
	
	public void insReceipt(receiptVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into receipt(middleOrder, phone, receiptPay) ";
		sql += "values (" + vo.getMiddleOrder() + ", '" + vo.getPhone() + "', '" + vo.getReceiptPay() + "')";
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
	public List<receiptVO> selReceiptAll(String phone){
		driverLoad();
		DBConnect();
		
		String sql = "select * from receipt where phone = " + phone;
		executeQuery(sql);
		
		List<receiptVO> list = new ArrayList<>();
		while(next()) {
			receiptVO vo = new receiptVO();
			
			vo.setReceiptNum(getInt("receiptNum"));
			vo.setMiddleOrder(getInt("middleOrder"));
			vo.setPhone(getString("phone"));
			vo.setReceiptPay(getString("receiptPay"));
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	public receiptVO selReceiptOne(int num){
		driverLoad();
		DBConnect();
		
		String sql = "select * from receipt where receiptNum = " + num;
		executeQuery(sql);
		
		if(next()) {
			receiptVO vo = new receiptVO();
			
			vo.setReceiptNum(getInt("receiptNum"));
			vo.setMiddleOrder(getInt("middleOrder"));
			vo.setPhone(getString("phone"));
			vo.setReceiptPay(getString("receiptPay"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
	}
	
	
	
	
}
