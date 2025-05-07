package shoppingList;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import shopping.shoppingVO;

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
	
	public List<shoppingVO> selectShopList(String phone){
		driverLoad();
		DBConnect();
		
		List<shoppingVO> list = new ArrayList<>();
		
		String sql = "select s.*, s2.*, b.burgerName, d.drinkName, s3.sideName, d2.dessertName, e.etcName "; 
		sql += "from shoppinglist s left join shopping s2 on s.shoppingListNo = s2.shoppingListNo ";
		sql += "left join burger b on s2.burgerNum = b.burgerNum ";
		sql += "left join drink d on s2.drinkNum = d.drinkNum ";
		sql += "left join side s3 on s2.sideNum = s3.sideNum ";
		sql += "left join dessert d2 on s2.dessertNum = d2.dessertNum "; 
		sql += "left join etc e on s2.etcNum = e.etcNum ";
		sql += "where s.phone = '"+phone+"';";
		
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
	
	
}
