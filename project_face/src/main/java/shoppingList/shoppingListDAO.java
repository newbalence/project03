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
		
		String sql = "SELECT s.*, s2.*, b.burgerName, d.drinkName, s3.sideName, d2.dessertName, e.etcName ";
		sql += "FROM shoppinglist s ";
		sql += "inner JOIN shopping s2 ON s.shoppingListNo = s2.shoppingListNo ";
		sql += "LEFT JOIN burger b ON s2.burgerNum = b.burgerNum ";
		sql += "LEFT JOIN drink d ON s2.drinkNum = d.drinkNum ";
		sql += "LEFT JOIN side s3 ON s2.sideNum = s3.sideNum ";
		sql += "LEFT JOIN dessert d2 ON s2.dessertNum = d2.dessertNum ";
		sql += "LEFT JOIN etc e ON s2.etcNum = e.etcNum ";
		sql += "WHERE s.phone = '" + phone + "';";

		
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
			int optionListNo = getInt("optionListNo");
			
			vo.setShoppingListNo(shopListNo);
			vo.setShoppingNum(shoppingNum);
			vo.setBurgerName(burgerName);
			vo.setDrinkName(drinkName);
			vo.setSideName(sideName);
			vo.setDessertName(dessertName);
			vo.setEtcName(etcName);
			vo.setQuantity(quantity);
			vo.setAllPay(allPay);
			vo.setOptionsNum(optionListNo);
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	
}
