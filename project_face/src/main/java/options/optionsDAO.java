package options;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class optionsDAO extends DBManager {
	
	public void insOption(optionsVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		sql += "insert into options(optionListNo, addToppingNo, delToppingNO, optionType)";
		sql += "values("+vo.getOptionListNo()+", "+vo.getAddToppingNo()+", "+vo.getDelToppingNo()+", "+vo.getOptionType()+")";
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
	public optionsVO selOptionOne(String no) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from optioins where optionsNum = " + no;
		executeQuery(sql);
		
		if(next()) {
			optionsVO vo = new optionsVO();
			vo.setAddToppingNo(getString("addToppingNo"));
			vo.setDelToppingNo(getString("delToppingNo"));
			vo.setOptionListNo(getInt("optionListNo"));
			vo.setOptionsNum(getInt("optionsNum"));
			
			DBDisConnect();
			return vo;
			
		}
		
		DBDisConnect();
		return null;
		
	}
	
	public List<optionsVO> selOptionAll(String no) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from optioins where optionListNo = " + no;
		executeQuery(sql);
		
		List<optionsVO> list = new ArrayList<>();
		while(next()) {
			optionsVO vo = new optionsVO();
			vo.setAddToppingNo(getString("addToppingNo"));
			vo.setDelToppingNo(getString("delToppingNo"));
			vo.setOptionListNo(getInt("optionListNo"));
			vo.setOptionsNum(getInt("optionsNum"));
			
			list.add(vo);
			
		}
		
		DBDisConnect();
		return list;
		
	}
	
	public void delOptoin(String no) {
		driverLoad();
		DBConnect();
		
		String sql = "update options set optionType = 2 where optionsNum = " + no;
		executeUpdate(sql);
		
		DBDisConnect();
		
	}
	
}
