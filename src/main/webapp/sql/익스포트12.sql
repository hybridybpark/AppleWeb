--------------------------------------------------------
--  파일이 생성됨 - 목요일-5월-21-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CHAIN_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."CHAIN_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENUOPTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."MENUOPTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."MENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence POST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."POST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."RESERVATION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REV_MENU_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."REV_MENU_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SHOPINFO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADMIN"."SHOPINFO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACCOUNT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ACCOUNT" 
   (	"BUSINESSNUMBER" NUMBER, 
	"PASSWORD" VARCHAR2(40 BYTE), 
	"EMAIL" VARCHAR2(40 BYTE), 
	"PHONE" VARCHAR2(100 BYTE), 
	"EMAILACCEPT" VARCHAR2(20 BYTE), 
	"SMSACCEPT" VARCHAR2(20 BYTE), 
	"BUSINESSNAME" VARCHAR2(40 BYTE), 
	"WDATE" VARCHAR2(1000 BYTE), 
	"CONDITION" VARCHAR2(20 BYTE), 
	"ADATE" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."BUSINESSNUMBER" IS '사업자번호';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."PASSWORD" IS '비밀번호';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."PHONE" IS '연락처';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."EMAILACCEPT" IS '이메일수신여부';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."SMSACCEPT" IS '문자수신여부';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."BUSINESSNAME" IS '사업자명';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."WDATE" IS '요청날짜
';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."CONDITION" IS '상태';
   COMMENT ON COLUMN "ADMIN"."ACCOUNT"."ADATE" IS '승인날짜';
   COMMENT ON TABLE "ADMIN"."ACCOUNT"  IS '사업자 계정 테이블';
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "ADMIN"."ADMIN" 
   (	"ADMINID" VARCHAR2(20 BYTE), 
	"ADMINPASSWORD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHAINS
--------------------------------------------------------

  CREATE TABLE "ADMIN"."CHAINS" 
   (	"CHAINNAME" VARCHAR2(200 BYTE), 
	"CHAINIMAGE" VARCHAR2(400 BYTE), 
	"CHAINDESC" VARCHAR2(1000 BYTE), 
	"SID" NUMBER, 
	"CHAINTITLEIMAGE" VARCHAR2(1000 BYTE), 
	"CATEGORY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."CHAINS"."CHAINNAME" IS '체인명';
   COMMENT ON COLUMN "ADMIN"."CHAINS"."CHAINIMAGE" IS '체인이미지';
   COMMENT ON COLUMN "ADMIN"."CHAINS"."CHAINDESC" IS '체인설명';
   COMMENT ON COLUMN "ADMIN"."CHAINS"."SID" IS 'SID';
   COMMENT ON COLUMN "ADMIN"."CHAINS"."CHAINTITLEIMAGE" IS '체인타이틀';
   COMMENT ON COLUMN "ADMIN"."CHAINS"."CATEGORY" IS 'category
';
--------------------------------------------------------
--  DDL for Table MENU
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MENU" 
   (	"MENUNAME" VARCHAR2(200 BYTE), 
	"MENUPRICE" NUMBER, 
	"MENUIMAGE" VARCHAR2(400 BYTE), 
	"MENUDESC" VARCHAR2(1000 BYTE), 
	"MENUCATEGORY" VARCHAR2(200 BYTE), 
	"SHOPNAME" VARCHAR2(200 BYTE), 
	"BUSINESSNUMBER" NUMBER, 
	"SID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."MENU"."MENUNAME" IS '메뉴이름';
   COMMENT ON COLUMN "ADMIN"."MENU"."MENUPRICE" IS '메뉴가격';
   COMMENT ON COLUMN "ADMIN"."MENU"."MENUIMAGE" IS '메뉴이미지';
   COMMENT ON COLUMN "ADMIN"."MENU"."MENUDESC" IS '메뉴설명';
   COMMENT ON COLUMN "ADMIN"."MENU"."MENUCATEGORY" IS '메뉴분류';
   COMMENT ON COLUMN "ADMIN"."MENU"."SHOPNAME" IS '상점이름';
   COMMENT ON COLUMN "ADMIN"."MENU"."BUSINESSNUMBER" IS '사업자번호';
   COMMENT ON COLUMN "ADMIN"."MENU"."SID" IS 'SID';
--------------------------------------------------------
--  DDL for Table MENUOPTION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."MENUOPTION" 
   (	"OPTIONNAME" VARCHAR2(20 BYTE), 
	"MENUNAME" VARCHAR2(20 BYTE), 
	"MENUSID" NUMBER, 
	"OPTIONPRICE" NUMBER, 
	"OPTIONSID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."MENUOPTION"."OPTIONNAME" IS '옵션이름';
   COMMENT ON COLUMN "ADMIN"."MENUOPTION"."MENUNAME" IS '메뉴이름';
   COMMENT ON COLUMN "ADMIN"."MENUOPTION"."MENUSID" IS '메뉴참조';
   COMMENT ON COLUMN "ADMIN"."MENUOPTION"."OPTIONPRICE" IS '옵션가격';
   COMMENT ON COLUMN "ADMIN"."MENUOPTION"."OPTIONSID" IS 'SID';
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "ADMIN"."POST" 
   (	"WRITERNAME" VARCHAR2(20 BYTE), 
	"WRITERPHONE" NUMBER, 
	"MARK" VARCHAR2(20 BYTE), 
	"POSTCONTENT" VARCHAR2(1000 BYTE), 
	"WRITEDATE" VARCHAR2(1000 BYTE), 
	"SHOPNAME" VARCHAR2(20 BYTE), 
	"BUSINESSNUMBER" NUMBER, 
	"POSTREPLY" VARCHAR2(1000 BYTE), 
	"SID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."POST"."WRITERNAME" IS '작성자이름';
   COMMENT ON COLUMN "ADMIN"."POST"."WRITERPHONE" IS '작성자연락처';
   COMMENT ON COLUMN "ADMIN"."POST"."MARK" IS '평점';
   COMMENT ON COLUMN "ADMIN"."POST"."POSTCONTENT" IS '후기내용';
   COMMENT ON COLUMN "ADMIN"."POST"."WRITEDATE" IS '작성날짜';
   COMMENT ON COLUMN "ADMIN"."POST"."SHOPNAME" IS '상점이름';
   COMMENT ON COLUMN "ADMIN"."POST"."BUSINESSNUMBER" IS '사업자번호';
   COMMENT ON COLUMN "ADMIN"."POST"."POSTREPLY" IS '후기답변';
   COMMENT ON COLUMN "ADMIN"."POST"."SID" IS 'SID';
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "ADMIN"."QNA" 
   (	"WRITERNAME" VARCHAR2(20 BYTE), 
	"WRITERPHONE" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"WRITEDATE" VARCHAR2(1000 BYTE), 
	"CONTENT" VARCHAR2(1000 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"REPLYCONTENT" VARCHAR2(1000 BYTE), 
	"REPLYDATE" VARCHAR2(20 BYTE), 
	"SID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."QNA"."WRITERNAME" IS '작성자이름';
   COMMENT ON COLUMN "ADMIN"."QNA"."WRITERPHONE" IS '작성자연락처';
   COMMENT ON COLUMN "ADMIN"."QNA"."TITLE" IS '제목';
   COMMENT ON COLUMN "ADMIN"."QNA"."WRITEDATE" IS '작성날짜';
   COMMENT ON COLUMN "ADMIN"."QNA"."CONTENT" IS '질문내용';
   COMMENT ON COLUMN "ADMIN"."QNA"."PASSWORD" IS '글비밀번호';
   COMMENT ON COLUMN "ADMIN"."QNA"."REPLYCONTENT" IS '답변내용';
   COMMENT ON COLUMN "ADMIN"."QNA"."REPLYDATE" IS '답변날짜';
   COMMENT ON COLUMN "ADMIN"."QNA"."SID" IS 'SID';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RESERVATION" 
   (	"NAME" VARCHAR2(200 BYTE), 
	"PHONE" VARCHAR2(200 BYTE), 
	"SHOPNAME" VARCHAR2(200 BYTE), 
	"BUSINESSNUMBER" NUMBER, 
	"RESERVATIONTIME" VARCHAR2(200 BYTE), 
	"RESERVATIONDATE" VARCHAR2(200 BYTE), 
	"SID" NUMBER, 
	"STATE" VARCHAR2(20 BYTE), 
	"PEOPLE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."RESERVATION"."NAME" IS '예약자이름';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."PHONE" IS '예약자 핸드폰 번호';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."SHOPNAME" IS '가게명';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."BUSINESSNUMBER" IS '사업자번호';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."RESERVATIONTIME" IS '예약시간';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."RESERVATIONDATE" IS '예약날짜';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."SID" IS 'SID
';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."STATE" IS '상태';
   COMMENT ON COLUMN "ADMIN"."RESERVATION"."PEOPLE" IS '인원수';
--------------------------------------------------------
--  DDL for Table RESERVATIONMENU
--------------------------------------------------------

  CREATE TABLE "ADMIN"."RESERVATIONMENU" 
   (	"REV_SID" NUMBER, 
	"MENU_SID" NUMBER, 
	"MENUOPTION_SID" NUMBER, 
	"SID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SHOPINFO
--------------------------------------------------------

  CREATE TABLE "ADMIN"."SHOPINFO" 
   (	"SHOPNAME" VARCHAR2(100 BYTE), 
	"BUSINESSNUMBER" NUMBER, 
	"SHOPADDRESS" VARCHAR2(1000 BYTE), 
	"SHOPPHONE" VARCHAR2(100 BYTE), 
	"SHOPCATEGORY" VARCHAR2(100 BYTE), 
	"SHOPINFO" VARCHAR2(1000 BYTE), 
	"SHOPCHAINNAME" VARCHAR2(1000 BYTE), 
	"SHOPMARK" VARCHAR2(20 BYTE), 
	"SHOPIMAGE" VARCHAR2(400 BYTE), 
	"SID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPNAME" IS '상점이름';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."BUSINESSNUMBER" IS '사업자번호';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPADDRESS" IS '상점주소';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPPHONE" IS '상점연락처';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPCATEGORY" IS '상점분류';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPINFO" IS '상점설명';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPCHAINNAME" IS '체인점이름';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPMARK" IS '상점평점';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SHOPIMAGE" IS '상점이미지';
   COMMENT ON COLUMN "ADMIN"."SHOPINFO"."SID" IS 'SID';
REM INSERTING into ADMIN.ACCOUNT
SET DEFINE OFF;
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925618800,'1234','Starbucks@naver.com','02-758-8001',null,null,'이대점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925618801,'1234','Starbucks@naver.com','02-758-8129',null,null,'CS타워점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925618802,'1234','Starbucks@naver.com','02-758-8264',null,null,'SKT Tower점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925618803,'1234','Starbucks@naver.com','02-758-8196',null,null,'W--mall점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925618804,'1234','Starbucks@naver.com','02-758-8406',null,null,'가든파이브점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925619900,'1234','zzambbong@naver.com','02-352-1814',null,null,'연신내점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925619901,'1234','zzambbong@naver.com','02-540-0410',null,null,'논현점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925619902,'1234','zzambbong@naver.com','02-555-8883',null,null,'강남역점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925619903,'1234','zzambbong@naver.com','02-3436-0410',null,null,'구의점',null,null,null);
Insert into ADMIN.ACCOUNT (BUSINESSNUMBER,PASSWORD,EMAIL,PHONE,EMAILACCEPT,SMSACCEPT,BUSINESSNAME,WDATE,CONDITION,ADATE) values (1925619904,'1234','zzambbong@naver.com','02-522-9089',null,null,'교대점',null,null,null);
REM INSERTING into ADMIN.ADMIN
SET DEFINE OFF;
Insert into ADMIN.ADMIN (ADMINID,ADMINPASSWORD) values ('admin','1234');
REM INSERTING into ADMIN.CHAINS
SET DEFINE OFF;
Insert into ADMIN.CHAINS (CHAINNAME,CHAINIMAGE,CHAINDESC,SID,CHAINTITLEIMAGE,CATEGORY) values ('스타벅스','/AppleWeb/Images/Chain/starbucksmain.jpg','고든 보커, 제럴드 제리 볼드윈 그리고 지브 시글이 1971년에 설립한 미국의 커피 프랜차이즈 브랜드로, 커피를 비롯해 차, 주스, 디저트 등을 판매함',64,'/AppleWeb/Images/Chain/starbuckstitle.jpg','까페');
Insert into ADMIN.CHAINS (CHAINNAME,CHAINIMAGE,CHAINDESC,SID,CHAINTITLEIMAGE,CATEGORY) values ('새마을식당','/AppleWeb/Images/Chain/newmaulmain.gif','불고기, 돼지김치찌개, 소금구이 등 메뉴 체인점',65,'/AppleWeb/Images/Chain/newmaultitle.jpg','한식');
Insert into ADMIN.CHAINS (CHAINNAME,CHAINIMAGE,CHAINDESC,SID,CHAINTITLEIMAGE,CATEGORY) values ('엔젤리너스','/AppleWeb/Images/Chain/angelinusmain.gif','커피 전문 프랜차이즈, 카페모카, 카페라떼, 샌드위치 등 메뉴, 매장, 멤버십 안내.',66,'/AppleWeb/Images/Chain/angelinustitle.jpg','까페');
Insert into ADMIN.CHAINS (CHAINNAME,CHAINIMAGE,CHAINDESC,SID,CHAINTITLEIMAGE,CATEGORY) values ('홍콩반점0410+','/AppleWeb/Images/Chain/zzambbongmain.gif','세계최초 짬뽕점문점',81,'/AppleWeb/Images/Chain/zzambbongtitle.gif','홍콩반점0410+');
REM INSERTING into ADMIN.MENU
SET DEFINE OFF;
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('짬뽕',4500,'/AppleWeb/Images/Menu/zzambbong/201501.gif','홍콘반점0410의 대표 메뉴인 짬뽕은 오징어, 돼지고기 그리고 신선한 각종 야채를 센 불에 볶아낸 후 육수를 넣어 얼큰하게 끓여내는 대한민국 최고의 짬뽕입니다.','식사류','연신내점',1925619900,161);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('짜장면',4000,'/AppleWeb/Images/Menu/zzambbong/201502.gif','중식특유의 불향이 가득한 명품 짜장면! 홍콩반점0410의 짜장면은 센불에 볶아내어, 불맛이 살아있는 달콤 담백한 맛과 씹을 때 마다 쫄깃하게 씹히는 돼지고기의 식감이 일품인 명품 짜장면입니다.','식사류','연신내점',1925619900,162);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('짜장밥',5500,'/AppleWeb/Images/Menu/zzambbong/201503.gif','돼지고기, 야채 등의 재료들을 춘장에 볶아내어 밥 위에 얹고, 그위에 다진 야채를 넣고 큼지막하게 부쳐낸 계란이 얹어져서 나오는 푸짐한 식사 메뉴입니다.','식사류','연신내점',1925619900,163);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('볶음짬뽕',5500,'/AppleWeb/Images/Menu/zzambbong/201504.gif','오징어와 돼지고기 그리고 각종 야채를 볶은 다음 면과 함께 굴소스가 들어간 특유의 비법소스를 넣고 볶아 낸 음식으로서 짭쪼름하면서 담백한 맛이 일품인 메뉴입니다.','식사류','연신내점',1925619900,164);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('탕수육',9500,'/AppleWeb/Images/Menu/zzambbong/201505.gif','대한민국 남녀노소 누구나 즐기는 만인의 음식 탕수육은 돼지고기의 등심부위를 기름에 튀겨 뽀송뽀송하고 노릇노릇한 고기 위에 각종 야채가 들어간 새콤 달콤한 홍콩반점0410의 비법 소스를 곁들인 음식으로 인절미 같은 쫄깃한 식감으로 인해 일반 탕수육과는 차별화된 최고의 인기 메뉴입니다.','식사류','연신내점',1925619900,165);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('군만두',4000,'/AppleWeb/Images/Menu/zzambbong/201506.gif','홍콘반점0410을 애표하는 메뉴 군만두, 이반 짜장면 집에서 덥으로 주는 어설픈 군만두가 아닌, 돼지고기와 갖은 야채를 직접 다져서 만든 정통 군만두 입니다.','식사류','연신내점',1925619900,166);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('차가면',5000,'/AppleWeb/Images/Menu/zzambbong/201507.gif','시원한 냉 육수에 쫄깃한 면과 각종 토핑을 넣어 비벼먹는 홍콩반점0410의 여름철(하절기)계절메뉴 입니다.','식사류','연신내점',1925619900,167);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('냉짬뽕',5500,'/AppleWeb/Images/Menu/zzambbong/201508.gif','시원하면서도 매콤한 국물 맛이 여름철 잃어버린 입맛을 되살려 드립니다.','식사류','연신내점',1925619900,168);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('치아씨드 월넷 브레드',5500,'/AppleWeb/Images/Menu/Starbucks/201521.jpg','다양한 견과류를 반죽에 넣고 구운 빵위에 블랙치아씨드와 쌍백당을 얹어 고소함과 달콤함이 일품인 브레드입니다.','푸드','스타벅스 이대점',1925618800,97);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아몬드 초콜릿 데니쉬',6400,'/AppleWeb/Images/Menu/Starbucks/201522.jpg','부드러운 데니쉬 반죽 안에 초콜릿 스틱과 아몬드 크림을 넣어 구운 데니쉬로 윗면에는 아몬드 크림과 아몬드 슬라이스를 올려 더욱 고소합니다.','푸드','스타벅스 이대점',1925618800,98);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('치아씨드 시나몬 데이쉬',9000,'/AppleWeb/Images/Menu/Starbucks/201523.jpg','시나몬과 카라멜 풍미의 데니쉬로 윗면에 스트류젤과 치아씨드를 올려 고소하고 달콤한 맛이 일품입니다.','푸드','스타벅스 이대점',1925618800,99);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('메이플 피칸 데니쉬 롤',5000,'/AppleWeb/Images/Menu/Starbucks/201524.jpg','달콤한 초콜릿 칩, 고소한 피칸, 새콤한 크랜베리로 만든 데니쉬 롤 위에 바른 메이플 시럽이 향긋함을 더해 줍니다. ','푸드','스타벅스 이대점',1925618800,100);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('하트 파이',5000,'/AppleWeb/Images/Menu/Starbucks/201525.jpg','버터의 풍미를 가득 느낄 수 있는 바삭한 하트 모양의 파이입니다. 오후의 간식으로 추천해 드리며, 포장되어 있어 선물용으로도 좋습니다.','푸드','스타벅스 이대점',1925618800,101);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('크랜베리 월넷 사워도우',6500,'/AppleWeb/Images/Menu/Starbucks/201526.jpg','크랜베리와 호두가 들어있는 사워도우 브레드로 사워도우 특유의 풍미를 느낄 수 있는 건강지향적인 브레드입니다. 사워도우는 산성반죽이라고도 하며, 독특한 풍미가 있어 유럽의 빵, 특히 호밀빵을 만들 때 사용합니다.','푸드','스타벅스 이대점',1925618800,102);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('초콜잇 가나슈 데니쉬',6500,'/AppleWeb/Images/Menu/Starbucks/201527.jpg','달콤한 초콜릿 필링, 초콜릿 청크와 부드러운 데니쉬 페이스트리의 풍미가 조화로운 상품입니다. 데니쉬 위에 토핑한 달콤한 쌍백당(일반 설탕보다 입자가 큰 설탕)이 바삭한 질감을 더해줍니다.','푸드','스타벅스 이대점',1925618800,103);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('치즈 데니쉬',6500,'/AppleWeb/Images/Menu/Starbucks/201528.jpg','스트링 치즈의 쫄깃한 질감을 느낄 수 있는 데니쉬 페이스트리입니다. 스트링 치즈란 실처럼 찢어먹을 수 있는 쫄깃한 질감의 비숙성 치즈입니다. 데니쉬 위에 토핑한 달콤한 쌍백당(일반 설탕보다 입자가 큰 설탕)이 바삭한 질감을 더해줍니다.','푸드','스타벅스 이대점',1925618800,104);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('시나몬 스틱',8500,'/AppleWeb/Images/Menu/Starbucks/201529.jpg','향긋하고 달콤한 스틱 모양의 퍼프 페이스트리에 설탕 시럽을 바르고 굳혀 바삭바삭한 질감이 일품입니다. 시나몬 필링은 시나몬 가루와 카라멜을 혼합해 달콤하고 향긋한 풍미를 느낄 수 있습니다. 퍼프 페이스트리 위에 토핑한 달콤한 쌍백당(일반 설탕보다 입자가 큰 설탕)이 바삭한 질감을 더해줍니다.','푸드','스타벅스 이대점',1925618800,105);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('달콤한 시나몬 롤',3300,'/AppleWeb/Images/Menu/Starbucks/201530.jpg','향긋한 시나몬 아몬드 크림을 발라 돌돌만 데니쉬 롤에 달콤한 레몬 혼당을 올린 데니쉬입니다. 시나몬 롤 위에는 피스타치오를 토핑해 고소함을 더했습니다.','푸드','스타벅스 이대점',1925618800,106);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('고다 치즈 보스톡',6550,'/AppleWeb/Images/Menu/Starbucks/201531.jpg','벌꿀을 바른 브리오쉬에 사이에 고다 치즈를 넣고 아몬드와 아몬드 크림을 올려 구운 보스톡입니다. 보스톡은 브리오쉬에 잼 혹은 오렌지 시럽을 바르고 슬라이스 아몬드와 아몬드 크림을 올려 구운 빵을 말합니다. 출출한 오후 간식이나 간단한 식사 대용으로 추천해 드립니다.','푸드','스타벅스 이대점',1925618800,107);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아몬드 카라멜 크루아상',9500,'/AppleWeb/Images/Menu/Starbucks/201532.jpg','달콤한 카라멜과 고소한 아몬드 풍미가 조화로운 크루아상입니다.','푸드','스타벅스 이대점',1925618800,108);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('월넷 크림 치즈 베이글',9500,'/AppleWeb/Images/Menu/Starbucks/201533.jpg','담백한 맛의 베이글에 호두와 크림치즈가 들어있어 더욱 고소한 맛을 느끼실 수 있습니다. 커피와 함께 드시면 더욱 좋습니다.','푸드','스타벅스 이대점',1925618800,109);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('플레인 베이글',9500,'/AppleWeb/Images/Menu/Starbucks/201534.jpg','담백한 정통 베이글로 고소한 크림치즈와 함께 든든한 아침식사를 준비하세요.','푸드','스타벅스 이대점',1925618800,110);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('블루베리 베이글',9500,'/AppleWeb/Images/Menu/Starbucks/201535.jpg','상큼한 블루베리를 넣은 새콤 달콤한 정통 베이글입니다. 아침을 깨우는 상큼한 향과 맛이 매력적인 블루베리 베이글은 크림치즈와 함께 즐기면 좋습니다.','푸드','스타벅스 이대점',1925618800,111);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('더블 치즈 베이글',7000,'/AppleWeb/Images/Menu/Starbucks/201536.jpg','양파베이글 위에 다양한 치즈를 얹은 베이글입니다. 베이글 위에 피자 치즈, 파마산 치즈, 스위스 에멘탈 치즈를 토핑하여 풍부한 치즈의 맛을 즐길 수 있습니다.','푸드','스타벅스 이대점',1925618800,112);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('헤이즐넛 마키아또',6500,'/AppleWeb/Images/Menu/Starbucks/201520.jpg','향긋한 헤이즐넛 시럽과 우유의 조화에 스타벅스의 진한 에스프레소 샷이 얹어지고, 고소한 헤이즐넛 드리즐로 마무리된 마키아또 스타일의 음료입니다.','음료','스타벅스 이대점',1925618800,96);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 카라멜 카티야또',8000,'/AppleWeb/Images/Menu/Starbucks/201504.jpg','향긋한 바닐라 시럽과 시원한 우유에 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집모양으로 카라멜 소스를 뿌려 장식한 음료로 가장 아름다운 커피 음료 중 하나입니다.','음료','스타벅스 이대점',1925618800,80);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 코코아 카푸치노',5500,'/AppleWeb/Images/Menu/Starbucks/201505.jpg','40주년을 기념하여 달콤 쌉싸름한 모카 소스에 강렬한 에스프레소 샷을 더하고 아주 적당한 양의 시원한 우유와 거품을 얹은 스타벅스만의 특별한 커피 음료 입니다.','음료','스타벅스 이대점',1925618800,81);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('화이트 초콜릿 모카',6500,'/AppleWeb/Images/Menu/Starbucks/201506.jpg','달콤하고 부드러운 화이트 초콜릿 시럽과 에스프레소를 스팀밀크와 혼합한 후 휘핑크림으로 마무리한 음료로, 풍부한 달콤함과 강렬한 에스프레소가 부드럽게 어우러진 커피 입니다.','음료','스타벅스 이대점',1925618800,82);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('카라멜 마키아또',4800,'/AppleWeb/Images/Menu/Starbucks/201507.jpg','향긋한 바닐라 시럽과 따뜻한 스팀밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집모양으로 카라멜 소스를 뿌려 장식한 달콤한 커피 음료입니다.','음료','스타벅스 이대점',1925618800,83);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('코코아 카푸치노',9900,'/AppleWeb/Images/Menu/Starbucks/201508.jpg','40주년을 기념하여 달콤 쌉싸름한 모카 소스에 강렬한 에스프레소 샷을 더하고 아주 적당한 양의 스팀우유와 거품을 얹은 스타벅스만의 특별한 커피 음료 입니다.','음료','스타벅스 이대점',1925618800,84);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 카페 아메리카노',9800,'/AppleWeb/Images/Menu/Starbucks/201509.jpg','풍부하고 진한 농도의 에스프레소에 시원한 정수물을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 부드럽지만 시원하게 즐기실 수 있는 커피입니다.','음료','스타벅스 이대점',1925618800,85);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 카페 모카',6600,'/AppleWeb/Images/Menu/Starbucks/201510.jpg','진한 초콜릿 모카 시럽과 풍부한 에스프레소의 조화에 시원한 우유가 어우러져 달콤함과 풍부함이 어우러진 음료로 시원한 얼음위에 휘핑 크림을 얹어 달콤함이 특징인 커피 음료입니다.','음료','스타벅스 이대점',1925618800,86);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 카페 라떼',5300,'/AppleWeb/Images/Menu/Starbucks/201511.jpg','풍부하고 진한 농도의 에스프레소에 시원한 우유를 더하여 우유의 고소함과 에스프레소의 강렬함이 차가운 얼음과 어우러져 시원하게 즐기실 수 있는 커피 입니다. 스타벅스만의 전용 두유를 사용하여 나만의 음료를 즐기세요! 스타벅스 두유는 커피와 부드러운 조화를 이룹니다.','음료','스타벅스 이대점',1925618800,87);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('에스프레소',8900,'/AppleWeb/Images/Menu/Starbucks/201512.jpg','스타벅스 에스프레소는 향기로운 크레마층과 바디층, 하트 층으로 이루어져 있으며, 입안 가득히 커피와 달콤한 카라멜 향이 느껴지는 커피 음료입니다.  스타벅스 에스프레소는 모든 커피 음료의 기본이 되며, 깊고 강렬한 커피를 좋아하는 ‘Coffee mania’에게 추천해 드리며, 에스프레소는 만들어지는 즉시 드시는 것이 가장 맛있습니다.','음료','스타벅스 이대점',1925618800,88);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('에스프레소 마키아또',5600,'/AppleWeb/Images/Menu/Starbucks/201513.jpg','신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로써, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 느끼실 수 있습니다.','음료','스타벅스 이대점',1925618800,89);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('에스프레소 콘 파나',4500,'/AppleWeb/Images/Menu/Starbucks/201514.jpg','신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 동시에 즐기실 수 있습니다.','음료','스타벅스 이대점',1925618800,90);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('카푸치노',7500,'/AppleWeb/Images/Menu/Starbucks/201515.jpg','풍부하고 진한 농도의 에스프레소에 따뜻한 우유와 벨벳같은 우유 거품이 1:1 비율로 어우러저 마무리된 대표적인 에스프레소 음료 입니다.','음료','스타벅스 이대점',1925618800,91);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('카페 라떼',7500,'/AppleWeb/Images/Menu/Starbucks/201516.jpg','풍부하고 진한 농도의 에스프레소가 신선한 스팀밀크를 만나 부드러워진 커피 위에 우유거품을 살짝 얹은 음료로, 전세계적으로 스타벅스에서 가장 인기 있는 커피 음료입니다. 스타벅스만의 전용 두유를 사용하여 나만의 음료를 즐기세요! 스타벅스 두유는 커피와 부드러운 조화를 이룹니다','음료','스타벅스 이대점',1925618800,92);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('카페 모카',5500,'/AppleWeb/Images/Menu/Starbucks/201517.jpg','진한 초콜릿 모카 시럽과 풍부한 에스프레소를 스팀밀크와 혼합한 후 휘핑크림으로 마무리한 음료로써, 진한 에스프레소와 초콜릿 맛이 어우러진 커피입니다.','음료','스타벅스 이대점',1925618800,93);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('카페 아메리카노',6500,'/AppleWeb/Images/Menu/Starbucks/201518.jpg','유럽풍의 커피를 미국 스타일로 접목시킨 커피로써, 진한 농도의 에스프레소와 더운물을 혼합하여, 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피입니다.','음료','스타벅스 이대점',1925618800,94);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('리스트레토 비안코',5900,'/AppleWeb/Images/Menu/Starbucks/201519.jpg','리스트레토 비안코는 리스트레토 샷에 벨벳과 같이 고운 거품이 나도록 스팀한 우유가 어우러진 음료로 풍부한 커피 풍미와 부드러운 우유 거품이 특징입니다.  라떼보다 조금 더 풍부한 커피 풍미에 마무리는 화이트 닷(White dot)으로 마무리하여 바리스타의 정성이 듬뿍 느껴지는 리스트레토 비안코를 즐겨보세요.','음료','스타벅스 이대점',1925618800,95);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 화이트 초콜릿 모카',5500,'/AppleWeb/Images/Menu/Starbucks/201501.jpg','달콤하고 부드러운 화이트 초콜릿 시럽과 에스프레소를 시원한 우유와 혼합한 후 휘핑크림으로 마무리한 음료로, 풍부한 달콤함과 강렬한 에스프레소가 부드럽게 어우러진 커피 입니다.','음료','스타벅스 이대점',1925618800,77);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('아이스 카푸치노',6600,'/AppleWeb/Images/Menu/Starbucks/201502.jpg','풍부하고 진한 농도의 에스프레소에 시원한 우유를 더하여 우유의 고소함과 에스프레소의 강렬함에 벨벳같은 우유 거품이 더해져 부드러운 커피 입니다.','음료','스타벅스 이대점',1925618800,78);
Insert into ADMIN.MENU (MENUNAME,MENUPRICE,MENUIMAGE,MENUDESC,MENUCATEGORY,SHOPNAME,BUSINESSNUMBER,SID) values ('스타벅스 더블 샷',7000,'/AppleWeb/Images/Menu/Starbucks/201503.jpg','신선하게 제조된 더블 샷 믹스에 커피, 바닐라, 카라멜, 헤이즐넛 4종류 중 선택된 시럽을 넣고 에스프레소 샷, 얼음이 어우러져 핸드 쉐이킹한 음료입니다.','음료','스타벅스 이대점',1925618800,79);
REM INSERTING into ADMIN.MENUOPTION
SET DEFINE OFF;
REM INSERTING into ADMIN.POST
SET DEFINE OFF;
REM INSERTING into ADMIN.QNA
SET DEFINE OFF;
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,181);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,182);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,183);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,184);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,185);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('ㅠㅜㅡ','ㅠㅜㅡ','ㅠㅜㅡ','Mon May 18 16:57:31 KST 2015','ㅠㅜㅡ','bnm',null,null,166);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,186);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,187);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,188);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,189);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,190);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,191);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,192);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,193);
Insert into ADMIN.QNA (WRITERNAME,WRITERPHONE,TITLE,WRITEDATE,CONTENT,PASSWORD,REPLYCONTENT,REPLYDATE,SID) values ('qwe','qwe','qwe','Fri May 15 10:12:16 KST 2015','qwe','qwe',null,null,141);
REM INSERTING into ADMIN.RESERVATION
SET DEFINE OFF;
Insert into ADMIN.RESERVATION (NAME,PHONE,SHOPNAME,BUSINESSNUMBER,RESERVATIONTIME,RESERVATIONDATE,SID,STATE,PEOPLE) values ('홍길동','010-8989-8989','스타벅스 이대점',1925618800,'02:00','2015.05.20',4,'준비중',3);
Insert into ADMIN.RESERVATION (NAME,PHONE,SHOPNAME,BUSINESSNUMBER,RESERVATIONTIME,RESERVATIONDATE,SID,STATE,PEOPLE) values ('홍길동','010-8989-8989','스타벅스 이대점',1925618800,'02:00','2015.05.20',5,'준비중',3);
Insert into ADMIN.RESERVATION (NAME,PHONE,SHOPNAME,BUSINESSNUMBER,RESERVATIONTIME,RESERVATIONDATE,SID,STATE,PEOPLE) values ('홍길동','010-8989-8989','스타벅스 이대점',1925618800,'02:00','2015.05.20',6,'준비중',3);
REM INSERTING into ADMIN.RESERVATIONMENU
SET DEFINE OFF;
REM INSERTING into ADMIN.SHOPINFO
SET DEFINE OFF;
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('이대점',1925618800,'서울 서대문구 대현동 54-4','02-758-8001','까페','이대역 3번 출구에서 이화여대 방향 직진','스타벅스','0','/AppleWeb/Images/Shop/Starbucks/20150501.jpg',128);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('CS타워점',1925618801,'서울 강남구 역삼1동 679 GS타워 지하 1층','02-758-8129','까페','지하철 2호선 역삼역 7번 출구, GS타워 건물 지하 1층','스타벅스','0','/AppleWeb/Images/Shop/Starbucks/20150502.jpg',129);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('SKT Tower점',1925618802,'서울 중구 을지로2가 11번지 SKT Tower 1층','02-758-8264','까페','지하철 2호선 을지로입구역 4번 출구에서 위쪽 방면 100M 도보, SKT Tower 본사 건물 내 로비 1층 안쪽','스타벅스','0','/AppleWeb/Images/Shop/Starbucks/20150503.jpg',130);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('W--mall점',1925618803,'서울 금천구 가산동 60-27 B1','02-758-8196','까페','지하철 7호선 가산디지털단지역 4번 출구, 마리오아울렛 방향 도보10분, 2번 출구 건너편 버스 (5712, 5616)','스타벅스','0','/AppleWeb/Images/Shop/Starbucks/20150504.jpg',131);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('가든파이브점',1925618804,'서울 송파구 문정동 292 가든파이브 툴관 이마트 내 B1-26','02-758-8406','까페','지하철 8호선 장지역 3번 출구의 가든파이브 방향으로 나와 가든파이브 웍스관을 지나, 툴관 초입 이마트 출입구 에스컬레이터 지하 1층에 위치','스타벅스','0','/AppleWeb/Images/Shop/Starbucks/20150505.jpg',132);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('연신내점',1925619900,'서울시 은평구 통일로 855-15, 2층','02-352-1814','중식','연신내역 6번출구, 파리바게트 골목 20m','홍콩반점0410+','0','/AppleWeb/Images/Shop/zzambbong/01_main.jpg',151);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('논현점',1925619901,'서울특별시 강남구 강남대로122길 15','02-540-0410','중식','논현역 2번 출구에서 200m 직진, 제일은행에서 좌회전 전방 100m','홍콩반점0410+','0','/AppleWeb/Images/Shop/zzambbong/02_main.jpg',152);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('강남역점',1925619902,'서울 강남구 역삼동 827-4번지 2층','02-555-8883','중식','강남역 1번출구에서 50m 직진 후 우회전해서 200m 직진 후 사거리 좌측 2층','홍콩반점0410+','0','/AppleWeb/Images/Shop/zzambbong/03_main.jpg',153);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('구의점',1925619903,'서울특별시 광진구 아차산로51길 11 1층','02-3436-0410','중식','구의역(2호선) 1번출구에서 50m','홍콩반점0410+','0','/AppleWeb/Images/Shop/zzambbong/04_main.jpg',154);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('교대점',1925619904,'서울특별시 서초구 서초대로54길 32 1층','02-522-9089','중식','교대역 1번출구 우측골목 80M','홍콩반점0410+','0','/AppleWeb/Images/Shop/zzambbong/05_main.jpg',155);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('연신내점',1925619900,'서울시 은평구 갈현동 453-3번지, 1~2층','02-352-6181','한식','연신내역 6번출구','새마을식당','0','/AppleWeb/Images/Shop/NewMaul/01_main.jpg',156);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('논현본점',1925619901,'서울특별시 강남구 논현동 164-12번지 1층','02-544-3284','한식','신논현역 3번출구에서 논현역 방향으로 도보로 5분이내','새마을식당','0','/AppleWeb/Images/Shop/NewMaul/02_main.jpg',157);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('강남역점',1925619902,'서울특별시 강남구 역삼동 831-32번지 동원빌딩 101호','02-558-8592','한식','강남역 2번출구 양재역방향 150m 직진 국민은행 옆 골목 우측','새마을식당','0','/AppleWeb/Images/Shop/NewMaul/03_main.jpg',158);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('건대점',1925619903,'서울시 광진구 화양동 8-91번지, 1~3층','02-462-9288','한식','지하철2호선 건대역2번 출구 나와서 50m직진후 좌측맛의거리로50m후','새마을식당','0','/AppleWeb/Images/Shop/NewMaul/04_main.jpg',159);
Insert into ADMIN.SHOPINFO (SHOPNAME,BUSINESSNUMBER,SHOPADDRESS,SHOPPHONE,SHOPCATEGORY,SHOPINFO,SHOPCHAINNAME,SHOPMARK,SHOPIMAGE,SID) values ('가락점',1925619904,'서울특별시 송파구 가락동 81-6번지 1층','02-2026-0113','한식','가락시장역 3번출구에서 가락본동 우체국 길안쪽 우체국 맞은편 위치','새마을식당','0','/AppleWeb/Images/Shop/NewMaul/05_main.jpg',160);
--------------------------------------------------------
--  DDL for Index CHAINS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."CHAINS_PK" ON "ADMIN"."CHAINS" ("CHAINNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MENU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."MENU_PK" ON "ADMIN"."MENU" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index QNA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."QNA_PK" ON "ADMIN"."QNA" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ACCOUNT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."ACCOUNT_PK" ON "ADMIN"."ACCOUNT" ("BUSINESSNUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index MENUOPTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."MENUOPTION_PK" ON "ADMIN"."MENUOPTION" ("OPTIONSID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."RESERVATION_PK" ON "ADMIN"."RESERVATION" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index POST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ADMIN"."POST_PK" ON "ADMIN"."POST" ("SID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ACCOUNT" MODIFY ("BUSINESSNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ACCOUNT" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ACCOUNT" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ACCOUNT" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ACCOUNT" ADD CONSTRAINT "ACCOUNT_PK" PRIMARY KEY ("BUSINESSNUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."ACCOUNT" MODIFY ("BUSINESSNUMBER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "ADMIN"."QNA" ADD CONSTRAINT "QNA_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."QNA" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("WRITEDATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("WRITERPHONE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."QNA" MODIFY ("WRITERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHOPINFO
--------------------------------------------------------

  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPIMAGE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPMARK" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPCHAINNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPINFO" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPCATEGORY" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPPHONE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPADDRESS" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("BUSINESSNUMBER" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."SHOPINFO" MODIFY ("SHOPNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENUOPTION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MENUOPTION" ADD CONSTRAINT "MENUOPTION_PK" PRIMARY KEY ("OPTIONSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."MENUOPTION" MODIFY ("OPTIONSID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENUOPTION" MODIFY ("MENUSID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENUOPTION" MODIFY ("OPTIONPRICE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENUOPTION" MODIFY ("MENUNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENUOPTION" MODIFY ("OPTIONNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("PEOPLE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("RESERVATIONDATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("RESERVATIONTIME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("STATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("BUSINESSNUMBER" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("SHOPNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATION" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "ADMIN"."POST" ADD CONSTRAINT "POST_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."POST" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("POSTREPLY" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("BUSINESSNUMBER" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("SHOPNAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("WRITEDATE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("POSTCONTENT" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("MARK" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("WRITERPHONE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."POST" MODIFY ("WRITERNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "ADMIN"."ADMIN" MODIFY ("ADMINPASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."ADMIN" MODIFY ("ADMINID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHAINS
--------------------------------------------------------

  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("CHAINTITLEIMAGE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("CHAINDESC" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CHAINS" ADD CONSTRAINT "CHAINS_PK" PRIMARY KEY ("CHAINNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("CHAINIMAGE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."CHAINS" MODIFY ("CHAINNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVATIONMENU
--------------------------------------------------------

  ALTER TABLE "ADMIN"."RESERVATIONMENU" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATIONMENU" MODIFY ("MENUOPTION_SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATIONMENU" MODIFY ("MENU_SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."RESERVATIONMENU" MODIFY ("REV_SID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MENU
--------------------------------------------------------

  ALTER TABLE "ADMIN"."MENU" ADD CONSTRAINT "MENU_PK" PRIMARY KEY ("SID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ADMIN"."MENU" MODIFY ("SID" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENU" MODIFY ("MENUPRICE" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."MENU" MODIFY ("MENUNAME" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger CHAINS_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."CHAINS_AUTOINCREMENT" 
   before insert on "ADMIN"."CHAINS" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select CHAIN_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."CHAINS_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MENUOPTION_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."MENUOPTION_AUTOINCREMENT" 
   before insert on "ADMIN"."MENUOPTION" 
   for each row 
begin  
   if inserting then 
      if :NEW."OPTIONSID" is null then 
         select MENUOPTION_SEQ.nextval into :NEW."OPTIONSID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."MENUOPTION_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MENU_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."MENU_AUTOINCREMENT" 
   before insert on "ADMIN"."MENU" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select MENU_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."MENU_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POST_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."POST_AUTOINCREMENT" 
   before insert on "ADMIN"."POST" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select POST_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."POST_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger QNA_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."QNA_AUTOINCREMENT" 
   before insert on "ADMIN"."QNA" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select QNA_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."QNA_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RESERVATION_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."RESERVATION_AUTOINCREMENT" 
   before insert on "ADMIN"."RESERVATION" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select RESERVATION_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."RESERVATION_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REV_MENU_AUTOINCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."REV_MENU_AUTOINCREMENT" 
   before insert on "ADMIN"."RESERVATIONMENU" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select REV_MENU_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."REV_MENU_AUTOINCREMENT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SHOPINFO_INCREMENT
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ADMIN"."SHOPINFO_INCREMENT" 
   before insert on "ADMIN"."SHOPINFO" 
   for each row 
begin  
   if inserting then 
      if :NEW."SID" is null then 
         select SHOPINFO_SEQ.nextval into :NEW."SID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "ADMIN"."SHOPINFO_INCREMENT" ENABLE;
