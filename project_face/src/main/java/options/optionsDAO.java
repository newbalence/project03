package options;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class optionsDAO extends DBManager {
	
	public void insOption(optionsVO vo) {
		driverLoad();
		DBConnect();
		
		int add = vo.getAddToppingNo();
		int del = vo.getDelToppingNo();
		
		String sql ="insert into options(optionListNo";
		String val = "values(" + vo.getOptionListNo();
		
		if(add != 0) {
			sql += ", addToppingNo";
			val += ", " + add;
		}
		
		if(del != 0) {
			sql += ", delToppingNO";
			val += ", " + del;
		}
		
		sql += ") ";
		val += ")";
		
		sql = sql + val;
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
			vo.setAddToppingNo(getInt("addToppingNo"));
			vo.setDelToppingNo(getInt("delToppingNo"));
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
			vo.setAddToppingNo(getInt("addToppingNo"));
			vo.setDelToppingNo(getInt("delToppingNo"));
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
