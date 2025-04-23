package burger;

import db.DBManager;

public class burgerDAO extends DBManager {

	//버거등록
	public void register(burgerVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into burger(burgerName, burgerPay)";
		sql += "values('"+vo.getBurgerName()+"', '"+vo.getBurgerPay()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modification(burgerVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
	}
}
