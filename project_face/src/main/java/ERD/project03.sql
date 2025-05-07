SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */
DROP TABLE IF EXISTS options;







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
	optionType int NOT NULL COMMENT '0 : 판매 예정
1 : 판매중
2 : 판매중지
',
	PRIMARY KEY (optionsNum)
);

/* Create Foreign Keys */

ALTER TABLE options
	ADD FOREIGN KEY (burgerNum)
	REFERENCES burger (burgerNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;





ALTER TABLE options
	ADD FOREIGN KEY (drinkNum)
	REFERENCES drink (drinkNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;





ALTER TABLE options
	ADD FOREIGN KEY (sideNum)
	REFERENCES side (sideNum)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



