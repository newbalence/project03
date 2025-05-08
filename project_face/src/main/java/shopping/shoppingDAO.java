package shopping;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class shoppingDAO extends DBManager {
	
	public void insShopping(shoppingVO vo) {
		driverLoad();
		DBConnect();
		
		int burger = vo.getBurgerNum();
		int options = vo.getOptionsNum();
		int drink = vo.getDrinkNum();
		int side = vo.getDrinkNum();
		int dessert = vo.getDessertNum();
		int etc = vo.getEtcNum();
		
		System.out.println(vo);
		
		String sql = "insert into shopping(";
		String value = "values(";
		
		if(burger != 0) {
			sql += "burgerNum, ";
			value += burger + ", ";
		}
		
		if(options != 0) {
			sql += "optionListNo, ";
			value += options + ", ";
		}
		
		if(drink != 0) {
			sql += "drinkNum, ";
			value += drink + ", ";
		}
		
		if(side != 0) {
			sql += "sideNum, ";
			value += side + ", ";
		}
		
		if(dessert != 0) {
			sql += "dessertNum, ";
			value += dessert + ", ";
		}
		
		if(etc != 0) {
			sql += "etcNum, ";
			value += etc + ", ";
		}
		
		sql +="quantity, allpay, shoppingListNo) ";
		value += "'"  + 1 + "', '" + vo.getAllPay() + "', "+vo.getShoppingListNo()+")";
		
		sql = sql + value;
		System.out.println(sql);
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public void delShopping(String[] items) {
		String item = String.join(",", items);
		driverLoad();
		DBConnect();
		
		String sql = "delete from shopping where shoppingNum in("+item+")";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public List<shoppingVO> selShoppingItems(String[] items) {
		driverLoad();
		DBConnect();
		
		String item = String.join(",", items);
		
		List<shoppingVO> list = new ArrayList<>();
		
		String sql = "select s.*, s2.*, b.burgerName, d.drinkName, s3.sideName, d2.dessertName, e.etcName "; 
		sql += "from shoppinglist s ";
		sql += "left join shopping s2 on s.shoppingListNo = s2.shoppingListNo ";
		sql += "left join burger b on s2.burgerNum = b.burgerNum ";
		sql += "left join drink d on s2.drinkNum = d.drinkNum ";
		sql += "left join side s3 on s2.sideNum = s3.sideNum ";
		sql += "left join dessert d2 on s2.dessertNum = d2.dessertNum "; 
		sql += "left join etc e on s2.etcNum = e.etcNum ";
		sql += "where s2.shoppingNum in("+item+")";
		executeQuery(sql);
		
		while(next()) {
			shoppingVO vo = new shoppingVO();
			int shopListNo = getInt("shoppingListNo");
			int shoppingNum = getInt("shoppingNum");
			String burgerName = getString("burgerName");
			String drinkName = getString("drinkName");
			String sideName = getString("sideName");
			String dessertName = getString("dessertName");
			String etcName = getString("etcName");
			String quantity = getString("quantity");
			String allPay = getString("allPay");
			
			vo.setShoppingListNo(shopListNo);
			vo.setShoppingNum(shoppingNum);
			vo.setBurgerName(burgerName);
			vo.setDrinkName(drinkName);
			vo.setSideName(sideName);
			vo.setDessertName(dessertName);
			vo.setEtcName(etcName);
			vo.setQuantity(quantity);
			vo.setAllPay(allPay);
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	public shoppingVO selShopping(int shopNum) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from shopping where shoppingNum = " + shopNum;
		executeQuery(sql);
		
		if(next()) {
			shoppingVO vo = new shoppingVO();
			vo.setShoppingNum(getInt("shoppingNum"));
			vo.setShoppingListNo(getInt("shoppingListNo"));
			vo.setBurgerNum(getInt("burgerNum"));
			vo.setOptionsNum(getInt("optionNum"));
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setSideNum(getInt("sideNum"));
			vo.setDessertNum(getInt("dessertNum"));
			vo.setEtcNum(getInt("etcNum"));
			vo.setQuantity(getString("quantity"));
			vo.setAllPay(getString("allPay"));
			
			DBDisConnect();
			return vo;
			
		}
		
		DBDisConnect();
		return null;
	}
	
	
	
	
}
