package dessert;

import java.util.ArrayList;
import java.util.List;

import burger.burgerVO;
import db.DBManager;

public class dessertDAO extends DBManager {

	//디저트 등록
	public void register(dessertVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into dessert(dessertName, dessertPay)";
		sql += "values('"+vo.getDessertName()+"', '"+vo.getDessertPay()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modification(dessertVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update dessert set ";
		sql += "dessertName= '"+vo.getDessertName()+"', dessertPay= '"+vo.getDessertPay()+"' ";
		sql += "where dessertNum = " + vo.getDessertNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	

}
