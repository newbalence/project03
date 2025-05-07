package insertData;

import java.util.List;

import user.userDAO;
import user.userVO;

public class insertQuery {

	public static void main(String[] args) {
		
		userDAO dao = new userDAO();

		List<userVO> list = dao.getAllUser();
		
		for(int i = 0; i < list.size(); i++) {
			userVO vo = list.get(i);
			
			String name = vo.getName();
			String nick = vo.getNick();
			String phone = vo.getPhone();
			String birth = vo.getBirth();

			System.out.println(name + nick + phone + birth); 
			
		}
		
		
	}
}
