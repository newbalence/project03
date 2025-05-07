package drink;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class drinkDAO extends DBManager {
	
	//음료 등록
	public void insDrink(drinkVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into drink(drinkName, drinkPay, drink_img_name, drink_img_location)";
		sql += "values('"+vo.getDrinkName()+"', '"+vo.getDrinkPay()+"', '"+vo.getDrinkImgName()+"', '"+vo.getDrinkImgLocation()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modiDrink(drinkVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update drink set ";
		sql += "drinkName= '"+vo.getDrinkName()+"', drinkPay= '"+vo.getDrinkPay()+"' ";
		sql += "where drinkNum = " + vo.getDrinkNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//버거종류 목록
	public List<drinkVO> selDrinkAll(){
		driverLoad();
		DBConnect();
		
		String sql = "select * from drink where drinkType = '1'";
		executeQuery(sql);
		
		List<drinkVO> list = new ArrayList<drinkVO>();
		
		while(next()) {
			drinkVO vo = new drinkVO();
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setDrinkName(getString("drinkName"));
			vo.setDrinkPay(getString("drinkPay"));
			vo.setDrinkImgName(getString("drink_img_name"));
			
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
	
	//디저트종류 목록
	public drinkVO selDrinkOne(int no){
		driverLoad();
		DBConnect();
		
		String sql = "select * from drink where drinkNum = " + no;
		executeQuery(sql);
		
		if(next()) {
			drinkVO vo = new drinkVO();
			vo.setDrinkNum(getInt("drinkNum"));
			vo.setDrinkName(getString("drinkName"));
			vo.setDrinkPay(getString("drinkPay"));
			vo.setDrinkImgName(getString("drink_img_name"));
			
			return vo;
		}
		DBDisConnect();
		return null;
	}
	
	//삭제
	public void delDrink(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "update drink set drinkType = '2' where no = " + no;
		executeUpdate(sql);
		
		DBDisConnect();
	}
}
