SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS shopping;
DROP TABLE IF EXISTS options;
DROP TABLE IF EXISTS orderList;
DROP TABLE IF EXISTS shoppingList;




CREATE TABLE orderList
(
	-- 주문목록 번호
	orderListNo int NOT NULL AUTO_INCREMENT COMMENT '주문목록 번호',
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	PRIMARY KEY (orderListNo)
);


CREATE TABLE orders
(
	-- 장바구니번호
	orderNum int NOT NULL AUTO_INCREMENT COMMENT '장바구니번호',
	-- 주문목록 번호
	orderListNo int COMMENT '주문목록 번호',
	-- 버거 번호
	burgerNum int COMMENT '버거 번호',
	-- 옵션번호
	optionsNum int COMMENT '옵션번호',
	-- 음료번호
	drinkNum int COMMENT '음료번호',
	-- 사이드번호
	sideNum int COMMENT '사이드번호',
	-- 디저트번호
	dessertNum int COMMENT '디저트번호',
	-- 기타번호
	etcNum int COMMENT '기타번호',
	-- 0 : 
	-- 1 :
	-- 2 : 삭제 
	orderType int DEFAULT 1 NOT NULL COMMENT '0 : 
1 :
2 : 삭제 ',
	-- 수량
	quantity varchar(255) NOT NULL COMMENT '수량',
	-- 총가격
	allPay varchar(255) NOT NULL COMMENT '총가격',
	PRIMARY KEY (orderNum)
);



CREATE TABLE shopping
(
	-- 장바구니번호
	orderNum int NOT NULL AUTO_INCREMENT COMMENT '장바구니번호',
	-- 장바구니목록 번호
	shoppingListNo int NOT NULL COMMENT '장바구니목록 번호',
	-- 버거 번호
	burgerNum int COMMENT '버거 번호',
	-- 옵션번호
	optionsNum int COMMENT '옵션번호',
	-- 음료번호
	drinkNum int COMMENT '음료번호',
	-- 사이드번호
	sideNum int COMMENT '사이드번호',
	-- 디저트번호
	dessertNum int COMMENT '디저트번호',
	-- 기타번호
	etcNum int COMMENT '기타번호',
	-- 수량
	quantity varchar(255) NOT NULL COMMENT '수량',
	-- 총가격
	allPay varchar(255) NOT NULL COMMENT '총가격',
	PRIMARY KEY (orderNum)
);


CREATE TABLE shoppingList
(
	-- 장바구니목록 번호
	shoppingListNo int NOT NULL AUTO_INCREMENT COMMENT '장바구니목록 번호',
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	PRIMARY KEY (shoppingListNo)
);



ALTER TABLE orders
	ADD FOREIGN KEY (burgerNum)
	REFERENCES burger (burgerNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (burgerNum)
	REFERENCES burger (burgerNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (dessertNum)
	REFERENCES dessert (dessertNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (dessertNum)
	REFERENCES dessert (dessertNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (drinkNum)
	REFERENCES drink (drinkNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (drinkNum)
	REFERENCES drink (drinkNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (etcNum)
	REFERENCES etc (etcNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (etcNum)
	REFERENCES etc (etcNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (optionsNum)
	REFERENCES options (optionsNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (optionsNum)
	REFERENCES options (optionsNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (orderListNo)
	REFERENCES orderList (orderListNo)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (shoppingListNo)
	REFERENCES shoppingList (shoppingListNo)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



ALTER TABLE orders
	ADD FOREIGN KEY (sideNum)
	REFERENCES side (sideNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (sideNum)
	REFERENCES side (sideNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



ALTER TABLE orderList
	ADD FOREIGN KEY (phone)
	REFERENCES users (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shoppingList
	ADD FOREIGN KEY (phone)
	REFERENCES users (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



