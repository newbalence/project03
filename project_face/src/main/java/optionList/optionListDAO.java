package optionList;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import options.optionsVO;

public class optionListDAO extends DBManager {
	
	public String insOptionListOne(String phone) {
		driverLoad();
		DBConnect();
		
		String sql = "INSERT INTO optionlist (phone) VALUES ('" + phone + "') ";
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
	
	public void delOptionList(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "delete from shoppingList where optionListNo = " + no;
		executeUpdate(sql);
		DBDisConnect();
		
	}
	
	public List<optionsVO> selOptionList(int optionListNoParam){
		driverLoad();
		DBConnect();
		
		List<optionsVO> list = new ArrayList<>();
		
		String sql = "select o2.*, at.addToppingName, dt.delToppingName, o2.optionType ";
		sql += "FROM optionlist o ";
		sql += "LEFT JOIN options o2 ON o.optionlistNo = o2.optionlistNo ";
		sql += "LEFT JOIN addTopping at ON o2.addToppingNo = at.addToppingNo ";
		sql += "LEFT JOIN delTopping dt ON o2.delToppingNo = dt.delToppingNo ";
		sql += "WHERE o.optionListNo = '" + optionListNoParam + "';";
		
		executeQuery(sql);
		
		while(next()) {
			optionsVO vo = new optionsVO();
			int optionsNum = getInt("optionsNum");
			int optionListNo = getInt("optionListNo");
			String addToppingName = getString("addToppingName");
			String delToppingName = getString("delToppingName");
			String addToppingNo = getString("addToppingNo");
			String delToppingNo = getString("delToppingNo");
			int optionType = getInt("optionType");
			
			
			vo.setOptionsNum(optionsNum);
			vo.setOptionListNo(optionListNo);
			vo.setAddToppingName(addToppingName);
			vo.setDelToppingName(delToppingName);
			vo.setAddToppingNo(addToppingNo);
			vo.setDelToppingNo(delToppingNo);
			vo.setOptionType(optionType);
			
			list.add(vo);
		}
		
		DBDisConnect();
		return list;
	}
	
	
}
