package shopping;

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
		
		String sql = "insert into options(";
		String value = "values(";
		
		if(burger != 0) {
			sql += "burgerNum, ";
			value += burger + ", ";
		}
		
		if(options != 0) {
			sql += "optionsNum, ";
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
		
		sql +="shoppingType, quantity, allpay) ";
		value += "'1', '"  + vo.getQuantity() + "', '" + vo.getAllPay() + "')";
		
		sql = sql + value;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public void delShopping(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "update shopping set shoppingType = '2' where shoppingNum = " + num;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public shoppingVO selShopping(int shopNum) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from shopping where shoppingType != '2' shoppingNum = " + shopNum;
		executeQuery(sql);
		
		if(next()) {
			shoppingVO vo = new shoppingVO();
			vo.setShoppingNum(getInt("shoppingNum"));
			vo.setBurgerNum(getInt("burgerNum"));
			vo.setOptionsNum(getInt("optionNum"));
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setSideNum(getInt("sideNum"));
			vo.setDessertNum(getInt("dessertNum"));
			vo.setEtcNum(getInt("etcNum"));
			vo.setShoppoingType(getString("shoppingType"));
			vo.setQuantity(getString("quantity"));
			vo.setAllPay(getString("allPay"));
			
			DBDisConnect();
			return vo;
			
		}
		
		DBDisConnect();
		return null;
	}
	
	
	
	
}
