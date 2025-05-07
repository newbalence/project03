package shoppingList;

import db.DBManager;

public class shoppingListDAO extends DBManager {
	
	public void insShopListOne(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into shoppingList(phone) values('" + phone + "')";
		
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
	public shoppingListVO selShopListOne(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from shoppingList where shoppingListNo = " + no;
		
		executeQuery(sql);
		
		if(next()) {
			shoppingListVO vo = new shoppingListVO();
			vo.setShoppingListNo(getInt("shoppingListNo"));
			vo.setPhone(getString("phone"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
	}
	
	public void delshopList(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "delete from shoppingList where shoppingListNo = " + no;
		executeUpdate(sql);
		DBDisConnect();
		
	}
	
	
}
