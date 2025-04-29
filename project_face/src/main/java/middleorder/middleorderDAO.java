package middleorder;

import db.DBManager;

public class middleorderDAO extends DBManager {
	
	public int insMid(String phone) {
		driverLoad();
		DBConnect();
		
		String insm = "insert into middleorder(phone) values(" + phone + ")";
		executeUpdate(insm);
	
		String num = "select last_insert_id() as no";
		executeQuery(num);
		
		if(next()) {
			middleorderVO vo = new middleorderVO();
			int no = getInt("no");
			vo.setMiddleOrder(no);
			vo.setPhone(phone);
			
			DBDisConnect();
			return no;
		}
		
		DBDisConnect();
		return 0;
		
	}
	
}
