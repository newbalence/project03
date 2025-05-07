package order;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class orderDAO extends DBManager {
	
	public void insOrder(int listNo, int shopNo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into orders(orderListNo, burgerNum, optionsNum, drinkNum, sideNum, dessertNum, etcNum, quantity, allPay) ";
		sql	+= "values((select " + listNo + ", burgerNum, optionsNum, drinkNum, sideNum, dessertNum, etcNum, quantity, allPay from shopping where shoppingNum = " + shopNo + "))";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public void delOrder(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "update orders set orderType = '2' where orderNum = " + num;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public orderVO selOrderOne(int orderNum) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from orders where orderType != '2' and orderNum = " + orderNum;
		executeQuery(sql);
		
		if(next()) {
			orderVO vo = new orderVO();
			vo.setOrderNum(getInt("OrderNum"));
			vo.setOrderListNo(getInt("OrderListNo"));
			vo.setBurgerNum(getInt("burgerNum"));
			vo.setOptionsNum(getInt("optionNum"));
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setSideNum(getInt("sideNum"));
			vo.setDessertNum(getInt("dessertNum"));
			vo.setEtcNum(getInt("etcNum"));
			vo.setOrderType(getInt("orderType"));
			vo.setQuantity(getString("quantity"));
			vo.setAllPay(getString("allPay"));
			
			DBDisConnect();
			return vo;
			
		}
		
		DBDisConnect();
		return null;
	}
	
	public List<orderVO> selOrderAll(int orderListNo) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from order where orderListNo = " + orderListNo;
		
		executeQuery(sql);
		
		List<orderVO> list = new ArrayList<>();
		while(next()) {
			orderVO vo = new orderVO();
			vo.setOrderNum(getInt("OrderNum"));
			vo.setOrderListNo(getInt("OrderListNo"));
			vo.setBurgerNum(getInt("burgerNum"));
			vo.setOptionsNum(getInt("optionNum"));
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setSideNum(getInt("sideNum"));
			vo.setDessertNum(getInt("dessertNum"));
			vo.setEtcNum(getInt("etcNum"));
			vo.setOrderType(getInt("orderType"));
			vo.setQuantity(getString("quantity"));
			vo.setAllPay(getString("allPay"));
			
			list.add(vo);
			
		}
		
		DBDisConnect();
		return list;
	}
	
	
	
	
}
