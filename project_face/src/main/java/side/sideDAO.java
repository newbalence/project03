package side;

import db.DBManager;

public class sideDAO extends DBManager {
	
	//음료 등록
	public void register(sideVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		sql += "insert into side(sideName, sidePay)";
		sql += "values('"+vo.getSideName()+"', '"+vo.getSidePay()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modification(sideVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update side set ";
		sql += "sideName= '"+vo.getSideName()+"', sidePay= '"+vo.getSidePay()+"' ";
		sql += "where sideNum = " + vo.getSideNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
}
