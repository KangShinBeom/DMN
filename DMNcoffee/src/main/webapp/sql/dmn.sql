--CATEGORY 테이블 생성
CREATE TABLE CATEGORY (
    CTNO NUMBER(4) PRIMARY KEY
    , CTNM VARCHAR2(20)    
    );
--PRODUCT 테이블 생성
CREATE TABLE PRODUCT (
    PDNO NUMBER(4) PRIMARY KEY
    , PDNM VARCHAR2(50)
    , EPDNM VARCHAR2(50)
    , PDPRICE NUMBER(7)
    , CTNO NUMBER(4) REFERENCES CATEGORY
    );
    
--MEMBER 테이블 생성     
CREATE TABLE MEMBER (
    MEMNO NUMBER(20) PRIMARY KEY
    , MEMNAME VARCHAR2(10) NOT NULL
    , MEMPHONE NUMBER(11) NOT NULL
    , MEMEMAIL VARCHAR2(45) NOT NULL
    , MEMPASSWD VARCHAR2(20) NOT NULL
    , MEMPOINT NUMBER(10)
    , MEMGRADE VARCHAR2(5)
    );
    
--OPT 테이블 생성 
CREATE TABLE OPT (
    OPTNO NUMBER(10) PRIMARY KEY
    , OPTNAME VARCHAR2(30)
    , OPTPRICE NUMBER(10)
    , CTNO NUMBER(10) REFERENCES CATEGORY
    );
   
--SALE 테이블 생성 
CREATE TABLE SALE (
    SALENO NUMBER(10)
    ,PDNO NUMBER(4) REFERENCES PRODUCT
    ,OPTNO NUMBER(10) REFERENCES OPT
    ,OPTAMT NUMBER(5)
    ,MEMNO NUMBER(20) REFERENCES MEMBER
    ,SALEDATE DATE
    ,SALECOMPLETE VARCHAR2(5)
    ,CONSTRAINT SALE_GROUP_PK PRIMARY KEY(SALENO,PDNO,OPTNO)
);

-- SALE 데이터 입력 테스트케이스!! 
-- 회원넘버22042800001님이 
-- 주문[핫라떼 -옵션 : 샷추가, 슈가시럽추가, 연하게추가]을 실행했을때 입력되는 INSERT문
insert into SALE (SALENO, PDNO, OPTNO, OPTAMT, MEMNO, SALEDATE, SALECOMPLETE)
            VALUES (07190001, 71, 51, 1, 2022000001, SYSDATE, 'N');
insert into SALE (SALENO, PDNO, OPTNO, OPTAMT, MEMNO, SALEDATE, SALECOMPLETE)
            VALUES (07190001, 71, 52, 1, 2022000001, SYSDATE, 'N');
insert into SALE (SALENO, PDNO, OPTNO, OPTAMT, MEMNO, SALEDATE, SALECOMPLETE)
            VALUES (07190001, 71, 56, 1, 2022000001, SYSDATE, 'N');
 

 
-- CATEGORY 테이블 insert문
insert into category (ctno, ctnm) VALUES (01, '디저트');
insert into category (ctno, ctnm) VALUES (02, '논카페');
insert into category (ctno, ctnm) VALUES (03, '디카페인');
insert into category (ctno, ctnm) VALUES (04, '스무디');
insert into category (ctno, ctnm) VALUES (05, '커피(HOT)');
insert into category (ctno, ctnm) VALUES (06, '커피(ICE)');



-- PRODUCT 테이블 insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (1, '레드벨벳 스틱케이크','redVelvetStickCake' , 2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (2, '초콜릿 스틱케이크', 'chocolateStickCake' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (3, '치즈 스틱케이크', 'cheeseStickCake' , 2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (4, '티라미수 스틱케이크', 'tiramisuStickCake' , 2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (5, '허니브레드',  'honeyBread' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (6, '녹차 마카롱', 'greenTeaMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (7, '딸기 마카롱', 'strawberryMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (8, '민트 마카롱', 'mintMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (9, '바닐라 마카롱', 'vanillaMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (10, '블루베리 마카롱', 'blueBerryMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (11, '유니콘 마카롱', 'unicornMacaron' , 2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (12, '인절미 마카롱', 'injeolmiMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (13, '자몽 마카롱', 'grapeFruitMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (14, '초코 마카롱', 'chocoMacaron' ,2000, 01);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (15, '피치 마카롱', 'peachMacaron' ,2000, 01);

-- 2. 논카페 insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (21, '패션후르츠 에이드', 'fashionFruitAde' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (22, '라임모히또 에이드', 'limeMojitoAde' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (23, '복숭아 아이스티', 'peachIceTea' , 2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (24, '블루레몬 에이드', 'blueLemonAde' , 2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (25, '자몽 에이드', 'grapeFruitAde' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (26, '오렌지 에이드', 'orangeAde' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (27, '핑크레몬 에이드', 'pinkLemonAde' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (28, '딸기라떼', 'strawberryLatte' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (29, '초코라떼', 'chocoLatte' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (30, '아이스 녹차라떼', 'iceGreenTeaLatte' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (31, '핫녹차 라떼', 'hotGreenTeaLatte' ,2000, 02);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (32, '토피넛 라떼', 'toffeeNutLatte' , 2000, 02);

-- 3. 디카페인 insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (41, '콜드브루 라떼',  'coldBrewLatte' , 2000, 03);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (42, '콜드브루 슈가라떼', 'coldBrewSugarLatte' ,2000, 03);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (43, '콜드브루 마끼아또', 'coldBrewMacchiato' , 2000, 03);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (44, '콜드브루 헤이즐넛라떼', 'coldBrewHazelnutLatte' , 2000, 03);

-- 4. 스무디 insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (51, '녹차 스무디', 'greenTeaSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (52, '딸기요거트 스무디', 'strawBerryYogurtSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (53, '망고요거트 스무디', 'mangoYogurtSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (54, '망고 스무디', 'mangoSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (55, '복숭아 스무디', 'peachSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (56, '블루베리 스무디', 'blueBerrySmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (57, '요거트 스무디', 'yogurtSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (58, '청포도 스무디', 'greenGrapeSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (59, '초코 스무디', 'chocoSmoothie' , 2000, 04);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (60, '토마토 스무디', 'tomatoSmoothie' , 2000, 04);

-- 5. 커피(HOT) insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (71, '핫 라떼', 'hotLatte' , 2000, 05);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (72, '핫 모카', 'hotMoca' , 2000, 05);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (73, '핫 아메리카노', 'hotAmericano' , 2000, 05);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (74, '핫 카푸치노', 'hotCappuccino' , 2000, 05);

-- 6. 커피(ICE) insert문
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (81, '아이스 라떼', 'iceLatte' , 2000, 06);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (82, '아이스 모카', 'iceMoca' , 2000, 06);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (83, '아이스 바닐라라떼', 'iceVanillaLatte' , 2000, 06);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (84, '아이스 아메리카노', 'iceAmericano' , 2000, 06);
insert into product (pdno, pdnm, epdnm , pdprice, ctno) VALUES (85, '아이스 카푸치노', 'iceCappuccino' , 2000, 06);

-- MEMBER 테이블 insert문
insert into member VALUES (2022000000,'비화원',01012340000,'visitor@naver.com','abcd1234',0,null);
insert into member VALUES (2022000001,'임꺽정',01012340001,'abcde1001@naver.com','abcd1234',0,null);
insert into member VALUES (2022000002,'홍길동',01012340002,'abcde1002@daum.net','abcd1234',1000,null);
insert into member VALUES (2022000003,'이순신',01012340003,'abcde1003@gmail.com','abcd1234',2000,null);
insert into member VALUES (2022000004,'유관순',01012340004,'abcde1004@naver.com','abcd1234',500,null);
insert into member VALUES (2022000005,'정약용',01012340005,'abcde1005@daum.net','abcd1234',700,null);
insert into member VALUES (2022000006,'김태희',01012340006,'abcde1006@gmail.com','abcd1234',0,null);
insert into member VALUES (2022000007,'한가인',01012340007,'abcde1007@naver.com','abcd1234',5000,null);
insert into member VALUES (2022000008,'손흥민',01012340008,'abcde1008@daum.net','abcd1234',3500,null);
insert into member VALUES (2022000009,'박서준',01012340009,'abcde1009@gmail.com','abcd1234',0,null);



--커피 : 샷추가 ,연하게,슈가시럽추가,바닐라시럽추가,카라멜시럽추가,헤이즐넛시럽추가,얼음많이,얼음적게
--스무디 : 덜달게,시럽추가,휘핑크림
--논카페 :덜달게,시럽추가,얼음많이,얼음적게,휘핑크림    

--CATEGORY 2[논카페] INSERT
insert into OPT VALUES (21,'덜달게',0,02);
insert into OPT VALUES (22,'시럽추가',500,02);
insert into OPT VALUES (23,'얼음많이',0,02);
insert into OPT VALUES (24,'얼음적게',0,02);
insert into OPT VALUES (25,'휘핑크림',500,02);

--CATEGORY 4[스무디] INSERT
insert into OPT VALUES (41,'덜달게',0,04);
insert into OPT VALUES (42,'시럽추가',500,04);
insert into OPT VALUES (43,'휘핑크림',500,04);

--CATEGORY 5[커피(HOT)] INSERT
insert into OPT VALUES (51,'샷추가',500,05);
insert into OPT VALUES (52,'슈가시럽 추가',500,05);
insert into OPT VALUES (53,'바닐라시럽 추가',500,05);
insert into OPT VALUES (54,'카라멜시럽 추가',500,05);
insert into OPT VALUES (55,'헤이즐넛시럽 추가',500,05);
insert into OPT VALUES (56,'연하게',0,05);

--CATEGORY 6[커피(ICE)] INSERT
insert into OPT VALUES (61,'샷추가',500,06);
insert into OPT VALUES (62,'슈가시럽 추가',500,06);
insert into OPT VALUES (63,'바닐라시럽 추가',500,06);
insert into OPT VALUES (64,'카라멜시럽 추가',500,06);
insert into OPT VALUES (65,'헤이즐넛시럽 추가',500,06);
insert into OPT VALUES (66,'연하게',0,06);
insert into OPT VALUES (67,'얼음많이',0,06);
insert into OPT VALUES (68,'얼음적게',0,06);


COMMIT;