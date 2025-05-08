package order;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class orderDAO extends DBManager {
	
	public void insOrder(int listNo, int shopNo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into orders(orderListNo, burgerNum, optionListNo, drinkNum, sideNum, dessertNum, etcNum, quantity, allPay) ";
		sql	+= "select " + listNo + ", burgerNum, optionListNo, drinkNum, sideNum, dessertNum, etcNum, quantity, allPay from shopping where shoppingNum = " + shopNo;
		
		System.out.println(sql);
		
		executeUpdate(sql);
		
		sql = "delete from shopping where shoppingNum = "+shopNo;
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
	
	public List<orderVO> selectAllOrders(String phone){
		
		List<orderVO> list = new ArrayList<>();
		driverLoad();
		DBConnect();
		
		String sql = "SELECT s.*, s2.*, b.burgerName, d.drinkName, s3.sideName, d2.dessertName, e.etcName ";
		sql += "FROM orderlist s ";
		sql += "inner JOIN orders s2 ON s.orderListNo = s2.orderListNo ";
		sql += "LEFT JOIN burger b ON s2.burgerNum = b.burgerNum ";
		sql += "LEFT JOIN drink d ON s2.drinkNum = d.drinkNum ";
		sql += "LEFT JOIN side s3 ON s2.sideNum = s3.sideNum ";
		sql += "LEFT JOIN dessert d2 ON s2.dessertNum = d2.dessertNum ";
		sql += "LEFT JOIN etc e ON s2.etcNum = e.etcNum WHERE s.phone = '"+phone+"';";
		
		executeQuery(sql);
		
		while(next()) {
			orderVO vo = new orderVO();
			vo.setOrderListNo(getInt("orderListNo"));
			vo.setBurgerName(getString("burgerName"));
			vo.setDrinkName(getString("drinkName"));
			vo.setSideName(getString("sideName"));
			vo.setDessertName(getString("dessertName"));
			vo.setEtcName(getString("etcName"));
			vo.setAllPay(getString("allPay"));
			vo.setQuantity(getString("quantity"));
			
			list.add(vo);
		}
		DBDisConnect();
		return list;
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
