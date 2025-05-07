package insertData;

import java.util.List;

import addTopping.addToppingDAO;
import addTopping.addToppingVO;
import delTopping.delToppingDAO;
import delTopping.delToppingVO;
import shoppingList.shoppingListDAO;
import user.userDAO;
import user.userVO;

public class insertQuery {

	public static void main(String[] args) {
		
//		userDAO dao = new userDAO();
//
//		List<userVO> list = dao.getAllUser();
//		
//		for(int i = 0; i < list.size(); i++) {
//			userVO vo = list.get(i);
//			
//			String name = vo.getName();
//			String nick = vo.getNick();
//			String phone = vo.getPhone();
//			String birth = vo.getBirth();
//
//			System.out.println(name + nick + phone + birth); 
//			
//		}
		
//		shoppingListDAO sdao = new shoppingListDAO();
//		String id = sdao.insShopListOne("01012345678");
//		System.out.println(id);
		
//		String[] toppingOptions = {
//	            "패티 추가 +5,000",
//	            "치즈추가 +3,000",
//	            "베이컨 +3,000",
//	            "치킨추가 +5,000",
//	            "새우추가 5,000",
//	            "해시브라운 +3,000",
//	            "통모짜추가 +3,000"
//	        };
//
//	        String[] sauceOptions = {
//	            "BBQ 소스+500",
//	            "치폴레 소스 +500",
//	            "스리라차 +500",
//	            "랜치소스 +500",
//	            "머스타드 +500",
//	            "타바스코 +3,000"
//	        };
//
//	        addToppingDAO dao = new addToppingDAO();
//
//	        // 토핑 추가 (타입 1)
//	        for (String option : toppingOptions) {
//	            addToppingVO vo = new addToppingVO();
//	            vo.setAddToppingName(extractName(option));
//	            vo.setAddToppingPay(extractPay(option)); // String으로 세팅
//	            vo.setAddToppingType(1); // 토핑
//	            dao.insAdd(vo);
//	        }
//
//	        // 소스 추가 (타입 2)
//	        for (String option : sauceOptions) {
//	            addToppingVO vo = new addToppingVO();
//	            vo.setAddToppingName(extractName(option));
//	            vo.setAddToppingPay(extractPay(option)); // String으로 세팅
//	            vo.setAddToppingType(2); // 소스
//	            dao.insAdd(vo);
//	        }
//			
//		}
//
//	        // 이름 추출 함수: "패티 추가 +5,000" → "패티"
//	        public static String extractName(String text) {
//	            return text.replaceAll("추가", "")
//	                       .replaceAll("\\+?\\d[\\d,]*", "")
//	                       .trim();
//	        }
//
//	        // 가격 추출 함수 (문자열 반환): "패티 추가 +5,000" → "5000"
//	        public static String extractPay(String text) {
//	            return text.replaceAll("[^0-9]", ""); // 숫자만 남겨서 문자열로 반환
//	        }
		
	
        String[] delToppingOptions = {
                "토마토", "양파", "베이컨", "치즈", "피클"
            };

        String[] delSauceOptions = {
        	    "마요네즈",
        	    "케첩",
        	    "머스타드",
        	    "BBQ 소스",
        	    "스위트칠리",
        	    "랜치소스"
        	};

            String[] drinkOptions = {
                "ICE", "HOT", "얼음많이", "얼음조금"
            };

            delToppingDAO dao = new delToppingDAO();

//            // 토핑 빼기 (type = 1)
//            for (String name : delToppingOptions) {
//                delToppingVO vo = new delToppingVO();
//                vo.setDelToppingName(name);
//                vo.setDelToppingType(1);
//                dao.insDel(vo);
//            }

            // 소스 빼기 (type = 2) → 현재 옵션이 없지만 구조는 이렇습니다
            for (String name : delSauceOptions) {
                delToppingVO vo = new delToppingVO();
                vo.setDelToppingName(name);
                vo.setDelToppingType(2);
                dao.insDel(vo);
            }

//            // 음료 옵션 (type = 3)
//            for (String name : drinkOptions) {
//                delToppingVO vo = new delToppingVO();
//                vo.setDelToppingName(name);
//                vo.setDelToppingType(3);
//                dao.insDel(vo);
//            }

		
		
	}
}
