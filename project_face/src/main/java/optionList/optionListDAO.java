package optionList;

import db.DBManager;

public class optionListDAO extends DBManager {
	
	public String insOptionListOne(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "INSERT INTO optionlist (phone) VALUES ('" + phone + "') ";
		sql += "ON DUPLICATE KEY UPDATE optionListNo=LAST_INSERT_ID(optionListNo);";
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
		
		String sql = "delete from shoppingList where optionListNo = " + no;
		executeUpdate(sql);
		DBDisConnect();
		
	}
	
	
}
