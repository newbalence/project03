package etc;

import java.util.ArrayList;
import java.util.List;

import db.DBManager;

public class etcDAO extends DBManager {
	
	//음료 등록
	public void insEtc(etcVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "insert into etc(etcName, etcPay, etcType)";
		sql += "values('"+vo.getEtcName()+"', '"+vo.getEtcPay()+"', '1')";
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//수정
	public void modiEtc(etcVO vo) {
		driverLoad();
		DBConnect();
		
		String sql = "update etc set ";
		sql += "etcName= '"+vo.getEtcName()+"', etcPay= '"+vo.getEtcPay()+"' ";
		sql += "where etcNum = " + vo.getEtcNum();
		executeUpdate(sql);
		
		DBDisConnect();
	}
	
	//버거종류 목록
	public List<etcVO> selEtcAll(){
		driverLoad();
		DBConnect();
		
		String sql = "select * from etc where etcType = '1'";
		executeQuery(sql);
		
		List<etcVO> list = new ArrayList<etcVO>();
		
		while(next()) {
			etcVO vo = new etcVO();
			vo.setEtcNum(getInt("etcNum"));
			vo.setEtcName(getString("etcName"));
			vo.setEtcPay(getString("etcPay"));
			
			list.add(vo);
		}
		DBDisConnect();
		return list;
	}
	
	//디저트종류 목록
	public etcVO selEtcOne(int no){
		driverLoad();
		DBConnect();
		
		String sql = "select * from etc where etcNum = " + no;
		executeQuery(sql);
		
		if(next()) {
			etcVO vo = new etcVO();
			vo.setEtcNum(getInt("etcNum"));
			vo.setEtcName(getString("etcName"));
			vo.setEtcPay(getString("etcPay"));
			
			return vo;
		}
		DBDisConnect();
		return null;
	}
	
	//삭제
	public void delEtc(int no) {
		driverLoad();
		DBConnect();
		
		String sql = "update etc set etcType = '2' where no = " + no;
		executeUpdate(sql);
		
		DBDisConnect();
	}
}
