package side;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class sideDAO extends DBManager {
	
	//음료 등록
	public void insSide(sideVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "";
		sql += "insert into side(sideName, sidePay, sideType)";
		sql += "values('"+vo.getSideName()+"', '"+vo.getSidePay()+"', '1')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modiSide(sideVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update side set ";
		sql += "sideName= '"+vo.getSideName()+"', sidePay= '"+vo.getSidePay()+"' ";
		sql += "where sideNum = " + vo.getSideNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//사이드종류 목록
	public List<sideVO> selSideAll(){
		driverLoad();
		DBConnect();
		
		String sql = "select * from side where sideType = 1";
		executeQuery(sql);
		
		List<sideVO> list = new ArrayList<sideVO>();
		
		while(next()) {
			sideVO vo = new sideVO();
			
			vo.setSideNum(getInt("sideNum"));
			vo.setSideName(getString("sideName"));
			vo.setSidePay(getString("sidePay"));
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
	
	//사이드종류 목록
	public sideVO selSideOne(String no){
		driverLoad();
		DBConnect();
		
		String sql = "select * from side where sideNum = " + no;
		executeQuery(sql);
		
		if(next()) {
			sideVO vo = new sideVO();
			vo.setSideNum(getInt("sideNum"));
			vo.setSideName(getString("sideName"));
			vo.setSidePay(getString("sidePay"));
			
			DBDisConnect();
			return vo;
		}
		DBDisConnect();
		return null;
	}
	
	//사이드종류 목록
	public void delSide(String no){
		driverLoad();
		DBConnect();
		
		String sql = "update side set sideType = '2' where sideNum = " + no;
		executeUpdate(sql);

		DBDisConnect();
	}
}
