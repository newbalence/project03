SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS pay;
DROP TABLE IF EXISTS receipt;
DROP TABLE IF EXISTS middleorder;
DROP TABLE IF EXISTS shopping;
DROP TABLE IF EXISTS options;
DROP TABLE IF EXISTS bugger;
DROP TABLE IF EXISTS dessert;
DROP TABLE IF EXISTS drink;
DROP TABLE IF EXISTS etc;
DROP TABLE IF EXISTS faceData;
DROP TABLE IF EXISTS side;
DROP TABLE IF EXISTS user;




/* Create Tables */

CREATE TABLE bugger
(
	-- 버거 번호
	buggerNum int NOT NULL AUTO_INCREMENT COMMENT '버거 번호',
	-- 버거이름
	buggerName varchar(255) NOT NULL COMMENT '버거이름',
	-- 버거 가격
	buggerPay varchar(255) NOT NULL COMMENT '버거 가격',
	PRIMARY KEY (buggerNum)
);


CREATE TABLE dessert
(
	-- 디저트번호
	dessertNum int NOT NULL AUTO_INCREMENT COMMENT '디저트번호',
	-- 디저트이름
	dessertName varchar(255) NOT NULL COMMENT '디저트이름',
	-- 디저트가격
	dessertPay varchar(255) NOT NULL COMMENT '디저트가격',
	PRIMARY KEY (dessertNum)
);


CREATE TABLE drink
(
	-- 음료번호
	drinkNum int NOT NULL AUTO_INCREMENT COMMENT '음료번호',
	-- 음료이름
	drinkName varchar(255) NOT NULL COMMENT '음료이름',
	-- 음료 가격
	-- 
	drinkPay varchar(255) NOT NULL COMMENT '음료 가격
',
	PRIMARY KEY (drinkNum)
);


CREATE TABLE etc
(
	-- 기타번호
	etcNum int NOT NULL AUTO_INCREMENT COMMENT '기타번호',
	-- 기타이름
	etcName varchar(255) NOT NULL COMMENT '기타이름',
	-- 기타가격
	etcPay varchar(255) NOT NULL COMMENT '기타가격',
	PRIMARY KEY (etcNum)
);


CREATE TABLE faceData
(
	-- 얼굴정보 번호
	faceNum int NOT NULL AUTO_INCREMENT COMMENT '얼굴정보 번호',
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 얼굴정보
	faceData varchar(255) NOT NULL COMMENT '얼굴정보',
	PRIMARY KEY (faceNum)
);


CREATE TABLE middleorder
(
	middleOrder int NOT NULL AUTO_INCREMENT,
	-- 장바구니번호
	shoppingNum int NOT NULL COMMENT '장바구니번호',
	PRIMARY KEY (middleOrder)
);


CREATE TABLE options
(
	-- 옵션번호
	optionsNum int NOT NULL AUTO_INCREMENT COMMENT '옵션번호',
	-- 버거 번호
	buggerNum int COMMENT '버거 번호',
	-- 사이드번호
	sideNum int COMMENT '사이드번호',
	-- 음료번호
	drinkNum int COMMENT '음료번호',
	PRIMARY KEY (optionsNum)
);


CREATE TABLE pay
(
	-- 결제번호
	payNum int NOT NULL AUTO_INCREMENT COMMENT '결제번호',
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 주문내역번호
	receiptNum int NOT NULL COMMENT '주문내역번호',
	-- 결제금액
	money varchar(255) NOT NULL COMMENT '결제금액',
	-- 결제 성공 실패 확인
	-- 0: 결제 성공
	-- 1: 결제 실패
	payType int NOT NULL COMMENT '결제 성공 실패 확인
0: 결제 성공
1: 결제 실패',
	PRIMARY KEY (payNum)
);


CREATE TABLE receipt
(
	-- 주문내역번호
	receiptNum int NOT NULL AUTO_INCREMENT COMMENT '주문내역번호',
	middleOrder int NOT NULL,
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 주문가격
	receiptPay varchar(255) NOT NULL COMMENT '주문가격',
	PRIMARY KEY (receiptNum)
);


CREATE TABLE shopping
(
	-- 장바구니번호
	shoppingNum int NOT NULL AUTO_INCREMENT COMMENT '장바구니번호',
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 버거 번호
	buggerNum int COMMENT '버거 번호',
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
	PRIMARY KEY (shoppingNum)
);


CREATE TABLE side
(
	-- 사이드번호
	sideNum int NOT NULL AUTO_INCREMENT COMMENT '사이드번호',
	-- 사이드이름
	sideName varchar(255) NOT NULL COMMENT '사이드이름',
	-- 사이드가격
	sidePay varchar(255) NOT NULL COMMENT '사이드가격',
	PRIMARY KEY (sideNum)
);


CREATE TABLE user
(
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 회원이름
	name varchar(255) NOT NULL COMMENT '회원이름',
	-- 회원 닉네임
	nick varchar(255) NOT NULL COMMENT '회원 닉네임',
	-- 회원 생년월일
	-- 
	birth varchar(255) NOT NULL COMMENT '회원 생년월일
',
	-- 0: 관리자
	-- 1: 일반회원
	-- 2: 탈퇴회원
	-- 3: 차단회원
	userType int NOT NULL COMMENT '0: 관리자
1: 일반회원
2: 탈퇴회원
3: 차단회원',
	PRIMARY KEY (phone)
);



/* Create Foreign Keys */

ALTER TABLE options
	ADD FOREIGN KEY (buggerNum)
	REFERENCES bugger (buggerNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (buggerNum)
	REFERENCES bugger (buggerNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (dessertNum)
	REFERENCES dessert (dessertNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE options
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


ALTER TABLE shopping
	ADD FOREIGN KEY (etcNum)
	REFERENCES etc (etcNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE receipt
	ADD FOREIGN KEY (middleOrder)
	REFERENCES middleorder (middleOrder)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (optionsNum)
	REFERENCES options (optionsNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pay
	ADD FOREIGN KEY (receiptNum)
	REFERENCES receipt (receiptNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE middleorder
	ADD FOREIGN KEY (shoppingNum)
	REFERENCES shopping (shoppingNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE options
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


ALTER TABLE faceData
	ADD FOREIGN KEY (phone)
	REFERENCES user (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pay
	ADD FOREIGN KEY (phone)
	REFERENCES user (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE receipt
	ADD FOREIGN KEY (phone)
	REFERENCES user (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE shopping
	ADD FOREIGN KEY (phone)
	REFERENCES user (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



