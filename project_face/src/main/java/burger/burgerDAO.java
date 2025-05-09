package burger;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class burgerDAO extends DBManager {

	//버거등록
	public void insBurger(burgerVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into burger(burgerName, burgerPay, burger_img_name, burger_img_location)";
		sql += "values('"+vo.getBurgerName()+"', '"+vo.getBurgerPay()+"', '"+vo.getBurgerImgName()+"', '"+vo.getBurgerImgLocation()+"')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modiBurger(burgerVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update burger set ";
		sql += "burgerName='"+vo.getBurgerName()+"', burgerPay = '"+vo.getBurgerPay()+"' ";
		sql += "where burgerNum = " + vo.getBurgerNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//버거종류 목록
		public List<burgerVO> selBurgerAll(){
			driverLoad();
			DBConnect();
			
			String sql = "select * from burger where burgerType = '1'";
			executeQuery(sql);
			
			List<burgerVO> list = new ArrayList<burgerVO>();
			
			while(next()) {
				burgerVO vo = new burgerVO();
				vo.setBurgerNum(getInt("burgerNum"));
				vo.setBurgerName(getString("burgerName"));
				vo.setBurgerPay(getString("burgerPay"));
				vo.setBurgerImgName(getString("burger_img_name"));
				list.add(vo);
			}
			DBDisConnect();
			return list;
		}
		
		//버거종류 목록
		public burgerVO selBurgerOne(int no){
			driverLoad();
			DBConnect();
			
			String sql = "select * from burger where burgerNum = " + no;
			executeQuery(sql);
			
			if(next()) {
				burgerVO vo = new burgerVO();
				vo.setBurgerNum(getInt("burgerNum"));
				vo.setBurgerName(getString("burgerName"));
				vo.setBurgerPay(getString("burgerPay"));
				vo.setBurgerImgName(getString("burger_img_name"));
				
				return vo;
			}
			DBDisConnect();
			return null;
		}
		
		//삭제
		public void delburger(int no){
			driverLoad();
			DBConnect();
			
			String sql = "update burget set burgerType = '2' where burgerNum = " + no;
			executeUpdate(sql);
			
			DBDisConnect();

		}
		
		
}
