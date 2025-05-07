package dessert;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class dessertDAO extends DBManager {

	//디저트 등록
	public void insDessert(dessertVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into dessert(dessertName, dessertPay, dessert_img_name, dessert_img_location)";
		sql += "values('"+vo.getDessertName()+"', '"+vo.getDessertPay()+"', '"+vo.getDessertImgName()+"', '"+vo.getDessertImgLocation()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modiDessert(dessertVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update dessert set ";
		sql += "dessertName= '"+vo.getDessertName()+"', dessertPay= '"+vo.getDessertPay()+"' ";
		sql += "where dessertNum = " + vo.getDessertNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//버거종류 목록
	public List<dessertVO> selDessertAll(){
		driverLoad();
		DBConnect();
		
		String sql = "select * from dessert where dessertType = '1'";
		executeQuery(sql);
		
		List<dessertVO> list = new ArrayList<dessertVO>();
		
		while(next()) {
			dessertVO vo = new dessertVO();
			vo.setDessertNum(getInt("dessertNum"));
			vo.setDessertName(getString("dessertName"));
			vo.setDessertPay(getString("dessertPay"));
			vo.setDessertImgName(getString("dessert_img_name"));
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
	
	//디저트종류 목록
	public dessertVO selDessertOne(int no){
		driverLoad();
		DBConnect();
		
		String sql = "select * from dessert where dessertNum = " + no;
		executeQuery(sql);
		
		if(next()) {
			dessertVO vo = new dessertVO();
			vo.setDessertNum(getInt("dessertNum"));
			vo.setDessertName(getString("dessertName"));
			vo.setDessertPay(getString("dessertPay"));
			vo.setDessertImgName(getString("dessert_img_name"));
			
			return vo;
		}
		DBDisConnect();
		return null;
	}
	
	//삭제
	public void delDessert(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "update dessert set dessertType = '2' where no = " + no;
		executeUpdate(sql);
		
		DBDisConnect();
	}
	

}
