package burger;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;
import side.sideVO;

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
		
		String sql = "update burger set ";
		sql += "burgerNmae='"+vo.getBurgerName()+"', '"+vo.getBurgerPay()+"' ";
		sql += "where burgerNum = " + vo.getBurgerNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//버거종류 목록
		public List<burgerVO> getAllburger(){
			driverLoad();
			DBConnect();
			
			String sql = "select * from burger";
			executeQuery(sql);
			
			List<burgerVO> list = new ArrayList<burgerVO>();
			
			while(next()) {
				burgerVO vo = new burgerVO();
				vo.setBurgerNum(getInt("bugerNum"));
				vo.setBurgerName(getString("burgerName"));
				vo.setBurgerPay(getString("burgerPay"));
				list.add(vo);
			}
			DBDisConnect();
			return list;
		}
}
