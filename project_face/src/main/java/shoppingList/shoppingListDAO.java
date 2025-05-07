package shoppingList;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class shoppingListDAO extends DBManager {
	
	public String insShopListOne(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "INSERT INTO shoppinglist (phone) VALUES ('" + phone + "') ";
		sql += "ON DUPLICATE KEY UPDATE shoppingListNo=LAST_INSERT_ID(shoppingListNo);";
		executeUpdate(sql);
		
		sql = "select last_insert_id() as no;";
		executeQuery(sql);
		if(next()) {
			String no = getString("no");
			
			DBDisConnect();
			return no;
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
