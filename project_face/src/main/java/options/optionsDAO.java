package options;

import db.DBManager;

public class optionsDAO extends DBManager {
	
	public void insOption(optionsVO vo){
		driverLoad();
		DBConnect();
		
		int burger = vo.getBurgerNum();
		int side = vo.getSideNum();
		int drink = vo.getDrinkNum();
		
		String sql = "insert into options(";
		String value = "values(";
		
		if(burger != 0) {
			sql += "burgerNum, ";
			value += burger + ", ";
		}
		
		if(side != 0) {
			sql += "sideNum, ";
			value += side + ", ";
		}
		
		if(drink != 0) {
			sql += "drinkNum, ";
			value += drink + ", ";
		}
		
		sql +="optionType) ";
		value +="'1')";
		
		sql = sql + value;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	public optionsVO selOptionOne(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "select * from option where optionsNum = " + num;
		executeQuery(sql);
		
		if(next()) {
			optionsVO vo = new optionsVO();
			vo.setBurgerNum(getInt("burgetNum"));
			vo.setSideNum(getInt("sideNum"));
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setOptionType(getString("optionType"));
			
			DBDisConnect();
			return vo;
		}
		
		DBDisConnect();
		return null;
		
	}
	
	public void deloption(int num) {
		driverLoad();
		DBConnect();
		
		String sql = "update options set optionType = '2' where optionsNum = " + num;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	
	
}
