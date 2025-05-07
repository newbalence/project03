SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS middleorder;
DROP TABLE IF EXISTS shopping;
DROP TABLE IF EXISTS options;
DROP TABLE IF EXISTS burger;
DROP TABLE IF EXISTS dessert;
DROP TABLE IF EXISTS drink;
DROP TABLE IF EXISTS etc;
DROP TABLE IF EXISTS faceData;
DROP TABLE IF EXISTS pay;
DROP TABLE IF EXISTS receipt;
DROP TABLE IF EXISTS side;
DROP TABLE IF EXISTS users;




/* Create Tables */

CREATE TABLE burger
(
	-- 버거 번호
	burgerNum int NOT NULL AUTO_INCREMENT COMMENT '버거 번호',
	-- 버거이름
	burgerName varchar(255) NOT NULL COMMENT '버거이름',
	-- 버거 가격
	burgerPay varchar(255) NOT NULL COMMENT '버거 가격',
	-- 버거 이미지 이름
	burger_img_name varchar(255) COMMENT '버거 이미지 이름',
	-- 버거 이미지 저장장소
	burger_img_location varchar(255) COMMENT '버거 이미지 저장장소',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	-- 
	burgerType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
	PRIMARY KEY (burgerNum)
);


CREATE TABLE dessert
(
	-- 디저트번호
	dessertNum int NOT NULL AUTO_INCREMENT COMMENT '디저트번호',
	-- 디저트이름
	dessertName varchar(255) NOT NULL COMMENT '디저트이름',
	-- 디저트가격
	dessertPay varchar(255) NOT NULL COMMENT '디저트가격',
	-- 디저트 이미지 이름
	dessert_img_name varchar(255) COMMENT '디저트 이미지 이름',
	-- 디저트 이미지 저장장소
	dessert_img_location varchar(255) COMMENT '디저트 이미지 저장장소',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	-- 
	dessertType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
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
	-- 음료 이미지 이름
	drink_img_name varchar(255) COMMENT '음료 이미지 이름',
	-- 음료 이미지 저장장소
	drink_img_location varchar(255) COMMENT '음료 이미지 저장장소',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	drinkType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지',
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
	-- 기타 이미지 이름
	etc_img_name varchar(255) COMMENT '기타 이미지 이름',
	-- 기타 이미지 저장장소
	etc_img_location varchar(255) COMMENT '기타 이미지 저장장소',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	-- 
	etcType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
	PRIMARY KEY (etcNum)
);


CREATE TABLE faceData
(
	-- 회원전화번호
	phone varchar(255) NOT NULL COMMENT '회원전화번호',
	-- 얼굴정보
	faceData varchar(255) NOT NULL COMMENT '얼굴정보',
	PRIMARY KEY (phone)
);


CREATE TABLE middleorder
(
	middleOrder int NOT NULL,
	-- 장바구니번호
	shoppingNum int NOT NULL COMMENT '장바구니번호',
	-- 주문내역번호
	receiptNum int NOT NULL COMMENT '주문내역번호'
);


CREATE TABLE options
(
	-- 옵션번호
	optionsNum int NOT NULL AUTO_INCREMENT COMMENT '옵션번호',
	-- 버거 번호
	burgerNum int COMMENT '버거 번호',
	-- 사이드번호
	sideNum int COMMENT '사이드번호',
	-- 음료번호
	drinkNum int COMMENT '음료번호',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	-- 
	optionType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
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
	-- 1: 결제 대기
	-- 2: 결제 실패
	payType int DEFAULT 1 NOT NULL COMMENT '결제 성공 실패 확인
0: 결제 성공
1: 결제 대기
2: 결제 실패',
	PRIMARY KEY (payNum)
);


CREATE TABLE receipt
(
	-- 주문내역번호
	receiptNum int NOT NULL AUTO_INCREMENT COMMENT '주문내역번호',
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
	shoppingType varchar(255) COMMENT '0 : 
1 :
2 : 삭제 ',
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
	-- 사이드 이미지 이름
	side_img_name varchar(255) COMMENT '사이드 이미지 이름',
	-- 사이드 이미지 저장장소
	side_img_location varchar(255) COMMENT '사이드 이미지 저장장소',
	-- 0 : 판매 예정
	-- 1 : 판매중
	-- 2 : 판매중지
	sideType varchar(255) NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지',
	PRIMARY KEY (sideNum)
);


CREATE TABLE users
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
	userType int DEFAULT 1 NOT NULL COMMENT '0: 관리자
1: 일반회원
2: 탈퇴회원
3: 차단회원',
	createDate timestamp DEFAULT NOW(),
	deleteDate timestamp,
	updateDate timestamp,
	PRIMARY KEY (phone)
);



/* Create Foreign Keys */

ALTER TABLE options
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


ALTER TABLE shopping
	ADD FOREIGN KEY (optionsNum)
	REFERENCES options (optionsNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE middleorder
	ADD FOREIGN KEY (receiptNum)
	REFERENCES receipt (receiptNum)
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
	REFERENCES users (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE pay
	ADD FOREIGN KEY (phone)
	REFERENCES users (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE receipt
	ADD FOREIGN KEY (phone)
	REFERENCES users (phone)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



