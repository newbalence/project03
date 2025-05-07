SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS options;
DROP TABLE IF EXISTS addTopping;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS shopping;
DROP TABLE IF EXISTS delTopping;
DROP TABLE IF EXISTS optionList;




/* Create Tables */

CREATE TABLE addTopping
(
	-- 추가 옵션 번호
	addToppingNo int NOT NULL AUTO_INCREMENT COMMENT '추가 옵션 번호',
	-- 추가 토핑이름
	addToppingName varchar(255) NOT NULL COMMENT '추가 토핑이름',
	-- 추가 토핑 가격
	addToppingPay varchar(255) NOT NULL COMMENT '추가 토핑 가격',
	-- 1: 토핑
	-- 2: 소스
	addToppingType int NOT NULL COMMENT '1: 토핑
2: 소스',
	PRIMARY KEY (addToppingNo)
);


CREATE TABLE delTopping
(
	-- 제외 옵션 번호
	delToppingNo int NOT NULL AUTO_INCREMENT COMMENT '제외 옵션 번호',
	-- 제외 토핑이름
	delToppingName varchar(255) NOT NULL COMMENT '제외 토핑이름',
	-- 1: 토핑
	-- 2: 소스
	delToppingType int NOT NULL COMMENT '1: 토핑
2: 소스',
	PRIMARY KEY (delToppingNo)
);


CREATE TABLE optionList
(
	optionListNo int NOT NULL AUTO_INCREMENT,
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	PRIMARY KEY (optionListNo),
	UNIQUE (phone)
);


CREATE TABLE options
(
	-- 옵션번호
	optionsNum int NOT NULL AUTO_INCREMENT COMMENT '옵션번호',
	optionListNo int NOT NULL,
	-- 제외 옵션 번호
	delToppingNo int COMMENT '제외 옵션 번호',
	-- 추가 옵션 번호
	addToppingNo int COMMENT '추가 옵션 번호',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	-- 
	optionType int DEFAULT 1 NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
	PRIMARY KEY (optionsNum)
);


CREATE TABLE orders
(
	-- 장바구니번호
	orderNum int NOT NULL AUTO_INCREMENT COMMENT '장바구니번호',
	-- 주문목록 번호
	orderListNo int COMMENT '주문목록 번호',
	-- 버거 번호
	burgerNum int COMMENT '버거 번호',
	optionListNo int,
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
	shoppingNum int NOT NULL AUTO_INCREMENT COMMENT '장바구니번호',
	-- 장바구니목록 번호
	shoppingListNo int NOT NULL COMMENT '장바구니목록 번호',
	-- 버거 번호
	burgerNum int COMMENT '버거 번호',
	optionListNo int,
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
	PRIMARY KEY (shoppingNum)
);


/* Create Foreign Keys */

ALTER TABLE options
	ADD FOREIGN KEY (addToppingNo)
	REFERENCES addTopping (addToppingNo)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


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


ALTER TABLE options
	ADD FOREIGN KEY (delToppingNo)
	REFERENCES delTopping (delToppingNo)
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


ALTER TABLE options
	ADD FOREIGN KEY (optionListNo)
	REFERENCES optionList (optionListNo)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE orders
	ADD FOREIGN KEY (optionListNo)
	REFERENCES optionList (optionListNo)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (optionListNo)
	REFERENCES optionList (optionListNo)
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

