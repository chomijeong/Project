--------------------------------------------------------
--  DDL for Table ADDRXY
--------------------------------------------------------

  CREATE TABLE "ADDRXY" 
   (	"ADDR" NVARCHAR2(100), 
	"DETAILADDR" NVARCHAR2(100), 
	"X" NUMBER, 
	"Y" NUMBER
   )
--------------------------------------------------------
--  DDL for Table BASKET
--------------------------------------------------------

  CREATE TABLE "BASKET" 
   (	"BASKET_ID" NVARCHAR2(10), 
	"BASKET_GCODE" NVARCHAR2(5), 
	"BASKET_GAMOUNT" NUMBER, 
	"BASKET_GNAME" NVARCHAR2(20), 
	"BASKET_GIMAGE" NVARCHAR2(200), 
	"BASKET_GPRICE" NUMBER
   )
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"BOARD_CODE" NVARCHAR2(5), 
	"BOARD_WRITER" NVARCHAR2(10), 
	"BOARD_DATE" DATE, 
	"BOARD_TITLE" NVARCHAR2(100), 
	"BOARD_CONTENT" NVARCHAR2(1000), 
	"BOARD_FILE" NVARCHAR2(100), 
	"BOARD_HITS" NUMBER, 
	"BOARD_STATE" NUMBER(1,0), 
	"BOARD_REPLYCOUNT" NUMBER, 
	"BOARD_REPORT" NUMBER(2,0), 
	"BOARD_RECOMMEND" NUMBER, 
	"BOARD_DECOMMEND" NUMBER
   )
--------------------------------------------------------
--  DDL for Table CHAT
--------------------------------------------------------

  CREATE TABLE "CHAT" 
   (	"CHAT_CODE" NVARCHAR2(5), 
	"CHAT_ID" NVARCHAR2(50), 
	"CHAT_CONTENT" NVARCHAR2(200), 
	"CHAT_DATE" DATE
   )
--------------------------------------------------------
--  DDL for Table COMMEND
--------------------------------------------------------

  CREATE TABLE "COMMEND" 
   (	"CODE" NVARCHAR2(5), 
	"MEMBER_ID" NVARCHAR2(15), 
	"COMMEND" NUMBER
   )
--------------------------------------------------------
--  DDL for Table CREW
--------------------------------------------------------

  CREATE TABLE "CREW" 
   (	"CREW_CODE" NVARCHAR2(5), 
	"CREW_NAME" NVARCHAR2(50), 
	"CREW_MASTER" NVARCHAR2(10), 
	"CREW_STATE" NUMBER(1,0), 
	"CREW_REGION" NVARCHAR2(15), 
	"CREW_DOGWEIGHT" NVARCHAR2(15), 
	"CREW_INTRODUCE" NVARCHAR2(50), 
	"CREW_REPORT" NUMBER, 
	"CREW_PROFILE" NVARCHAR2(100), 
	"CREW_MAXCOUNT" NUMBER(2,0)
   )
--------------------------------------------------------
--  DDL for Table DOGINFO
--------------------------------------------------------

  CREATE TABLE "DOGINFO" 
   (	"DOG_OWNER" NVARCHAR2(10), 
	"DOG_NAME" NVARCHAR2(20), 
	"DOG_TYPE" NVARCHAR2(20), 
	"DOG_WEIGHT" FLOAT(126), 
	"DOG_GENDER" NVARCHAR2(2), 
	"DOG_STATE" NUMBER(1,0), 
	"DOG_IMAGE" NVARCHAR2(100), 
	"DOG_BIRTH" DATE, 
	"DOG_SPAYING" NVARCHAR2(5)
   )
--------------------------------------------------------
--  DDL for Table DOGTYPE
--------------------------------------------------------

  CREATE TABLE "DOGTYPE" 
   (	"DOG_TYPE" NVARCHAR2(20)
   )
--------------------------------------------------------
--  DDL for Table GOODS
--------------------------------------------------------

  CREATE TABLE "GOODS" 
   (	"GOODS_CODE" NVARCHAR2(5), 
	"GOODS_NAME" NVARCHAR2(50), 
	"GOODS_PRICE" NUMBER, 
	"GOODS_AMOUNT" NUMBER, 
	"GOODS_TYPE" NVARCHAR2(20), 
	"GOODS_STATE" NUMBER(1,0), 
	"GOODS_IMAGE" NVARCHAR2(200), 
	"GOODS_INTRODUCE" NVARCHAR2(1000)
   )
--------------------------------------------------------
--  DDL for Table HO
--------------------------------------------------------

  CREATE TABLE "HO" 
   (	"HO_CODE" NVARCHAR2(5), 
	"HO_NAME" NVARCHAR2(100), 
	"HO_ADDR" NVARCHAR2(100), 
	"HO_TEL" NVARCHAR2(15), 
	"HO_STATE" NUMBER(1,0)
   )
--------------------------------------------------------
--  DDL for Table LOCALCITYCODE
--------------------------------------------------------

  CREATE TABLE "LOCALCITYCODE" 
   (	"LOCAL" VARCHAR2(50 CHAR), 
	"CITY" VARCHAR2(50 CHAR), 
	"CODE" VARCHAR2(50 CHAR)
   )
--------------------------------------------------------
--  DDL for Table LOCALCODE
--------------------------------------------------------

  CREATE TABLE "LOCALCODE" 
   (	"LOCAL" VARCHAR2(100 CHAR), 
	"CODE" VARCHAR2(100 CHAR)
   )
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEMBER_ID" NVARCHAR2(10), 
	"MEMBER_PW" NVARCHAR2(15), 
	"MEMBER_NAME" NVARCHAR2(10), 
	"MEMBER_BIRTH" DATE, 
	"MEMBER_TEL" NVARCHAR2(15), 
	"MEMBER_EMAIL" NVARCHAR2(30), 
	"MEMBER_ADDRESS" NVARCHAR2(100), 
	"MEMBER_PROFILE" NVARCHAR2(100), 
	"MEMBER_CREWCODE" NVARCHAR2(5), 
	"MEMBER_STATE" NUMBER(1,0), 
	"WALK_STATE" NUMBER(1,0), 
	"MEMBER_GENDER" NVARCHAR2(1)
   )
--------------------------------------------------------
--  DDL for Table ORDERINFO
--------------------------------------------------------

  CREATE TABLE "ORDERINFO" 
   (	"ORDER_MID" NVARCHAR2(10), 
	"ORDER_GCODE" NVARCHAR2(5), 
	"ORDER_GAMOUNT" NUMBER, 
	"ORDER_DATE" DATE, 
	"ORDER_ADDRESS" NVARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "PAY" 
   (	"PAY_MID" NVARCHAR2(10), 
	"PAY_AMOUNT" NUMBER, 
	"PAY_DATE" DATE, 
	"PAY_STATE" NUMBER(1,0)
   )
--------------------------------------------------------
--  DDL for Table RECOMMENT
--------------------------------------------------------

  CREATE TABLE "RECOMMENT" 
   (	"RECOMMENT_CODE" NVARCHAR2(5), 
	"RECOMMENT_BOARDCODE" NVARCHAR2(5), 
	"RECOMMENT_WRITER" NVARCHAR2(10), 
	"RECOMMENT_CONTENT" NVARCHAR2(1000), 
	"RECOMMENT_DATE" DATE, 
	"RECOMMENT_STATE" NUMBER(1,0), 
	"RECOMMENT_REPORT" NUMBER(2,0), 
	"RECOMMENT_PROFILE" NVARCHAR2(200)
   )
--------------------------------------------------------
--  DDL for Table REPORT
--------------------------------------------------------

  CREATE TABLE "REPORT" 
   (	"CODE" NVARCHAR2(5), 
	"MEMBER_ID" NVARCHAR2(15), 
	"BOARDCODE" NVARCHAR2(5)
   )
--------------------------------------------------------
--  DDL for Table WALKBOARD
--------------------------------------------------------

  CREATE TABLE "WALKBOARD" 
   (	"WALK_CODE" NVARCHAR2(5), 
	"WALK_WRITER" NVARCHAR2(10), 
	"WALK_DATE" DATE, 
	"WALK_TITLE" NVARCHAR2(100), 
	"WALK_CONTENT" NVARCHAR2(1000), 
	"WALK_FILE" NVARCHAR2(100), 
	"WALK_HITS" NUMBER, 
	"WALK_STATE" NUMBER(1,0), 
	"WALK_REPLYCOUNT" NUMBER, 
	"WALK_MAP" NVARCHAR2(2000), 
	"WALK_MID" NVARCHAR2(500), 
	"WALK_TIME" DATE, 
	"WALK_BODYTYPE" NVARCHAR2(50), 
	"WALK_REPORT" NUMBER(2,0), 
	"WALK_RECOMMEND" NUMBER, 
	"WALK_DECOMMEND" NUMBER, 
	"WALK_CREWCODE" NVARCHAR2(5), 
	"WALK_STARTADDR" VARCHAR2(100 CHAR), 
	"WALK_WEATHERINFO" VARCHAR2(50 CHAR), 
	"WALK_PEOPLE" NUMBER(2,0)
   )
--------------------------------------------------------
--  DDL for Table WEATHERXY
--------------------------------------------------------

  CREATE TABLE "WEATHERXY" 
   (	"ADDR" VARCHAR2(100), 
	"DADDR" VARCHAR2(100), 
	"X" NUMBER, 
	"Y" NUMBER
   )
REM INSERTING into ADDRXY
SET DEFINE OFF;
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','장흥군',59,64);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','장흥군',59,64);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','강진군',57,63);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','해남군',54,61);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','영암군',56,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','무안군',52,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','함평군',52,72);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','영광군',52,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','장성군',57,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','완도군',57,56);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','진도군',48,59);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','신안군',50,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북',null,89,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','포항시남구',102,94);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','경주시',100,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','김천시',80,96);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','안동시',91,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','구미시',84,96);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','영주시',89,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','영천시',95,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','상주시',81,102);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','문경시',81,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','경산시',91,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','군위군',88,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','의성군',90,101);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','청송군',96,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','영양군',97,108);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','영덕군',102,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','청도군',91,86);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','고령군',83,87);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','성주군',83,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','칠곡군',85,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','예천군',86,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','봉화군',90,113);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','울진군',102,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경북','울릉군',127,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남',null,91,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','창원시의창구',90,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','진주시',81,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','통영시',87,68);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','사천시',80,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','김해시',95,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','밀양시',92,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','거제시',90,69);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','양산시',97,79);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','의령군',83,78);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','함안군',86,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','창녕군',87,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','고성군',85,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','남해군',77,68);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','하동군',74,73);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','산청군',76,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','함양군',74,82);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','거창군',77,86);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경남','합천군',81,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('제주',null,52,38);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('제주','제주시',53,38);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('제주','서귀포시',52,33);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('이어도',null,28,8);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('이어도',null,28,8);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시',null,60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','종로구',60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','중구',60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','용산구',60,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','성동구',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','광진구',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','동대문구',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','중랑구',62,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','성북구',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','강북구',61,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','도봉구',61,129);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','노원구',61,129);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','은평구',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','서대문구',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','마포구',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','양천구',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','강서구',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','구로구',58,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','금천구',59,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','영등포구',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','동작구',59,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','관악구',59,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','서초구',61,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','강남구',61,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','송파구',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('서울특별시','강동구',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시',null,98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','중구',97,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','서구',97,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','동구',98,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','영도구',98,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','부산진구',97,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','동래구',98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','남구',98,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','북구',96,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','해운대구',99,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','사하구',96,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','금정구',98,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','강서구',96,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','연제구',98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','수영구',99,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','사상구',96,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('부산광역시','기장군',100,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시',null,89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','중구',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','동구',90,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','서구',88,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','남구',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','북구',89,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','수성구',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','달서구',88,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대구광역시','달성군',86,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시',null,55,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','중구',54,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','동구',54,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','미추홀구',54,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','연수구',55,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','남동구',56,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','부평구',55,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','계양구',56,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','서구',55,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','강화군',51,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('인천광역시','옹진군',54,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시',null,58,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시','동구',60,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시','서구',59,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시','남구',59,73);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시','북구',59,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('광주광역시','광산구',57,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시',null,67,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시','동구',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시','중구',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시','서구',67,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시','유성구',67,101);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('대전광역시','대덕구',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시',null,102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시','중구',102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시','남구',102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시','동구',104,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시','북구',103,85);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('울산광역시','울주군',101,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('세종특별자치시',null,66,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('세종특별자치시','세종특별자치시',66,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도',null,60,120);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','수원시장안구',60,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','성남시수정구',63,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','의정부시',61,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','안양시만안구',59,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','부천시',56,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','광명시',58,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','평택시',62,114);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','동두천시',61,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','안산시상록구',58,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','고양시덕양구',57,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','과천시',60,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','구리시',62,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','남양주시',64,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','오산시',62,118);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','시흥시',57,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','군포시',59,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','의왕시',60,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','하남시',64,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','용인시처인구',64,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','파주시',56,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','이천시',68,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','안성시',65,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','김포시',55,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','화성시',57,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','광주시',65,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','양주시',61,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','포천시',64,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','여주시',71,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','연천군',61,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','가평군',69,133);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('경기도','양평군',69,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도',null,73,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','춘천시',73,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','원주시',76,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','강릉시',92,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','동해시',97,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','태백시',95,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','속초시',87,141);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','삼척시',98,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','홍천군',75,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','횡성군',77,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','영월군',86,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','평창군',84,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','정선군',89,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','철원군',65,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','화천군',72,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','양구군',77,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','인제군',80,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','고성군',85,145);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('강원도','양양군',88,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북',null,69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','청주시상당구',69,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','청주시서원구',69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','청주시흥덕구',67,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','청주시청원구',69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','충주시',76,114);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','제천시',81,118);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','보은군',73,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','옥천군',71,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','영동군',74,97);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','증평군',71,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','진천군',68,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','괴산군',74,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','음성군',72,113);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충북','단양군',84,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남',null,68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','천안시동남구',63,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','천안시서북구',63,112);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','공주시',63,102);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','보령시',54,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','아산시',60,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','서산시',51,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','논산시',62,97);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','계룡시',65,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','당진시',54,112);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','금산군',69,95);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','부여군',59,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','서천군',55,94);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','청양군',57,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','홍성군',55,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','예산군',58,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('충남','태안군',48,109);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북',null,63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','전주시완산구',63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','군산시',56,92);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','익산시',60,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','정읍시',58,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','남원시',68,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','김제시',59,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','완주군',63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','진안군',68,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','무주군',72,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','장수군',70,85);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','임실군',66,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','순창군',63,79);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','고창군',56,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전북','부안군',56,87);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남',null,51,67);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','목포시',50,67);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','여수시',73,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','순천시',70,70);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','나주시',56,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','광양시',73,70);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','담양군',61,78);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','곡성군',66,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','구례군',69,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','고흥군',66,62);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','보성군',62,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('전남','화순군',61,72);
REM INSERTING into BASKET
SET DEFINE OFF;
REM INSERTING into BOARD
SET DEFINE OFF;
REM INSERTING into CHAT
SET DEFINE OFF;
REM INSERTING into COMMEND
SET DEFINE OFF;
REM INSERTING into CREW
SET DEFINE OFF;
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR004','크루크루','inchun1',1,'인천','0010/1025/2580','크크루삥뽕 ㅋㅋㄹㅃㅃ',0,'b910969c-98da-432b-ac5e-9bcf88e39fb1_walkdog.PNG',20);
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR005','가아아아아앙아아아아아','preepree3',1,'부산','0010/1025/2580','지이이이이이이이이이',0,'6bb81f27-9368-4c08-ad67-f3b5ef1c969d_info.PNG',20);
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR003','지나가는 개올시다','preepree2',1,'서울','0010/1025/2580','간식줄것 아니면 지나가소122',0,'6ecd75f3-decc-45b6-b0e2-00488e9ebfb4_click2.png',20);
REM INSERTING into DOGINFO
SET DEFINE OFF;
REM INSERTING into DOGTYPE
SET DEFINE OFF;
Insert into DOGTYPE (DOG_TYPE) values ('스탠다드 푸들');
Insert into DOGTYPE (DOG_TYPE) values ('시바 이누');
Insert into DOGTYPE (DOG_TYPE) values ('시베이란 허스키');
Insert into DOGTYPE (DOG_TYPE) values ('시츄');
Insert into DOGTYPE (DOG_TYPE) values ('아메리칸 코카 스피니엘');
Insert into DOGTYPE (DOG_TYPE) values ('요크셔 테리어');
Insert into DOGTYPE (DOG_TYPE) values ('웰시 코기');
Insert into DOGTYPE (DOG_TYPE) values ('이탈리안 그레이하운드');
Insert into DOGTYPE (DOG_TYPE) values ('제페니스 스피츠');
Insert into DOGTYPE (DOG_TYPE) values ('진돗개');
Insert into DOGTYPE (DOG_TYPE) values ('치와와');
Insert into DOGTYPE (DOG_TYPE) values ('카바리에 킹찰스 스파니');
Insert into DOGTYPE (DOG_TYPE) values ('코커 스패니얼');
Insert into DOGTYPE (DOG_TYPE) values ('토이 푸들');
Insert into DOGTYPE (DOG_TYPE) values ('파피용');
Insert into DOGTYPE (DOG_TYPE) values ('퍼그');
Insert into DOGTYPE (DOG_TYPE) values ('페키니즈');
Insert into DOGTYPE (DOG_TYPE) values ('펨브록 웰시코기');
Insert into DOGTYPE (DOG_TYPE) values ('포메라니안');
Insert into DOGTYPE (DOG_TYPE) values ('푸들');
Insert into DOGTYPE (DOG_TYPE) values ('풍산개');
Insert into DOGTYPE (DOG_TYPE) values ('프렌치 불독');
Insert into DOGTYPE (DOG_TYPE) values ('믹스견');
Insert into DOGTYPE (DOG_TYPE) values ('골든 리트리버');
Insert into DOGTYPE (DOG_TYPE) values ('닥스훈트');
Insert into DOGTYPE (DOG_TYPE) values ('래브라도 리트리버');
Insert into DOGTYPE (DOG_TYPE) values ('말티즈');
Insert into DOGTYPE (DOG_TYPE) values ('미니어처 슈나우저');
Insert into DOGTYPE (DOG_TYPE) values ('미니어처 푸들');
Insert into DOGTYPE (DOG_TYPE) values ('미니어처 핀셔');
Insert into DOGTYPE (DOG_TYPE) values ('베들링턴 테리어');
Insert into DOGTYPE (DOG_TYPE) values ('보더 콜리');
Insert into DOGTYPE (DOG_TYPE) values ('보스턴 테리어');
Insert into DOGTYPE (DOG_TYPE) values ('비글');
Insert into DOGTYPE (DOG_TYPE) values ('비숑 프리제');
Insert into DOGTYPE (DOG_TYPE) values ('사모예드');
Insert into DOGTYPE (DOG_TYPE) values ('셰틀랜드 쉽독');
REM INSERTING into GOODS
SET DEFINE OFF;
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD001','체크 목줄 15mm',5500,100,'GW001',1,'https://shop-phinf.pstatic.net/20210809_276/1628489727939hdOFe_JPEG/35954359937043621_1617066099.jpg','천/패브릭, 소형견 목줄, 줄길이 15mm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD002','자동 리드줄 S 밀키옐로우',13000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_75/1627002693841oXzgh_JPEG/34467389946671522_1524775303.jpg','천/패브릭, 소형견 목줄, 줄길이 4m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD003','자동 리드줄 M 오렌지',14000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_1/1627002685886xWe79_JPEG/34467318009452292_1678609383.jpg','천/패브릭, 중형견 목줄, 줄길이 5m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD004','자동 리드줄 M 베이지',14000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_152/16270026949636X1FU_JPEG/34467405094393913_1611788957.jpg','천/패브릭, 중형견 목줄, 줄길이 5m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD005','자동 리드줄 S 스카이블루',13000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_201/16270026932753HCdM_JPEG/34467389382058130_1499603778.jpg','천/패브릭, 소형견 목줄, 줄길이 4m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD006','하네스 + 리드줄 세트 레드 M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_107/1614064427417oqvvW_JPEG/15200315859950488_273513962.jpg','리드줄 12.5m / 가슴둘레 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD007','하네스 + 리드줄 세트 레드 S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_107/1614064427417oqvvW_JPEG/15200315859950488_273513962.jpg','리드줄 12.5m / 가슴둘레 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD008','하네스 + 리드줄 세트 블랙 M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20220616_79/1655358483883MKGJE_JPEG/56494318719434367_1464793105.jpg','리드줄 12.5m / 가슴둘레 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD009','하네스 + 리드줄 세트 블랙 S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20220616_79/1655358483883MKGJE_JPEG/56494318719434367_1464793105.jpg','리드줄 12.5m / 가슴둘레 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD010','하네스 + 리드줄 세트 오렌지 M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_136/1614064440565BGmqg_JPEG/15200329267937252_1207030943.jpg','리드줄 12.5m / 가슴둘레 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD011','하네스 + 리드줄 세트 오렌지 S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_136/1614064440565BGmqg_JPEG/15200329267937252_1207030943.jpg','리드줄 12.5m / 가슴둘레 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD012','하네스 + 리드줄 세트 그린 M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_240/1614064431914EGbgL_JPEG/15200320411243179_105039278.jpg','리드줄 12.5m / 가슴둘레 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD013','하네스 + 리드줄 세트 그린 S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_240/1614064431914EGbgL_JPEG/15200320411243179_105039278.jpg','리드줄 12.5m / 가슴둘레 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD014','플로팅 로프토이',5000,100,'GW003',1,'https://shop-phinf.pstatic.net/20211224_190/1640328163801d3q05_JPEG/47792795771075654_1145079041.jpg','실/끈, 지름 19cm/무게 80g');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD015','당근밭 노즈워크',15900,100,'GW003',1,'https://shop-phinf.pstatic.net/20210818_289/1629253407443C3NfQ_JPEG/36718040553161731_2114346450.jpg','폴리에스테르, 38X30X7cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD016','라텍스 볼 5ea',3000,100,'GW003',1,'https://shop-phinf.pstatic.net/20210830_219/16303018561445yluv_JPEG/37766552249327071_1754679179.jpg','고무/실리콘, 지름 5.3cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD017','스포츠 볼 3ea',8500,100,'GW003',1,'https://shop-phinf.pstatic.net/20210624_202/16244907357149TLva_JPEG/31955368819062090_1521383801.jpg','고무/실리콘, 지름 5.1cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD018','떡말이어묵 노즈워크 2ea',7900,100,'GW003',1,'https://shop-phinf.pstatic.net/20220620_203/1655720978246RpRrm_JPEG/63185610275770822_1333806258.jpg','합성섬유, 4X11cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD019','쉬즈곤 배변봉투 90매',8000,100,'GW004',1,'https://shop-phinf.pstatic.net/20220530_63/1653890232407KHh3p_JPEG/61354928375340261_1599974182.jpg','옥수수전분, 23X33cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD020','어스레이티드 배변봉투 120매',12000,100,'GW004',1,'https://shop-phinf.pstatic.net/20220520_62/1653026032926peGmf_JPEG/60490743039777932_1115724941.jpg','옥수수전분, 28X37cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD021','향균 물티슈 80매',2500,100,'GW004',1,'https://shop-phinf.pstatic.net/20210624_284/1624490929087uBjRx_JPEG/31955639211234724_1966184705.jpg','알로에 추출물, 정제수, 비타민 E 성분');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD022','펫보틀 360ml',17000,100,'GW004',1,'https://shop-phinf.pstatic.net/20210810_235/16285533275718oNe0_JPEG/36017852402821447_2114802220.jpg','플라스틱, 휴대용 보틀');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD023','접이식 실리콘 보울 1L',3500,100,'GW004',1,'https://shop-phinf.pstatic.net/20220621_105/16557713008602GWLa_JPEG/63235933953195259_1216695574.jpg','실리콘, 지름 13cm');
REM INSERTING into HO
SET DEFINE OFF;
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP247','마스터동물병원 (출장전문동물병원)','경기도-안성시 보개원삼로 162 (가사동)','031-676-3828',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP248','썬애니멀크리닉','경기도-용인시 기흥구 구갈로72번길 14-1, 서안빌딩 8층 02호 (구갈동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP249','윤슬동물병원','경기도-시흥시 월곶중앙로 87-1, 101호 (월곶동)','031-404-8566',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP250','제이스동물병원','경기도-김포시 고촌읍 장차로 13, 2층',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP251','그린동물병원','경기도-수원시 장안구 파장로 59, 그린동물병원 (정자동)','031-241-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP252','에쿠스종합동물병원(출장진료 전문)','경기도-평택시 월곡길 17, 108호 (월곡동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP253','웰니스 동물병원','경기도-구리시 동구릉로136번길 57, 엘마트 구리점 2층 (인창동)','031-565-5275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP254','로얄펫동물병원','경기도-의정부시 신흥로 171 (의정부동)','879-4478(9)',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP255','이규로동물병원','경기도-남양주시 화도읍 창현로 47','593-7751',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP256','쓰담동물병원','경기도-부천시 소향로 131, 일신빌딩 (중동)','323297599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP257','헬릭스동물메디컬센터','경기도-고양시 덕양구 중앙로 439 (행신동)','031-978-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP258','중앙동물병원','경기도-여주시 여흥로 97, 중앙동물병원 (창동)','885-3347',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP259','동편동물병원','경기도-안양시 동안구 동편로27번길 7, 1층 107,108호 (관양동)','031-426-8661',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP260','제일동물병원','경기도-용인시 처인구 백암면 백암로201번길 24','332-4179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP261','한서동물병원','경기도-양평군 양평읍 충신로 280, 104호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP262','한솔양계병원','경기도-용인시 처인구 백암면 석실로54번길 6, 2호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP263','로뎀나무 동물의료센터','경기도-양주시 고읍로 166, 1,2층 전부호 (만송동)','031-847-7720',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP264','세온동물병원','경기도-안산시 단원구 초지로 114, 주공프라자 111,112호 (초지동)','031-362-5475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP265','채플린동물병원','경기도-의정부시 용민로 493, 엘스퀘어 120, 121호 (민락동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP266','미래동물의료센터 성남점','경기도-성남시 수정구 수정로 130, 창도빌딩 2층 (수진동)','031-757-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP267','유동물병원','경기도-수원시 장안구 장안로 29, 103호 (영화동)','070-4647-2999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP268','24시 위드유 동물의료센터','경기도-시흥시 은계번영길 1, 태산W타워 2층 208,209,210호 (은행동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP269','팜쉴드 동물병원','경기도-화성시 양감면 장승백이길 7-10',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP270','24시 나음동물의료센터','경기도-고양시 일산동구 백마로 223, 103~4호 (장항동, 현대 에뜨레보)','031-906-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP271','보바인 동물병원','경기도-화성시 장안면 사랑길 187',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP272','우리동물병원','경기도-안양시 동안구 비산로 18, 자이아이파크 상가동 205호 (비산동)','031-465-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP273','굿모닝동물병원','경기도-용인시 처인구 경안천로 2 (마평동)','031-339-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP274','중동동물병원','경기도-부천시 중동로 157 (중동)','655-6034',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP275','서현동물병원','경기도-성남시 분당구 중앙공원로31번길 42, 서현파크플라자 1층 142호 (서현동)','707-3334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP276','에버펫동물병원','경기도-성남시 분당구 성남대로 165, 118호 (금곡동)','031-714-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP277','메디 포즈 동물병원','경기도-남양주시 와부읍 석실로 200, 1층',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP278','성심동물병원','경기도-남양주시 다산중앙로82번길 49-3, 다산진건지구 F2-4-6 103호 (다산동)','591-1795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP279','이천동물의료센터','경기도-이천시 이섭대천로 1342 (증포동)','031-632-7510',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP280','드림24 동물병원','경기도-용인시 처인구 경안천로 46 (마평동)','031-335-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP281','중부동물병원','경기도-화성시 팔탄면 노하길 206',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP282','에이스동물메디컬센터','경기도-의정부시 태평로 102-1 (의정부동)','031-875-8090',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP283','나은동물병원','경기도-의정부시 회룡로 178 (장암동)','031-876-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP284','우리동물병원','경기도-용인시 기흥구 한보라2로14번길 4-14 (보라동)','286-2275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP285','고래 동물병원','경기도-시흥시 은계번영길 11, 은계프라자 202, 203, 204호 (은행동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP286','365동물병원위례점','경기도-성남시 수정구 위례동로 153, 에이플타워 205호 (창곡동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP287','튼튼동물병원','경기도-오산시 궐리사로 69, 구마빌딩 101호 (궐동)','031-372-8333',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP288','이리온 동물메디컬센터','경기도-용인시 처인구 중부대로 1307 (역북동)','031-334-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP289','건우동물병원','경기도-양주시 은현면 은현로 73-14, 1층 1호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP290','하나로 양한방 동물병원','경기도-김포시 초당로16번길 75 (장기동)','031-996-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP291','엔케어동물의료센터','경기도-평택시 죽백3로 139 (죽백동)','031-657-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP292','쿨펫 동물병원','경기도-수원시 영통구 영통로 120, 효성빌딩 1층 (망포동)','031-206-7503',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP293','알로하동물병원','경기도-화성시 비봉면 남이로 255',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP294','알프스동물병원','경기도-광주시 고불로 32, 107호 (중대동)','031-761-1600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP295','유수의과 동물병원','경기도-안성시 죽산면 죽산초교길 15',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP296','청북 햇살동물병원','경기도-평택시 청북읍 안청로2길 33-2, 105,106호','031-684-8779',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP297','신동물병원','경기도-안양시 만안구 장내로89번길 5 (안양동)','031-445-7505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP298','태성','경기도-이천시 구만리로 325 (갈산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP299','배곧코코동물병원','경기도-시흥시 함송로 15, 화신프라자 104,105호 (정왕동)','031-434-0863',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP300','시화종합동물병원','경기도-시흥시 정왕대로 64 (정왕동,메가쇼핑몰(108,109호))','031-507-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP301','행복한동물병원','경기도-안성시 중앙로419번길 6 (영동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP302','한유복동물병원','경기도-파주시 광탄면 혜음로 345',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP303','초원동물병원','경기도-양평군 양평읍 백운길 100, 1층',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP304','현대동물병원','경기도-하남시 대청로 33, 현대베스코아 6층 603호 (신장동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP305','하랑동물의료센터','경기도-남양주시 경춘로 470, 1,2층 (다산동)','031-522-6767',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP306','24시 당신의 동물의료센터','경기도-수원시 장안구 천천로 100, 시네마타워 104호, 202호 (천천동)','031-268-6575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP307','하트동물의료센터','경기도-김포시 걸포2로 49, 파인스타S1 2층 204,205호 (걸포동)','031-985-8075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP308','웰니스동물병원 스타필드 고양','경기도-고양시 덕양구 고양대로 1955, 스타필드 고양 1층 1100호 (동산동)','031-5173-1487',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP309','유앤아이동물병원','경기도-하남시 미사강변남로 91, 르보아파크 Ⅱ 1층 119,120호 (망월동)','031-994-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP310','베스트 프렌즈 동물병원','경기도-평택시 송탄고가길 2 (신장동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP116','다나동물병원','광주광역시-서구 죽봉대로 42 (농성동)','062-365-1491',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP117','푸른동물병원','광주광역시-서구 상일로 44 (쌍촌동)','062-375-1613',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP118','프렌즈동물병원','광주광역시-서구 상무민주로 90, 2층 (쌍촌동)','062-371-0122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP119','펫프렌즈동물병원','광주광역시-서구 금화로 240, 3층 (풍암동, 롯데마트)','062-653-7553',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP120','Dr.남동물병원','광주광역시-서구 월드컵4강로 58 (화정동)','062-236-0575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP121','가로수동물병원','광주광역시-서구 월드컵4강로 88 (화정동)','062-372-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP122','쿨펫동물병원','광주광역시-서구 시청로 40, 4층 (치평동, 롯데마트)','062-384-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP123','백제동물병원','광주광역시-서구 죽봉대로 135 (광천동)','062-368-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP124','유림동물병원','광주광역시-서구 하남대로 672 (동천동)','062-527-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP125','윌 동물외상센터','광주광역시-서구 운천로 110-1 (쌍촌동)','062-383-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP126','사랑가득 동물병원','광주광역시-서구 풍금로38번길 49-1 (풍암동)','062-655-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP127','베스트동물병원','광주광역시-서구 상무대로 866 (쌍촌동)','062-375-5110',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP128','마루동물병원','광주광역시-서구 금화로 71 (금호동)','062-384-5445',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP129','페츠온 동물병원','광주광역시-서구 치평로 76, 102호 (치평동)','062-381-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP130','어울림동물병원','광주광역시-서구 회재로 888 (풍암동)','062-362-2882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP131','제일말전문병원','광주광역시-서구 매월2로 53, 12동 127호 (매월동, 광주산업용재유통센터)','062-382-8552',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP132','바른동물병원','광주광역시-서구 하남대로 704 (동천동, 지선빌딩)','062-523-5353',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP133','화정힐동물병원','광주광역시-서구 화정로 211','062-382-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP134','로하동물병원','광주광역시-서구 상무민주로76번길 8-1, 1층 (쌍촌동)','062-371-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP135','본펫동물병원','광주광역시-서구 무진대로 945-1 (광천동)','062-447-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP136','미유펫동물병원','광주광역시-서구 마륵복개로 157, 101동 B102-2호 (쌍촌동)','062-381-3733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP137','광주광역시 야생동물구조관리센터','광주광역시-서구 무진대로 576 (유촌동)','062-613-6651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP138','광주24시스카이동물메디컬센터','광주광역시-서구 상무대로 879, 두왕빌딩(3, 4, 5층)','062-719-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP139','베스트고양이병원','광주광역시-서구 상무대로868번길 2, 4층 (쌍촌동)','062-384-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP141','현대동물병원','광주광역시-서구 상무대로 1045 (화정동)','062-373-5293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP142','금호동물병원','광주광역시-서구 금화로 54 (금호동)','062-383-7572',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP143','하나로동물병원','광주광역시-서구 상무중앙로 62, 1층 (치평동)','062-371-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP144','좋은동물병원','광주광역시-서구 운천로 29 (금호동)','062-382-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP145','한결동물의료센터','광주광역시-서구 풍암순환로188번길 15 (풍암동)','062-652-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP146','다나동물병원','광주광역시-서구 죽봉대로 42 (농성동)','062-365-1491',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP147','푸른동물병원','광주광역시-서구 상일로 44 (쌍촌동)','062-375-1613',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP148','프렌즈동물병원','광주광역시-서구 상무민주로 90, 2층 (쌍촌동)','062-371-0122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP149','펫프렌즈동물병원','광주광역시-서구 금화로 240, 3층 (풍암동, 롯데마트)','062-653-7553',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP150','Dr.남동물병원','광주광역시-서구 월드컵4강로 58 (화정동)','062-236-0575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP151','가로수동물병원','광주광역시-서구 월드컵4강로 88 (화정동)','062-372-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP152','쿨펫동물병원','광주광역시-서구 시청로 40, 4층 (치평동, 롯데마트)','062-384-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP153','백제동물병원','광주광역시-서구 죽봉대로 135 (광천동)','062-368-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP154','유림동물병원','광주광역시-서구 하남대로 672 (동천동)','062-527-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP155','윌 동물외상센터','광주광역시-서구 운천로 110-1 (쌍촌동)','062-383-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP156','사랑가득 동물병원','광주광역시-서구 풍금로38번길 49-1 (풍암동)','062-655-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP157','베스트동물병원','광주광역시-서구 상무대로 866 (쌍촌동)','062-375-5110',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP158','마루동물병원','광주광역시-서구 금화로 71 (금호동)','062-384-5445',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP159','페츠온 동물병원','광주광역시-서구 치평로 76, 102호 (치평동)','062-381-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP160','어울림동물병원','광주광역시-서구 회재로 888 (풍암동)','062-362-2882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP161','제일말전문병원','광주광역시-서구 매월2로 53, 12동 127호 (매월동, 광주산업용재유통센터)','062-382-7812',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP162','바른동물병원','광주광역시-서구 하남대로 704 (동천동, 지선빌딩)','062-523-5353',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP163','화정힐동물병원','광주광역시-서구 화정로 211','062-382-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP164','로하동물병원','광주광역시-서구 상무민주로76번길 8-1, 1층 (쌍촌동)','062-371-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP165','본펫동물병원','광주광역시-서구 무진대로 945-1 (광천동)','062-447-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP166','미유펫동물병원','광주광역시-서구 마륵복개로 157, 101동 B102-2호 (쌍촌동)','062-381-3733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP167','광주광역시 야생동물구조관리센터','광주광역시-서구 무진대로 576 (유촌동)','062-613-6651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP168','광주24시스카이동물메디컬센터','광주광역시-서구 상무대로 879, 두왕빌딩(3, 4, 5층)','062-719-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP169','베스트고양이병원','광주광역시-서구 상무대로868번길 2, 4층 (쌍촌동)','062-384-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP171','장승포가축병원','경상남도-거제시 장승포로1길 17 (장승포동)','055-681-2821',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP172','신현동물병원','경상남도-거제시 거제중앙로 1830-1 (고현동)','055-636-8272',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP173','상아동물병원','경상남도-거제시 옥포로26길 23 (옥포동)','055-635-6004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP174','디스동물병원','경상남도-거제시 거제중앙로 1852 (고현동)','055-632-2365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP175','도그플러스 동물병원','경상남도-거제시 장평로 12 (장평동)','055-680-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP176','현대동물의료센터','경상남도-거제시 장평로 5 (장평동)','055-636-3662',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP177','도그앤캣 동물병원','경상남도-거제시 해명로 45 (수월동)','055-637-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP178','24시 더나은 동물메디컬 센터','경상남도-거제시 동문천로 47 (고현동)','055-716-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP179','거제동물메디컬센터','경상남도-거제시 서문로6길 1, 2층 (고현동, 타워프라임)','055-632-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP180','아주동물병원','경상남도-거제시 거제대로 3541 (아주동)','055-681-0093',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP181','상문동물병원','경상남도-거제시 거제중앙로 1645 (상동동)','055-633-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP199','원주동물병원','강원도-천사로 79(단계동)','033-743-8882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP200','강원동물병원','강원도-치악로 1758(개운동)','033-742-7494',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP201','현대종합동물병원','강원도-남원로 562(개운동)','033-763-9297',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP202','25시종합동물병원','강원도-남원로 625-6(명륜동)','033-764-0119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP203','강원가축병원','강원도-평원로 37(중앙동)','033-745-7676',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP204','문막동물병원','강원도-문막읍 구암길 7','033-735-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP205','로얄종합동물병원','강원도-남원로 655(명륜동)','033-766-7230',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP206','제일동물병원','강원도-평원로 29(중앙동)','033-745-5125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP207','혜인종합동물병원','강원도-나비허리길 60(단구동)','033-766-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP208','늘푸른동물종합병원','강원도-북원로 2241(단계동)','033-747-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP209','원주축협동물병원','강원도-문막읍 건등로 70','033-735-7359',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP210','삼성종합동물병원','강원도-현충로 278(태장동)','033-732-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP211','일산종합동물병원','강원도-무실로 134(일산동)','033-742-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP212','누리종합동물병원','강원도-서원대로 408(단구동)','033-761-0167',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP213','그린동물병원','강원도-행구로 57(개운동)','033-762-9882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP214','열린동물병원','강원도-만대공원길 8-10(무실동)','033-743-6466',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP215','우사랑 동물병원','강원도-문막읍 문막시장1길 82','033-745-8789',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP216','러브펫 동물병원','강원도-봉화로 2(단계동)','033-742-8475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP217','행복한 동물병원','강원도-라옹정길 62-4(관설동)','033-764-7522',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP218','강아지와고양이','강원도-원일로 177(학성동)','033-745-6680',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP219','행복드림 동물병원','강원도-천사로 23-17(단계동)','033-764-7519',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP182','우리들동물병원','경상남도-거제시 고현로 107 (고현동)','055-635-7682',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP183','우리동물병원','경상북도-영천시 시장4길 41-1 (완산동)','054-331-2848',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP184','성 수의과병원','경상북도-영천시 서문길 25 (성내동)','054-334-1377',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP185','제일가축병원','경상북도-영천시 완산로 38-1 (완산동)','054-334-3313',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP186','한솔동물병원','경상북도-영천시 충효로 56-1 (문외동)','054-331-0137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP187','영천축협동물병원','경상북도-영천시 호국로 17 (문외동)','054-332-8598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP188','대관령가축병원','경상북도-영천시 완산로 4-25 (완산동)','054-334-3157',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP189','양수의과병원','경상북도-영천시 호국로 28 (야사동)','054-333-1589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP190','미래연합동물병원','경상북도-영천시 금호읍 금호로 118','054-335-6708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP191','영천동물병원','경상북도-영천시 최무선로 315 (문내동 영생빌딩)','054-333-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP192','대운 동물병원','경상북도-영천시 장수로 58 (화룡동)','054-331-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP193','경민동물병원','경상북도-영천시 선창길 11 (도림동) 1층','054-336-6179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP194','누리동물병원','경상북도-영천시 호국로 15 (문외동)','054-333-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP195','알프스동물병원','경상북도-영천시 금호읍 교대길 31','054-332-2654',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP196','우진동물병원(출장진료전문병원)','경상북도-영천시 최무선로 233 (성내동)','054-332-4514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP197','팔공동물병원(출장진료전문)','경상북도-영천시 금호읍 교대용대길 6  1층','054-332-4215',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP198','별빛동물병원','경상북도-영천시 북안면 임포역길 84 범진아파트 2동 2층 2호','054-333-4215',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP001','이수의과의원','서울특별시-용산구 후암로 13-2 (후암동)','02-754-4978',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP002','남산동물병원','서울특별시-용산구 후암로 51, 지상1층 (후암동)','02-778-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP003','효창동물병원','서울특별시-용산구 백범로 293 (효창동)','02-711-4527',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP004','21세기동물병원','서울특별시-용산구 보광로 46 (보광동, 용호빌딩 202호,203호(2층))','02-749-6750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP005','한남동물병원','서울특별시-용산구 대사관로24길 28 (한남동)','02-793-9230',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP006','열린동물종합병원','서울특별시-용산구 원효로 171 (원효로2가)','02-3273-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP007','원효종합동물병원','서울특별시-용산구 원효로 187 (원효로2가)','02-719-7070',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP008','한사랑동물병원','서울특별시-용산구 신흥로 36-1 (용산동2가)','02-749-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP009','청화종합동물병원','서울특별시-용산구 보광로 90 (이태원동,태광빌딩 1층)','02-792-7602',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP010','펫토이동물병원','서울특별시-용산구 대사관로 32 (한남동)','02-795-2184',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP011','금강동물병원','서울특별시-용산구 이촌로 303, 21동 112호 (이촌동,현대아파트)','02-798-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP012','라온동물병원','서울특별시-용산구 회나무로13길 6 (이태원동)','02-792-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP013','아프리카동물병원','서울특별시-용산구 후암로 32, 지상1층 (후암동)','02-773-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP014','엉클장동물병원','서울특별시-용산구 백범로 341 (원효로1가,외1필지 리첸시아A동 106호(지상1층))','02-713-0053',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP015','펫동물병원','서울특별시-용산구 백범로 285 (효창동,(지상1층))','02-3275-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP016','(주)이상윤동물병원','서울특별시-용산구 이촌로 248, 31동 105,205호 (이촌동, 한강맨숀)','02-792-5455',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP017','차오름동물병원','서울특별시-용산구 효창원로 14 (산천동)','02-706-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP018','러브펫동물병원','서울특별시-용산구 한강대로23길 55, 5층 (한강로3가, 아이파크몰 패션관)','02-2012-3875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP019','달래동물병원','서울특별시-용산구 한남대로20길 7, 지상1,2층 (한남동)','02-794-1255',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP020','보광동물병원','서울특별시-용산구 보광로 22-1 (보광동)','02-790-9808',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP021','민트동물병원','서울특별시-용산구 원효로 51, 114호 (산천동)','02-707-2235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP022','이태원동물병원','서울특별시-용산구 녹사평대로 210, 1,2층 (이태원동)','02-749-4945',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP023','동물병원 메이','서울특별시-용산구 대사관로 41 (한남동, 2층)','02-797-4408',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP024','퍼스동물병원','서울특별시-용산구 신흥로 54, 106호 (용산동2가)','02-790-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP025','펫세상 동물병원','서울특별시-용산구 한강대로23길 55 (한강로3가, 이마트 지하2층 내)','02-2012-1256',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP026','좋아서하는 동물병원','서울특별시-용산구 백범로 341, B동 113,114호 (문배동)','02-703-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP027','바다동물병원(Bada Animal HO)','서울특별시-용산구 서빙고로 67, 지하1층 비21호 (용산동5가, 파크타워)','02-792-2561',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP028','24시 시유동물메디컬센터','서울특별시-용산구 이촌로64길 24, 1층 101호 (이촌동)','02-793-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP029','베이동물병원','서울특별시-용산구 이촌로 248, 11동 102호 (이촌동, 한강맨션)','02-749-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP030','가정 동물병원','인천광역시-서구 가정로 346 (가정동)','032-575-0833',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP031','서구 동물종합병원','인천광역시-서구 가정로 295 (석남동)','032-576-5726',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP032','연희 동물병원','인천광역시-서구 탁옥로74번길 16 (심곡동)','032-561-4667',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP033','이지 동물병원','인천광역시-서구 완정로 222 (금곡동)','032-565-7915',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP034','우리 동물병원','인천광역시-서구 서곶로 349 (연희동)','032-566-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP035','도희 동물병원','인천광역시-서구 승학로 245, 1층 (심곡동)','032-566-0038',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP036','원당 동물병원','인천광역시-서구 원당대로 852, 204호 (당하동, 창신프라자)','032-566-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP037','화이트 동물병원','인천광역시-서구 서곶로 866 (마전동, 강서빌딩)','032-561-7592',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP038','굿모닝 동물병원','인천광역시-서구 가정로 246, 203호 (석남동)','032-583-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP039','예 동물병원','인천광역시-서구 완정로 70 (마전동, 영남탑스빌아파트 상가)','032-563-1575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP040','예스 동물병원','인천광역시-서구 원적로 78, 202호 (가좌동, 라이프쇼핑센타)','032-584-8254',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP041','쿨펫 동물병원','인천광역시-서구 원당대로 581 (마전동, 롯데마트)','032-561-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP042','쿨펫 동물병원','인천광역시-서구 서곶로 754 (당하동, 당하 이마트)','032-565-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP043','검암 동물병원','인천광역시-서구 승학로 512 (검암동)','032-563-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP044','청라종합 동물병원','인천광역시-서구 청라커낼로 252, c동 118~119호 (경서동)','032-583-0365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP045','청라라임 동물병원','인천광역시-서구 청라라임로 102, 102~104호 (연희동)','032-563-1900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP046','메이플 동물병원','인천광역시-서구 원당대로 853, 102~103호 (원당동, 삼정프라자)','032-561-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP047','가좌 동물병원','인천광역시-서구 원적로 103 (가좌동)','032-579-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP048','청라호수 동물메디컬센터','인천광역시-서구 푸른로7번길 2 (경서동)','032-568-0022',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP049','온누리 동물병원','인천광역시-서구 완정로 182 (마전동)','032-567-2575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP050','정이룸 동물병원','인천광역시-서구 원당대로 664, 102호 (당하동, 창신프라자)','032-564-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP051','청라 루비 동물병원','인천광역시-서구 청라루비로134번길 6-4 (경서동)','032-568-0922',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP052','검단종합 동물병원','인천광역시-서구 완정로7번길 1, 1층 (마전동, 한림빌딩)','032-563-8579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP053','길 동물병원','인천광역시-서구 가정로 375, 201호 (신현동, 금강아미움)','032-578-5119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP054','아이러브펫 동물병원 인천청라점','인천광역시-서구 중봉대로 587, 지하 1층 (경서동, 홈플러스 인천청라점)','032-565-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP055','J 동물병원','인천광역시-서구 청라커낼로 270, 107호 (경서동)','032-566-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP056',' 동물에 반하다 동물병원','인천광역시-서구 크리스탈로102번길 22, 101~102호 (청라동)','032-713-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP057','쿨펫 동물병원(가좌점)','인천광역시-서구 가정로151번길 11 (가좌동)','032-576-0045',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP058','하얀기린 동물병원','인천광역시-서구 청라라임로 40, 103호 (연희동, 청라골드클래스 커낼웨이)','032-564-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP059','청라공감 동물병원','인천광역시-서구 중봉대로586번길 22, 128~131호 (연희동, 청라 풍림 엑슬루타워)','032-563-0094',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP060','토닥토닥 동물병원','인천광역시-서구 여우재로 119, 202호 (가좌동, 인천가좌두산위브트레지움 2단지)','032-574-5757',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP061','삼성종합 동물병원','인천광역시-서구 건지로 269 (석남동)','032-584-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP062','루원하이 동물병원','인천광역시-서구 염곡로 468, 103호 (가정동, 드림타워)','032-564-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP063','쪼꼬 동물메디컬센터','인천광역시-서구 청중로478번안길 4, 2층 (가정동)','032-565-2943',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP064','진현우 동물병원','인천광역시-서구 가정로 295 (석남동)','032-572-7475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP065','24시 더블유 동물의료센터','인천광역시-서구 청라커낼로260번길 27, 236~239호 (청라동, 청라한신더휴커낼웨이)','032-565-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP066','아이케어 동물병원','인천광역시-서구 청라에메랄드로102번길 10, 103~105호 (청라동, 청라리치아노)','032-564-7600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP067','BS조은동물병원','부산광역시-해운대구 윗반송로 73 (반송동)','051-544-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP068','갑을동물병원','부산광역시-해운대구 재반로 148, 32호 (재송동)','051-784-7844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP069','김준완 동물의료센터','부산광역시-해운대구 해운대로 580, 4층 (우동)','051-704-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP070','누리동물병원','부산광역시-해운대구 송정2로13번길 46 (송정동)','051-701-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP071','닥터주 동물병원','부산광역시-해운대구 좌동순환로402번길 8, 204호 (좌동, 피렌체오피스텔)','051-731-7530',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP072','달맞이 호두네 동물병원','부산광역시-해운대구 달맞이길65번길 33, 상가동 3층 305호 (중동, 해운대 달맞이 유림 노르웨이숲)','051-746-7077',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP073','돌봄 동물병원','부산광역시-해운대구 센텀2로 33, 센텀뷰라움 107호 (우동)','051-751-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP074','로이종합동물병원','부산광역시-해운대구 센텀중앙로 145, 202호 (재송동, 센텀파크상가2동)','051-742-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP075','리더스동물병원','부산광역시-해운대구 해운대로 814, 세종월드프라자 A동 301호 (좌동)','051-701-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP076','리안 동물병원','부산광역시-해운대구 달맞이길 58, 2층 (중동)','051-747-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP077','마리동물병원','부산광역시-해운대구 해운대로 794, 엘리움 306호 (좌동)','051-702-5750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP078','마린시티 종합동물병원','부산광역시-해운대구 마린시티3로 23, 벽산이오렌지프라자 333~336호 (우동)','051-747-7407',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP079','마린파크 동물병원','부산광역시-해운대구 마린시티2로 2, 마린파크 2층 208호 (우동)','051-746-7519',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP080','박창언 동물병원','부산광역시-해운대구 해운대로177번길 6 (재송동)','051-782-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP081','반송동물병원','부산광역시-해운대구 아랫반송로 11-1 (반송동)','051-545-0041',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP082','반여착한동물병원','부산광역시-해운대구 선수촌로 65-19, 농협반여동지점 2층 (반여동)','051-927-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP083','벡스코 동물병원','부산광역시-해운대구 해운대로 369, 해운대센텀메디칼센터 (우동)','051-715-2228',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP084','사랑의동물병원','부산광역시-해운대구 좌동순환로 173, 영풍프라자 302호 (좌동)','051-702-1626',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP085','성심동물병원','부산광역시-해운대구 좌동순환로 308, 3층 (좌동)','051-704-7540',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP086','센텀동물종합병원','부산광역시-해운대구 센텀중앙로 145, 205호 (재송동)','051-744-6336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP087','숲동물병원','부산광역시-해운대구 마린시티3로 37, 한일오르듀 207호 (우동)','051-742-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP088','스펀지동물병원','부산광역시-해운대구 해운대로 658-1 (우동)','051-746-1075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP089','신도시동물병원','부산광역시-해운대구 좌동순환로 178, 2층 (좌동)','051-703-6996',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP090','아이센텀 동물메디컬센터','부산광역시-해운대구 센텀동로 25, 상가동 203,204호 (우동, 대우월드마크센텀아파트)','051-746-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP091','아이앤지동물병원','부산광역시-해운대구 대천로 114, 1층 (좌동)','051-702-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP092','아이케어 동물병원','부산광역시-해운대구 센텀동로 25, B상가동 203호 (우동, 대우월드마크센텀아파트)','051-715-5640',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP093','오션동물메디컬센터','부산광역시-해운대구 선수촌로 78, 다솜빌딩 2층 (반여동)','051-711-5999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP094','온누리동물병원','부산광역시-해운대구 좌동순환로 309, 303호 (좌동)','051-701-7555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP095','우리동물병원','부산광역시-해운대구 선수촌로 101 (반여동)','051-528-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP096','웰니스 클리닉 동물병원','부산광역시-해운대구 좌동순환로 511, 이마트해운대점 3층 (중동)','051-746-8675',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP097','장산동물병원','부산광역시-해운대구 반여로 96, 1층 (반여동, 영풍빌딩)','051-529-5388',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP098','재송동물병원','부산광역시-해운대구 재반로 117-1, 2층 (재송동)','051-784-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP099','조앤박동물병원','부산광역시-해운대구 양운로 108, 2층 (좌동)','051-702-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP100','큰마음동물메디컬센터','부산광역시-해운대구 해운대해변로357번길 17, 4~8층 (중동)','051-710-2004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP101','토마스동물병원','부산광역시-해운대구 반송로 922 (반송동)','051-544-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP102','푸른동물병원','부산광역시-해운대구 해운대로61번길 104 (반여동)','051-784-1235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP103','해밀동물병원','부산광역시-해운대구 송정광어골로 22, 1층 (송정동)','051-710-1766',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP104','해운대 24시 동물의료원','부산광역시-해운대구 양운로 45, 해운대베르나움 111호 (좌동)','051-702-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP105','해운대 플러스동물병원','부산광역시-해운대구 세실로 48, 상가동 1-2, 2-2호 (좌동, 해운대삼정코아주상복합)','051-915-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP106','해운대동물메디컬센터','부산광역시-해운대구 양운로 40, 봉황빌딩 301호 (좌동)','051-702-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP107','해운대조은동물병원','부산광역시-해운대구 해운대로 624 (우동)','051-746-7775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP108','행복드림 동물병원','부산광역시-해운대구 삼어로 61, 201호 (반여동, 우방신세계아파트)','051-521-0521',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP109','화목종합동물병원','부산광역시-해운대구 세실로 48, 206호 (좌동)','051-704-4376',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP110','힐 동물병원','부산광역시-해운대구 좌동순환로433번길 30-1, 해운대힐스테이트위브 224~227호 (중동)','051-747-7966',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP111','현대동물병원','광주광역시-서구 상무대로 1045 (화정동)','062-373-5293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP112','금호동물병원','광주광역시-서구 금화로 54 (금호동)','062-383-7572',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP113','하나로동물병원','광주광역시-서구 상무중앙로 62, 1층 (치평동)','062-371-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP114','좋은동물병원','광주광역시-서구 운천로 29 (금호동)','062-382-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP115','한결동물의료센터','광주광역시-서구 풍암순환로188번길 15 (풍암동)','062-652-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP220','시드니동물병원','경기도-성남시 수정구 태평로 10 (태평동)','723-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP221','다정동물병원','경기도-화성시 10용사로 219, 병점 성호 아파트 (병점동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP222','하하동물병원','경기도-광주시 태전동로 25, 퍼스트타워 1층 104호 (태전동)','031-766-3463',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP223','삼포동물병원','경기도-과천시 경마공원대로 107, 한국마사회 (주암동)','02-509-1944',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP224','동물병원 Dr.정','경기도-성남시 중원구 산성대로 498, 1층 102호 (은행동)','031-733-9325',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP225','도그스타 동물병원','경기도-수원시 권선구 호매실로218번길 124, 202호 (호매실동)','031-291-8896',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP226','일리동물의료센터','경기도-수원시 영통구 법조로 25, 광교 SK VIEW Lake 근린생활비 112~114호 (하동)','031-213-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP227','카라동물병원','경기도-파주시 법원읍 술이홀로 1409','031-959-8600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP228','봄앤동물병원','경기도-과천시 별양로 164, 상가동 2층 205호 (부림동, 과천센트럴파크푸르지오써밋)','02-2038-7718',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP229','아라양돈동물병원','경기도-이천시 설성면 진상미로167번길 4',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP230','지음동물의료센터','경기도-성남시 중원구 광명로 321, 정성빌딩 1층 (금광동)','031-735-0922',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP231','팜스플랜동물병원(출장전문)','경기도-양평군 양평읍 중앙로 53, 1층 103호','031-771-9533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP232','탑동물병원','경기도-고양시 덕양구 토당로 4, 103호 (토당동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP233','24시 양주 힐 동물의료센터','경기도-양주시 옥정동로7길 30, 2층 1~3호 (옥정동)','031-859-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP234','에덴동물병원','경기도-수원시 팔달구 정조로 685 (매교동)','031-224-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP235','민동물병원','경기도-고양시 덕양구 호국로 778-6 (성사동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP236','그루터기 동물병원','경기도-김포시 풍무로 73, 퍼플오션프라자 2층 210호 (풍무동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP237','로얄벳 동물병원','경기도-용인시 수지구 수지로 203 (신봉동,이마트수지점 3층)','031-263-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP238','뉴광명동물메디컬센터','경기도-광명시 광명로 868 (광명동)','2060-7577',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP239','즐거운동물병원','경기도-용인시 수지구 성복2로 100, 113호 (성복동, 예반아이엔프라자)','031-272-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP240','운정한빛동물병원','경기도-파주시 경의로 1068, 101.201,202호 (야당동, 삼융프라자)','031-944-7179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP241','화정동물병원','경기도-고양시 덕양구 은빛로29번길 46 (화정동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP242','영주동물병원','경기도-광주시 파발로151번길 4-2 (경안동)','762-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP243','아프리카 동물병원','경기도-성남시 분당구 서현로 170, 풍림아이원플러스 108호 (서현동)','705-7776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP244','온 동물의료센터','경기도-용인시 기흥구 용구대로2394번길 2, 2층 201,202호 (마북동)','312867582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP245','퍼스트동물병원','경기도-안양시 동안구 경수대로 597, 영신빌딩 2층 202호 (호계동)','031-360-0818',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP246','나만 애 동물병원','경기도-하남시 감일백제로83번길 24, G골든프라자 2층 204호 (감이동)','02-485-0512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP437','에덴동물병원','경기도-파주시 와석순환로 125, 현대프라자 2층 204호 (동패동)','031-943-3710',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP438','이성준동물병원','경기도-안성시 중앙로 431-1 (봉남동)','673-5858',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP439','라임동물병원','경기도-포천시 신북면 호국로 2258','031-533-5065',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP440','운정호수동물메디컬센터','경기도-파주시 경의로 1114, 에펠타워 202,203호 (야당동)','031-937-8225',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP441','굿닥터동물병원','경기도-안양시 동안구 동편로183번길 14 (관양동)','031-345-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP442','로하스 동물병원','경기도-고양시 일산서구 강선로 74, 강선마을8단지 (주엽동)','031-923-8271',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP443','웰리스 클리닉','경기도-성남시 분당구 불정로 134 (정자동)','031-711-1911',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP444','월드펫동물종합병원중동역점','경기도-부천시 부일로 322 (중동)','661-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP445','금산헤르쯔 동물병원','경기도-성남시 분당구 돌마로 364, 현대제일상가 21호 (수내동)','031-712-2795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP446','성복동물병원','경기도-용인시 수지구 성복2로76번길 26-3, B101호 (성복동, 드림타워)','263-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP447','이솝동물병원','경기도-고양시 일산동구 일산로286번길 7-7 (마두동)','031-903-3399',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP448','프라하동물병원','경기도-군포시 용호1로 4, 104호 (당동)','031-391-7075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP449','반딧불 동물병원','경기도-고양시 일산서구 중앙로 1443, 가람상가 208호 (주엽동)','904-2345',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP450','대한동물병원(산업동물 출장진료 전문 동물병원)','경기도-파주시 경의로 1805, 2층 (금촌동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP451','조규만외과동물병원','경기도-부천시 부일로 226, 대명그린프라자 (상동)','032-656-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP452','윤후동물병원','경기도-동두천시 중앙로 125 (지행동, 영스포렉스 101호)','031-864-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP453','봄동물병원','경기도-용인시 기흥구 서천서로12번길 4-8 (서천동)','031-203-4727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP454','튼튼동물병원','경기도-용인시 기흥구 죽현로 29, 102호 (보정동, 현대휴먼프라자)','031-265-7505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP455','센트럴동물병원','경기도-화성시 동탄지성로 102, 하나로프라자 (반송동)','8003-7520',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP456','큐피트동물병원','경기도-부천시 부일로 447-1 (심곡동)','032-666-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP457','상록 동물병원','경기도-성남시 분당구 정자로 78 (정자동)','716-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP458','한국동물병원','경기도-안산시 단원구 광덕1로 63, 1층 109호 (초지동, 메디프라자)','403-1604',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP459','김 S 동물병원','경기도-고양시 일산동구 무궁화로93번길 6-10 (정발산동)','031-916-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP460','홍익동물병원','경기도-이천시 단월로 17-13 (단월동)','637-7762',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP461','현대동물병원','경기도-동두천시 큰시장로 42 (생연동)','865-5393',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP462','어정동물병원','경기도-용인시 기흥구 어정로 134-12 (중동)','031-284-9200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP463','현대동물병원','경기도-부천시 송내대로265번길 85, 뱅뱅프라자 (상동)','328-8440',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP464','펫가든 의왕점동물병원','경기도-의왕시 계원대학로 7 (내손동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP465','스타동물병원','경기도-수원시 권선구 금곡로102번길 30(금곡동)','031-294-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP466','밴스(vans)동물병원','경기도-화성시 지산1길 18-24, 1층 (영천동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP467','서울동물병원','경기도-시흥시 수인로 3390, 지하1층 (신천동)','031-313-6109',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP468','서울프라임 동물병원','경기도-고양시 덕양구 중앙로 628 (화정동)','031-970-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP469','대한동물병원(출장전문)','경기도-안성시 죽산면 죽주로 300','676-9608',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP470','바로 동물병원','경기도-부천시 원미로 88-2 (원미동)','255-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP471','신영통동물병원','경기도-수원시 영통구 영통로 103 (망포동)','031-204-9006',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP472','24시 아이동물메디컬센터','경기도-부천시 소사로 779, 뉴월드프라자 (원종동)','677-5262',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP473','시흥24시센트럴동물의료센터','경기도-시흥시 정왕대로 174, 광개토빌딩1 2층 203호 (정왕동)','031-432-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP474','경기동물병원(출장진료 전문)','경기도-평택시 서정역로58번길 30 (서정동)','031-666-6501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP475','맘스동물의료센터','경기도-부천시 길주로 80, 로얄타워 (상동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP476','24시마음든든동물병원','경기도-안양시 만안구 경수대로 1234, 3층 301호 (석수동, 관악센터)','031-474-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP477','한강동물의료센터','경기도-김포시 김포한강1로97번길 10-26 (장기동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP478','바른동물병원','경기도-광주시 파발로 107, 남성빌딩 (경안동)','031-762-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP479','오즈동물병원','경기도-의정부시 추동로 13 (신곡동)','031-840-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP480','홈종합동물병원','경기도-김포시 풍무로 85, 1동 4층 (풍무동)','031-986-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP481','숲속동물병원','경기도-용인시 처인구 남사면 한숲로 45, 한숲스퀘어옐로우 A동 113호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP482','베스트동물병원','경기도-수원시 장안구 덕영대로535번길 38, 로얄프라자 101호 (천천동)','031-268-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP483','쿨펫동물병원','경기도-수원시 영통구 중부대로 437 (원천동)','031-213-5075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP484','박한준종합동물병원','경기도-시흥시 복지로 47 (대야동)','031-315-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP485','쇼독동물병원','경기도-안양시 동안구 경수대로 833, 2층 (비산동)','031-465-0907',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP486','아마존','경기도-고양시 덕양구 중앙로558번길 21 (행신동)','031-972-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP487','행복한 동물병원','경기도-이천시 경충대로 2486 (진리동)','636-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP488','이룸동물병원','경기도-안양시 동안구 관악대로 167, 1층 (비산동, 비산 이편한세상 상가동)','031-381-0166',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP489','Wellness clinic 동물병원','경기도-용인시 기흥구 용구대로 2457 (보정동)','031-283-1357',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP490','포근한동물병원','경기도-부천시 소향로 111, 디아뜨 1 A동 110, 111호 (중동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP491','백현 동물병원','경기도-성남시 분당구 동판교로52번길 6, 외 1필지(분당구 동판교로52번길 8) 1층 (백현동)','705-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP492','산본동물병원','경기도-군포시 산본천로 212 (산본동)','394-0816',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP493','25시 종합동물병원','경기도-오산시 성호대로 97 (오산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP494','사랑동물병원','경기도-여주시 세종로237번길 1 (교동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP495','서울 베스트 동물병원','경기도-부천시 장말로 219 (중동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP496','한국동물선진의료연구소(KASMINE) 동물심혈관신장센터','경기도-성남시 분당구 미금로 43, 정운빌딩 1층 (구미동)','031-716-9001',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP497','구성동물병원','경기도-용인시 기흥구 연원로 1, 101호 (마북동, 연원마을LG아파트상가)','031-275-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP498','펫스토리 동물병원','경기도-용인시 수지구 신봉2로 19, 102호 (신봉동,신엘지프라자)','031-276-0282',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP499','해피올동물병원','경기도-포천시 소흘읍 호국로 571, 정우빌딩','542-9482',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP562','참사랑','경기도-고양시 일산동구 탄중로 324 (중산동)','031-975-0187',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP563','하나동물병원','경기도-김포시 관순로 4 (사우동, 1층상가)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP564','고려애견종합병원','경기도-성남시 수정구 시민로 146 (신흥동)','735-1942',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP565','목감시티동물병원','경기도-시흥시 목감둘레로 253-24, 110호 (조남동)','031-504-7559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP566','용주골동물병원','경기도-파주시 파주읍 술이홀로 422-1','031-952-4674',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP567','엘림동물병원','경기도-부천시 삼작로 305 (도당동, 성진그린타운 102동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP568','조은동물병원','경기도-수원시 팔달구 화양로 21-2, 1층 (화서동)','031-242-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP569','숲속동물병원','경기도-시흥시 삼미시장1길 39, 1층 (신천동)','031-317-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP570','가람동물병원','경기도-구리시 건원대로 41 (인창동)','031-558-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP571','고강동물병원','경기도-부천시 역곡로 473 (고강동)','683-5137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP572','위례중앙동물의료센터','경기도-성남시 수정구 위례광장로 104, 위례 한화 오벨리스크 센트럴스퀘어 2241,2242호 (창곡동)','031-758-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP573','진스 종합 동물병원','경기도-고양시 일산동구 노루목로 99, 호수마을5단지아파트 1층 121~122호 (장항동, 호수마을5단지아파트)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP574','아이러브 동물병원','경기도-수원시 장안구 송원로 69, 4층 (송죽동)','031-241-7551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP575','봄날동물의료센터','경기도-평택시 만세로 1842 (비전동)','031-8054-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP576','쿨펫동물병원','경기도-김포시 김포한강7로 71 (구래동, 이마트 김포한강점 2층)','031-997-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP577','포곡동물병원','경기도-용인시 처인구 포곡읍 전대로 27-2','334-3304',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP578','갈매동물병원','경기도-구리시 갈매중앙로 70, 202호 (갈매동, 이룸넘버원리치안)','031-529-5088',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP579','내곁에동물병원','경기도-의정부시 민락로 195, 중흥s클래스 1층 113, 114호 (민락동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP580','햇빛동물병원','경기도-남양주시 덕송2로6번길 28-11 (별내동)','528-7545',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP581','미엘동물병원','경기도-파주시 청석로 264, 201호 (동패동, 거묵프라자)','031-935-5009',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP582','스마일동물병원','경기도-용인시 처인구 중부대로 1510 (마평동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP583','한솔동물병원','경기도-용인시 처인구 원삼면 좌찬로 93','332-7951',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP584','우리동네동물병원','경기도-용인시 기흥구 새천년로16번길 3-2, 101호 (신갈동, 월드프라자)','031-281-0811',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP585','강산동물병원','경기도-여주시 홍문동 세종로 68-17',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP586','김동물병원','경기도-안산시 상록구 화랑로 501, 1층동 103호 (성포동,예술프라자)','480-4474',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP587','대한동물병원','경기도-포천시 영북면 영북로203번길 30',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP588','장곡애니동물병원','경기도-시흥시 장곡로 23, 106호 (장곡동)','031-438-7552',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP589','닥터페티앙동물병원','경기도-용인시 처인구 명지로 185 (남동)','313357578',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP590','이형윤동물병원','경기도-평택시 중앙2로 79, 1층 (합정동)','031-652-8921',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP591','피그만클리닉','경기도-고양시 덕양구 삼송로 222, 헤리엇오피스 310호 (삼송동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP592','서울동물메디컬센터','경기도-광주시 오포읍 신현로 89','031-8022-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP593','공원애견동물병원','경기도-안산시 상록구 오목로 78 (본오동,1층)','419-7574',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP594','김포메디엘동물병원','경기도-김포시 김포한강4로 521, 한강메디플라자 201호 (구래동)','031-985-7075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP595','참 좋은 동물병원','경기도-양평군 양평읍 시민로 90','031-772-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP596','분당동물병원','경기도-성남시 분당구 양현로 126, 미림프라자 104호 (이매동)','705-4144',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP597','다정동물병원','경기도-파주시 와석순환로 78, 한강프라자 201호 (야당동)','031-944-5077',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP598','샐리동물병원','경기도-부천시 경인로138번길 9 (송내동)','651-5450',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP599','25시동물병원','경기도-남양주시 화도읍 마석중앙로 70','594-3119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP600','해피동물병원','경기도-남양주시 와부읍 덕소로 218','521-7573',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP601','한동물병원 (출장진료 전문)','경기도-평택시 오성면 숙성시장길 65 (명성빌라)','031-692-2250',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP602','다산동물병원','경기도-남양주시 경춘로 380, 대진빌딩 1층 (다산동)','511-0304',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP603','이솝동물병원','경기도-광주시 초월읍 경충대로 1264','031-768-8820',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP604','마사랑동물병원','경기도-과천시 경마공원대로 107 (주암동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP605','파주24시동물병원','경기도-파주시 교하로 87, 201호 (목동동, 삼성프라자)','031-944-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP606','정동물병원','경기도-평택시 안중읍 안중로 94, 105동 (평창빌딩)','031-681-2406',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP607','가람동물병원','경기도-고양시 일산동구 강석로 156, 강촌마을7단지 (마두동)','031-906-0976',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP608','메리알 동물병원','경기도-고양시 일산동구 호수로 358-25, 동문타워II 1016호 (백석동)','031-816-7879',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP609','마석동물병원','경기도-남양주시 화도읍 마석로 90','031-551-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP610','Dr. 오즈 동물병원','경기도-성남시 분당구 분당로263번길 39, 109호 (서현동, 레이디파크)','701-8225',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP611','누리동물병원','경기도-화성시 동탄솔빛로 64, 가희프라자2 1층 104호 (반송동)','8003-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP612','홍익메디칼동물병원','경기도-화성시 우정읍 조암북로57번길 1, 1층','031-358-0200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP613','슈르+ 동물병원','경기도-과천시 별양상가3로 34, 2층 218,219,220호 (별양동, 과천 위버필드)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP614','이리온','경기도-김포시 초당로61번길 56 (장기동)','031-988-3125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP615','참사랑동물병원','경기도-수원시 영통구 영통로 118 (망포동)','031-273-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP616','다니엘 동물병원','경기도-고양시 일산동구 일산로 233 (마두동)','908-5857',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP617','창현동물병원','경기도-남양주시 화도읍 창현로 53','591-5991',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP618','제일동물병원','경기도-의정부시 태평로 116 (의정부동)','848-4598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP619','파우동물병원','경기도-용인시 수지구 현암로125번길 6, 105호 (죽전동, 그린프라자)','898-0330',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP620','소풍동물병원','경기도-부천시 송내대로 239, 소풍 (상동)','329-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP621','수호천사동물병원','경기도-안양시 동안구 경수대로 552 (호계동,1층)','031-451-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP622','산업동물병원','경기도-안성시 강변남로 84 (현수동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP623','비타민동물메디컬센터','경기도-안양시 동안구 관악대로 267, 1,2층 (비산동)','031-465-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP624','송정동물의료센터','경기도-광주시 탄벌길 7, 태경빌딩 (탄벌동)','031-767-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP625','호수동물병원','경기도-고양시 일산서구 중앙로 1470, A동 106-3호 (주엽동, 문촌마을10단지아파트)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP626','수원종합동물병원','경기도-수원시 영통구 중부대로 263, 2층 (원천동)','031-214-5527',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP627','김정태동물병원','경기도-안산시 상록구 본오로 133, 116호 (본오동, 우성상가)','409-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP628','녹양동물병원','경기도-의정부시 녹양로 66 (녹양동)','855-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP629','김민성 동물병원','경기도-광명시 광덕산로 5, 종합상가동 112호 (철산동)','02-2686-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP630','동물병원 HADA','경기도-김포시 김포한강8로 398, 204호 (구래동, 지오플러스)','031-8049-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP631','현화동물병원','경기도-평택시 안중읍 안현로서6길 38','686-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP632','이든동물병원','경기도-수원시 팔달구 수성로244번길 25, 101호 (화서동, 화서위브하늘채)','031-242-7501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP633','CJ동물병원','경기도-부천시 소향로 246, 새롬프라자 6차 (중동)','032-323-4999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP634','연두 동물병원','경기도-수원시 권선구 서수원로577번길 341, 상가동 1층 B127호 (금곡동, 수원모아미래도센트럴타운1단지)','031-294-8277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP635','하하 동물병원','경기도-수원시 권선구 구운로85번길 12, 105층 (구운동)','031-292-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP636','원 종합동물병원','경기도-오산시 대원로 37-1 (원동)','031-374-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP637','한마음동물병원','경기도-김포시 통진읍 김포대로 2025','031-987-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP638','작은 친구 동물병원','경기도-고양시 덕양구 토당로42번길 13-15, 능곡역프라자 103호 (토당동)','031-970-9204',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP639','서울경기양돈농협동물병원','경기도-수원시 팔달구 화산로 62 (화서동)','031-295-7611',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP640','의양동물병원','경기도-양주시 광적면 가래비9길 12-27',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP641','삼송동물의료센터','경기도-고양시 덕양구 삼송로205번길 15 (삼송동)','02-381-9658',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP642','국립축산과학원 축산자원개발부 동물병원','경기도-평택시 팽성읍 노와2길 48-16','041-580-3409',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP643','우리앤동물병원','경기도-부천시 조마루로105번길 8-6 (상동)','032-325-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP644','흥덕종합동물병원','경기도-용인시 기흥구 흥덕중앙로 59 (영덕동, 용인흥덕노블레스흥덕노블레스)','031-217-7119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP645','뉴에스동물병원','경기도-군포시 산본로343번길 7, 창선빌딩 101,102,지101,102,103호 (산본동)','031-397-0071',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP646','일산동물의료원','경기도-고양시 일산서구 대화로 407 (대화동)','031-924-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP647','가람동물병원','경기도-김포시 양촌읍 양곡로390번길 97','981-0123',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP648','남양동물병원(출장전문)','경기도-안성시 공도읍 마정강변길 25, 상가동 103호 (임광그대가아파트 1단지)','655-4465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP649','그랜드동물병원','경기도-군포시 군포로 521-1 (당동)','453-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP650','two현동물병원','경기도-평택시 평남로 1050, 1층 103호 (동삭동)','031-657-4671',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP651','쿨펫동물병원(이마트 중동점)','경기도-부천시 석천로 188, (주)신세계이마트중동점 (중동)','323259617',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP652','늘봄 동물병원','경기도-부천시 소사로 196 (소사본동)','323465454',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP653','저스트벳 동물병원','경기도-오산시 원동로 6, 파크스퀘어 105,106호 (원동)','031-378-1514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP654','대학동물병원','경기도-남양주시 화도읍 맷돌로91번길 4-18, 송호빌 102호','559-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP655','원당동물병원','경기도-고양시 덕양구 마상로126번길 97, 3층 (주교동)','962-6049',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP656','연희동물병원','경기도-수원시 권선구 금호로 236, 삼호빌딩 101호 (탑동)','031-296-7875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP657','도그파파','경기도-광주시 곤지암읍 광여로 779-2','031-767-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP658','미르 동물병원','경기도-부천시 신흥로 150, 위브더스테이트 (중동)','662-2479',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP659','(주)가나이십사시동물병원','경기도-안산시 단원구 중앙대로 899, 1.2층 (고잔동)','402-4061',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP660','엔젤동물병원','경기도-성남시 분당구 성남대로171번길 17, 씨티밸리 101호 (금곡동)','031-713-5004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP661','프렌즈동물병원','경기도-의정부시 호국로 1300 (의정부동)','031-845-2500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP662','해맑은 동물병원','경기도-고양시 일산서구 일현로 48 203호 (탄현동,현해프라자)','031-924-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP663','반창꼬동물병원','경기도-양주시 옥정로 151, 힐링프라자 3층 2호 (옥정동)','031-858-2918',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP664','양지종합동물병원','경기도-용인시 처인구 양지면 중부대로 2219','031-338-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP665','한국동물병원','경기도-성남시 중원구 희망로 360, 10호 (상대원동)','746-8990',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP666','본 동물의료센터','경기도-수원시 장안구 송정로 114, 본 동물의료센터 1,2(일부)층 (조원동)','031-248-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP667','사과나무 동물병원','경기도-고양시 일산서구 일산로 539 (일산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP668','신천동물병원','경기도-시흥시 호현로22번길 27 (신천동)','031-315-3727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP669','에버랜드 동물병원','경기도-용인시 처인구 포곡읍 에버랜드로 199','031-320-8708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP670','호평동물병원','경기도-남양주시 늘을1로16번길 29 (호평동)','511-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP671','정동물병원','경기도-수원시 팔달구 권광로 120 (인계동)','031-239-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP672','하일동물병원','경기도-구리시 경춘로 200, 205호 (수택동)','031-522-5107',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP673','운정W동물병원','경기도-파주시 미래로 620, 112호 (와동동, 해솔프라자)','031-944-9075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP674','금오동물병원','경기도-의정부시 청사로 37 (금오동,신세계프라자 112호)','031-826-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP675','온빛동물병원','경기도-광명시 오리로 352 (소하동)','28988971',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP676','오암동물병원','경기도-평택시 안중읍 안중로99번길 13-1','031-682-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP677','참좋은동물병원','경기도-광주시 오포읍 신현로 123, 2층','031-713-0103',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP678','나비누리 동물병원','경기도-광주시 중앙로 69-4 (역동)','031-763-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP679','그랜드24시동물병원','경기도-광주시 경안안길 5 (경안동)','766-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP680','인덕원종합동물병원','경기도-안양시 동안구 흥안대로 495, 1층 (관양동)','031-426-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP681','원 동물병원','경기도-수원시 영통구 덕영대로 1535, 현대프라자 111호 (영통동)','031-205-7900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP682','부천축협 사료사업소 동물병원 (출장진료 전문)','경기도-평택시 팽성읍 안정로 159, 201호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP683','주식회사 선진브릿지랩','경기도-이천시 부발읍 신아로 58','031-637-5248',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP684','스타동물병원','경기도-안산시 단원구 한양대학로 208, 2층 (고잔동)','410-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP685','주현동물병원','경기도-안양시 만안구 병목안로 57 (안양동)','031-443-9726',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP745','미사동물병원','경기도-하남시 미사강변중앙로 223, 203호 (망월동)','031-796-7179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP746','녹양돌봄동물병원','경기도-의정부시 비우로 100, 1층 (녹양동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP747','하노버','경기도-고양시 일산서구 중앙로 1470, 문촌마을 복합상가 (주엽동)','9193567',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP748','프라임동물병원','경기도-구리시 장자대로 76 (수택동, 이우프라자)','031-566-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP749','용인시 동물보호센터','경기도-용인시 처인구 중부대로 1074-1, 용인시 동물보호센터 (삼가동)','031-324-3467',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP750','프라임동물병원','경기도-성남시 분당구 운중로 124, 204호 (운중동, 마크시티 블루)','8017-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP751','중앙동물병원','경기도-성남시 수정구 수정로 139 (태평동)','755-9429',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP752','청안동물병원','경기도-시흥시 삼미시장1길 19 (신천동)','031-311-4148',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP753','월천동물병원 (출장전문)','경기도-안성시 보개면 양협길 29-67','031-674-4432',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP754','고방동물병원','경기도-이천시 부발읍 경충대로 2260','031-632-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP755','세브란스동물병원','경기도-용인시 수지구 풍덕천로 135, 103호 (풍덕천동, 요진타워)','263-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP756','분당중앙 동물병원','경기도-성남시 분당구 중앙공원로39번길 49, 서현 지엔느 108호 (서현동)','031-708-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP757','한강동물병원','경기도-남양주시 퇴계원읍 경춘북로 516','571-4465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP758','펫츠나라 동물병원','경기도-시흥시 수인로 3376-1, 1층 (신천동)','031-314-0706',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP759','김포24시힐동물의료센터','경기도-김포시 김포한강2로 11, 201,202,203호 (장기동, 수정마을 쌍용예가아파트)','031-987-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP760','종합동물병원','경기도-평택시 평택로 105 (통복동)','655-4980',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP761','정다운동물병원','경기도-안산시 단원구 예술대학로 137, 덕성빌딩 201호 (고잔동)','482-5793',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP762','부천준동물병원','경기도-부천시 신흥로 230, 두리프라자 (중동)','322-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP763','강남동물병원','경기도-화성시 향남읍 행정죽전로1길 25, 102호','354-7844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP764','나루동물메디칼','경기도-수원시 장안구 팔달로 249 (영화동)','031-243-0080',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP765','용인동물병원','경기도-용인시 처인구 명지로 17 (역북동)','332-3070',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP766','사랑동물병원','경기도-연천군 전곡읍 전곡로 140','832-7771',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP767','나라 동물병원','경기도-성남시 분당구 미금로 48, 오성프라자 113호 (구미동)','712-0707',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP768','동물사랑동물병원','경기도-안산시 단원구 선부로 195 (선부동, 서울빌딩)','413-4402',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP769','토론토 동물병원','경기도-고양시 일산서구 대산로212번길 8-12 (대화동)','923-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP770','튼튼동물병원','경기도-고양시 일산동구 일산로 38, 우림오피스텔 1층 110호 (백석동)','031-811-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP771','서현 동물병원','경기도-성남시 중원구 성남대로 1110, 1층 (하대원동)','031-755-5095',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP772','강남동물병원','경기도-고양시 일산동구 위시티로 75 (식사동)','031-906-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP773','비전동물병원','경기도-평택시 비전3로 27, 104, 105호 (비전동)','316511175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP774','그레이트 동물병원','경기도-성남시 분당구 정자로 80, 1층 (정자동, 정자프라자)','031-716-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP775','신원동물메디컬센터','경기도-고양시 덕양구 신원로1길 42, 1층 (신원동)','02-381-0507',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP776','위즈펫동물병원','경기도-의정부시 민락로 210, 4층 (민락동, 이마트)','031-852-7502',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP777','다온동물병원','경기도-안양시 동안구 평촌대로 124, 1층 (평촌동, 범계빌딩)','031-689-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP778','제일동물병원','경기도-군포시 산본로 394, 1동 108,109호 (산본동, 대림프라자)','392-8850',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP779','올리브동물병원','경기도-고양시 일산동구 중앙로 1130, C동 112호 (마두동, 올리브상가)','031-908-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP780','바우동물병원','경기도-안양시 만안구 박달로 512 (박달동)','031-443-1280',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP781','김성록동물병원','경기도-수원시 장안구 서부로 2132 (율전동)','031-297-2975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP782','강남종합동물병원','경기도-용인시 기흥구 신갈로 85 (신갈동)','031-283-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP783','미리내동물병원','경기도-남양주시 별내5로 35, 102호 (별내동)','574-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP784','야탑서울동물병원','경기도-성남시 분당구 벌말로 33, 206호 (야탑동, 일심조합상가)','0505-315-1234',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP785','맥동물병원','경기도-평택시 평택로 80 (평택동)','657-1062',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP786','백마동물병원','경기도-고양시 일산동구 일산로 212, 장항A타운 1층 (마두동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP787','포일동물병원','경기도-의왕시 포일세거리로 3, 112호 (포일동, 파레사타워)','031-425-7541',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP788','한호동물병원','경기도-평택시 송탄로 202 (서정동)','031-611-5736',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP789','아이러브펫동물병원','경기도-부천시 길주로 118, 홈플러스부천상동점 (상동)','324-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP790','노엘동물병원','경기도-부천시 범안로 98, 범박동 근린생활시설 (범박동)','2477575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP791','쿨펫동물병원','경기도-군포시 산본로 347, 5층 (산본동, 이마트백화점)','031-398-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP792','보정동물병원','경기도-용인시 기흥구 보정로 32 (보정동, 지젤스포츠클럽)','031-898-3708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP793','순수동물병원','경기도-용인시 수지구 수지로296번길 30 (풍덕천동)','031-262-8700',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP794','영통동물병원','경기도-수원시 영통구 청명남로4번길 6, 1층 (영통동)','031-204-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP795','마음가득동물병원','경기도-평택시 송탄로 147, 태광 1층 (이충동)','031-667-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP796','운정힐링 동물병원','경기도-파주시 와석순환로 70 (야당동, 신운정프라자2)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP797','앨리스동물병원','경기도-광명시 소하로 88, 2층 201호 (소하동, 청학프라자)','02-899-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP798','양주24시해든동물의료센터','경기도-양주시 부흥로 1938, 201호 (광사동)','031-848-9111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP799','양하무역산업동물병원','경기도-안성시 죽산면 용설로 429-12','1566-4343',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP800','이창훈 동물병원','경기도-고양시 일산동구 무궁화로141번길 7-9 (정발산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP801','방실웃는 동물병원','경기도-수원시 영통구 인계로220번길 20 (매탄동)','031-212-1999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP802','자연앤동물병원','경기도-수원시 영통구 에듀타운로 17, 국제프라자 108호 (이의동)','031-215-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP803','조은동물병원','경기도-성남시 중원구 광명로142번길 3, 미래타운 B101호 (성남동)','741-1701',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP804','장호원동물병원','경기도-이천시 장호원읍 장감로 23','031-643-0010',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP686','청려원동물병원','경기도-수원시 팔달구 정조로 751-7, 2층 (중동)','031-242-2078',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP687','우람동물병원','경기도-양평군 양평읍 남북로 97','031-772-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP688','김기혁 동물병원 평택동점','경기도-평택시 평택로 84-1 (평택동)','031-618-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP689','강남애니동물메디컬센터','경기도-하남시 신평로 168 (신장동)','031-795-0903',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP690','도래동물병원','경기도-오산시 청학로 250, 1층 104호 (수청동)','031-375-7590',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP691','애니온동물병원','경기도-시흥시 군자천로 335, 2층 201,202호 (정왕동)','031-499-7991',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP692','미래동물의료센터','경기도-성남시 분당구 서현로255번길 1, 1층 (서현동)','031-705-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP693','활기찬동물병원','경기도-성남시 분당구 장안로 39, 한일빌딩 102-2호 (분당동)','781-7525',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP694','오블리 동물병원','경기도-구리시 이문안로 138 (토평동,우신빌딩 1층)','031-568-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP695','정 동물병원','경기도-용인시 수지구 만현로 120, SR프라자 112호 (상현동)','031-898-2298',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP696','24시 숨 동물병원','경기도-수원시 권선구 권선로 715, 1층 (권선동)','031-548-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP697','파주365동물의료센터','경기도-파주시 책향기로 573, 2층 206호 (목동동, 월드타워3)','031-945-5365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP698','동탄시티동물의료센터','경기도-화성시 동탄지성로 126, 정일프라자 109호, 202호 (반송동)','031-8003-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP699','현대가축병원','경기도-양주시 남면 화합로 583','031-868-5061',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP700','죽전동물병원','경기도-용인시 기흥구 죽전로 49, 101호 (보정동)','031-266-2993',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP701','365 신원당 동물병원','경기도-고양시 덕양구 호국로790번길 88 (성사동, 신원당동물병원)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP702','우리동물병원','경기도-안성시 장기1길 5(인지동)','675-0722',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP703','마이펫동물병원','경기도-남양주시 화도읍 경춘로 1992 (롯데마트 내)','511-7544',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP704','페로페라동물병원','경기도-고양시 일산동구 위시티2로11번길 16, 글라스프라자 202호 (식사동)','031-969-8586',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP705','서울동물병원','경기도-의정부시 용현로 152, 103호 (민락동)','031-852-7733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP706','웰 동물병원','경기도-용인시 수지구 광교중앙로 302, 1층 101호 (상현동, 광교지구 블루스퀘어)','031-213-7522',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP707','백암동물병원','경기도-용인시 처인구 백암면 근창로 45','031-336-1245',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP708','애니웰 동물병원','경기도-고양시 일산동구 장백로 13, 성우아뜨리움오피스텔 110호 (백석동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP709','세인트존스동물병원','경기도-성남시 분당구 정자일로 197, 101호 (정자동, 푸르지오씨티 2차)','031-713-8391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP710','쿨펫동물병원','경기도-고양시 덕양구 화중로 66, 롯데마트 2층 (화정동)','971-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP711','현대동물병원','경기도-용인시 기흥구 신갈로 20 (상갈동)','285-6334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP712','동현24시동물병원','경기도-광주시 경안천로 5 (송정동,1층)','7687599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP713','돌봄동물병원','경기도-고양시 일산서구 하이파크2로 42 (덕이동)','031-911-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP714','고려동물병원','경기도-하남시 신평로168번길 56, K 빌딩 1층 103호 (신장동)','1577-9291',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP715','미사서울동물병원','경기도-하남시 미사강변남로 45, 골든브릿지 1동 211호 (망월동)','031-795-6060',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP716','서울대공원 동물병원','경기도-과천시 대공원광장로 102, 서울대공원 (막계동)','02-500-7770',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP717','남양주동물병원','경기도-남양주시 경춘로 1281 (평내동)','592-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP718','이진수고양이병원','경기도-성남시 분당구 운중로243번길 3-6, 1층 (판교동)','726-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP719','삼성동물병원','경기도-안산시 단원구 원선로 57 (원곡동)','494-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP720','두리동물클리닉','경기도-수원시 팔달구 효원로 53 (매산로3가)','031-221-2410',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP721','통일로 동물병원','경기도-고양시 덕양구 통일로 730 (관산동)','070-7720-4934',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP722','아마존동물병원','경기도-화성시 봉담읍 와우로 89, 토마토오피스텔2 106호','613-3872',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP723','(주)에니멀클리닉컨설팅(출장진료전문병원)','경기도-용인시 기흥구 신갈로 85 (신갈동)','031-233-2836',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP724','광적동물병원','경기도-양주시 광적면 가래비길 39','031-836-3507',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP725','부영 동물병원','경기도-남양주시 다산중앙로123번길 22-8, 리더스퀘어 604호 (다산동)','031-565-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP726','Wiz-Pet 동물병원','경기도-고양시 일산동구 중앙로 1036 (백석동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP727','다사랑동물병원','경기도-안양시 동안구 시민대로 266, 103호 (관양동, 평촌샤르망오피스텔)','031-385-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP728','미사숲동물의료센터','경기도-하남시 미사강변대로 222, 2층 202호 (망월동, 미사중앙프라자)','031-791-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP729','성심동물병원','경기도-연천군 전곡읍 전곡역로 47','835-0815',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP730','라임동물병원','경기도-부천시 소사로 722 (원종동, 제이디 스카이빌)','676-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP731','호수동물병원','경기도-시흥시 목감남서로 9-19, 103호 (조남동)','031-403-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP732','위니펫동물병원','경기도-화성시 경기대로 1054 (진안동)','225-2513',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP733','사랑동물병원','경기도-하남시 하남대로 809, 1층 (신장동, 경림빌딩)','795-7523',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP734','쿨펫동물병원','경기도-안성시 중앙로 246, 3층 (석정동, 이마트)','031-677-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP735','장암종합동물병원','경기도-의정부시 동일로 468(신곡동)','843-1415',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP736','24시배곧스마트동물의료센터','경기도-시흥시 배곧3로 86, 센터프라자2 207, 208호 (배곧동)','031-432-1224',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP737','위즈펫동물병원 풍산점','경기도-고양시 일산동구 무궁화로 237 (풍동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP738','덕정동물의료센터','경기도-양주시 고암길 306-53, 덕정파크프라자 202, 203호 (덕정동)','031-857-7551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP739','테라리움동물병원','경기도-안양시 동안구 관평로 314 (관양동)','031-388-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP740','가야동물병원','경기도-부천시 부천로 69 (심곡동)','655-3500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP741','AtoZ동물병원','경기도-성남시 분당구 판교역로 145, 라스트리트2동 2층 213호 (백현동, 알파리움2단지)','031-8016-8206',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP742','수아동물병원','경기도-성남시 분당구 판교로 446, 108호 (이매동, 그린프라자)','031-708-3100',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP743','오아시스 정형외과 신경외과 동물병원','경기도-수원시 영통구 센트럴타운로 107, 204동 2-06,2-07,2-08,2-09호 (이의동, 광교푸르지오월드마크,월드스퀘어)','031-215-7474',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP744','세이브 동물병원','경기도-성남시 중원구 산성대로 336-3 (중앙동)','735-5995',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP500','서울동물병원','경기도-성남시 중원구 희망로 442 (금광동)','741-8119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP501','좋은동물병원(출장전문)','경기도-안성시 양성면 만세로 620','671-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP502','봉담우리애동물병원','경기도-화성시 봉담읍 동화새터길 5','031-293-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP503','노아동물병원','경기도-수원시 장안구 장안로 67 (영화동)','031-246-1254',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP504','해담동물병원','경기도-광명시 디지털로 13, 한국빌딩 1,2층 (철산동)','588-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP505','참동물병원','경기도-오산시 오산로 91-10 (갈곶동, 광성빌딩 101호)','031-374-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP506','애니펫동물병원','경기도-용인시 수지구 만현로 95, B102호 (상현동, 수지3차쌍용스윗닷홈상가)','031-266-8898',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP507','사랑동물병원','경기도-의정부시 금신로 317 (신곡동)','847-7335',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP508','산들동물병원','경기도-고양시 일산동구 고봉로 250 (중산동)','976-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP509','북문다솜동물병원','경기도-수원시 장안구 정조로921번길 3 (영화동)','031-251-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP510','이매 동물병원','경기도-성남시 분당구 성남대로779번길 17, 1층 (이매동, 포티스빌딩)','703-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP511','군포굿닥터동물병원','경기도-군포시 고산로 242, 1층 (당동)','031-391-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP512','필립동물병원','경기도-평택시 지산로 34 (지산동)','611-1766',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP513','하모니동물병원','경기도-부천시 신흥로 150, 위브더스테이트 (중동)','225-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP514','현대동물의료센터','경기도-의정부시 충의로 49 (용현동, 용운빌딩)','031-852-3119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP515','신동물메디컬센터','경기도-화성시 향남읍 행정서로2길 28-37','031-352-6633',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP516','365동물병원 분당점','경기도-성남시 분당구 미금일로90번길 32, 125호 (구미동)','718-0365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP517','쿨펫동물병원','경기도-여주시 세종로 151 (홍문동)','885-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP518','구리동물병원','경기도-구리시 검배로 36, 현주Ifriend빌딩 101호 (수택동)','031-557-9009',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP519','의정부종합동물병원','경기도-의정부시 시민로 154 (의정부동)','031-846-9600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP520','애니케어동물병원','경기도-구리시 벌말로 104 (토평동)','031-567-7589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP521','봄빛동물병원','경기도-고양시 일산동구 강송로87번길 8-10 (백석동)','031-912-9465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP522','아이유동물메디컬센터','경기도-성남시 수정구 위례광장로 5, 위례우남역아이파크 3층 301,302,317호 (창곡동)','604-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP523','함께하는 동물병원','경기도-용인시 기흥구 마북로 164, A동 1층 1,2호 (마북동, 테라스가든A빌딩)','031-275-6549',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP524','스마일양한방동물병원','경기도-파주시 금빛로 44, 203호 (금촌동, 마이프라자)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP525','소사프라임동물병원','경기도-부천시 소사로 184 (소사본동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP526','맑은숲동물병원','경기도-평택시 추담로 102 (이충동)','662-8222',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP527','참누리동물병원','경기도-시흥시 대은로 81, 102호, 201호 (대야동, 모비딕빌딩)','031-318-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP528','건국동물병원 (출장진료 전문)','경기도-평택시 청북읍 율북로 13','665-7763',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP529','분당파크뷰 동물병원','경기도-성남시 분당구 정자일로 248, 112호 (정자동, 파크뷰상가)','031-713-2111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP530','중산종합동물병원','경기도-고양시 일산서구 고봉로 299 (일산동)','031-976-8939',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP531','PMC','경기도-이천시 대월면 대월로 940','031-635-7620',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP532','일산시티 동물의료센터','경기도-고양시 일산동구 무궁화로 8-28, 삼성메르헨하우스 103호 (장항동)','031-932-0085',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP533','24시 아프리카동물병원','경기도-안산시 단원구 원포공원2로 35, 106호 (초지동,메가쇼핑)','486-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP534','THE힘찬동물병원','경기도-용인시 기흥구 동백죽전대로527번길 98-6, 1층 (중동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP535','주주동물병원','경기도-용인시 기흥구 구갈로 94 (구갈동, 주주동물병원)','031-284-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP536','로얄동물병원','경기도-양주시 고암길 58 (고암동)','031-857-7570',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP537','24시동물병원','경기도-용인시 기흥구 구갈로 53 (구갈동)','281-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP538','아름동물병원','경기도-성남시 분당구 성남대로779번길 52, 신흥코아 102호 (이매동)','706-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP539','조원 동물병원','경기도-수원시 장안구 조원로 78, 1층 (조원동)','031-244-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP540','분당에덴동물병원','경기도-광주시 오포읍 능평로 203','726-3336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP541','KRH동물병원','경기도-김포시 봉화로181번길 36, 삼환아파트 상가동 지하층 8호 (감정동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP542','한강동물병원','경기도-포천시 군내면 호국로 1628','031)536-8388',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP543','위더스동물병원','경기도-부천시 길주로 81, 모건시티 (상동)','666-7500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP544','정다운동물병원','경기도-시흥시 중심상가로 146, 105호 (정왕동, 한일프라자)','031-498-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP545','가평축산농협 동물병원','경기도-가평군 가평읍 가화로 55-17, 가평축산농협','031-582-4111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP546','한빛동물병원','경기도-화성시 남양읍 남양시장로 101','356-4311',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP547','위례나무동물병원','경기도-성남시 수정구 위례동로 147, 106호 (창곡동, 위례건아타워)','031-778-8738',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP548','어울림동물병원','경기도-용인시 수지구 신봉2로 115-46, 1층 (신봉동)','031-548-2911',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP549','행복동물병원','경기도-용인시 처인구 모현읍 백옥대로 2362, 왕산태권도학원','031-334-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP550','협동동물병원','경기도-화성시 봉담읍 삼천병마로 1314',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP551','정다운종합동물병원','경기도-용인시 수지구 수지로112번길 11, 1층 104호 (성복동)','031-272-1199',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP552','분당필동물병원','경기도-성남시 분당구 금곡로15번길 1 (구미동)','031-718-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP553','안중동물병원','경기도-평택시 청북읍 청북남로 253, 골드라인 106호','031-683-8764',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP554','이플동물병원','경기도-성남시 수정구 복정로 35 (복정동)','751-3985',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP555','PET25시동물병원','경기도-평택시 평택로 69 (평택동)','655-6941',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP556','곤지암동물병원','경기도-광주시 곤지암읍 곤지암로 70-14','031-769-5675',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP557','펫플러스 동물병원','경기도-성남시 분당구 느티로 16, 젤존타워1 117호 (정자동)','713-8391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP558','그레이동물의료센터','경기도-성남시 수정구 위례광장로 320, 214호 (창곡동, 아이에스센트럴타워)','753-0303',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP559','우랑동물병원(산업동물출장진료전문병원)','경기도-가평군 가평읍 중촌로 11',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP560','24시위드동물병원(정왕동동물의료센터)','경기도-시흥시 정왕대로 230, 1층 107호 (정왕동, 제일프라자)','031-488-8075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP561','포근한동물병원','경기도-고양시 덕양구 동세로 63, 103호 (삼송동, 강남프라자)','02-381-7963',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP311','하임동물의료센터','경기도-김포시 양도로19번길 17, 2층 201호 (풍무동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP312','보드미동물병원','경기도-구리시 갈매중앙로55번길 107 (갈매동)','031-572-7571',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP313','쥬시동물병원','경기도-안산시 단원구 광덕대로 145, 102호 (고잔동,강희그랜드빌)','410-9759',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP314','원흥동물의료센터','경기도-고양시 덕양구 도래울로 40, 201호 (도내동, 예승골드프라자)','031-966-3328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP315','순풍동물병원','경기도-수원시 권선구 정조로514번길 1, 1층 (세류동)','031-239-3303',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP316','사단법인 한국동물구조관리협회 동물병원','경기도-양주시 남면 감악산로 63-37','031-867-9119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP317','해밀동물병원','경기도-고양시 일산동구 고양대로 1139 (식사동)','319662777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP318','연은동물병원','경기도-부천시 역곡로490번길 5 (고강동)','678-0896',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP319','롯데마트 안성점 쿨펫','경기도-안성시 공도읍 서동대로 4478, 2층 (롯데마트)','031-618-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP320','풍동동물병원','경기도-고양시 일산동구 숲속마을로 48 (풍동, 신성프라자)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP321','강남동물병원','경기도-성남시 중원구 광명로 341 (금광동)','741-3012',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP322','우리펫동물병원','경기도-안산시 단원구 신길로 8, 1층 104-1호 (신길동)','493-3535',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP323','이스턴동물병원','경기도-안양시 동안구 달안로 61, 139호 (비산동, 샛별한양아파트)','031-386-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP324','누리동물병원','경기도-하남시 대청로 50-1, 상가동 1층 101호 (신장동, 백송한신아파트)','792-4904',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP325','평촌나무동물병원','경기도-안양시 동안구 흥안대로 458, 1층 103호 (평촌동, 평촌메가타운)','031-425-3403',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP326','시티종합동물병원','경기도-구리시 이문안로 15 (교문동)','031-555-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP327','팜펫동물병원','경기도-부천시 길주로 219, 드림빌딩 (중동)','321-7584',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP328','굿모닝펫 동물병원','경기도-성남시 분당구 정자일로 55, 108-110호 (금곡동, 분당두산위브아파트)','715-7119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP329','동물병원 돌봄','경기도-성남시 분당구 서판교로 160, 101호 (판교동, 스타식스밸리)','8016-5559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP330','정동물병원','경기도-성남시 중원구 희망로 375 (상대원동)','031-749-7557',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP331','삼송사랑 동물의료센터','경기도-고양시 덕양구 삼송로 92 (삼송동, 우영프라자 2층)','02-388-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP332','대학동물병원','경기도-안산시 상록구 예술광장1로 16, 109호 (월피동)','482-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP333','제일종합동물병원','경기도-김포시 양촌읍 양곡1로 13','981-1516',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP334','비엔동물전문의료센터','경기도-부천시 경인로 475, 정인빌딩 (괴안동)','032-345-7559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP335','수지동물의료원','경기도-용인시 수지구 수지로 77, 101호 (상현동, 힐프라자)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP336','광교호수 동물병원','경기도-용인시 수지구 광교마을로 91, 102,103호 (상현동)','312127515',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP337','예 동물병원','경기도-고양시 덕양구 도래울로 52 (도내동, 센터프라자 104호)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP338','햇빛 동물병원','경기도-부천시 평천로 718 (삼정동)','676-7584',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP339','래플즈 동물병원','경기도-구리시 동구릉로 120 (인창동)','031-563-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP340','24일산우리동물병원','경기도-고양시 일산서구 중앙로 1455 (주엽동, 대우시티프라자)','031-913-5550',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP341','리치펫동물병원','경기도-용인시 기흥구 동백중앙로 177 (중동, 동백씨엘뷰 오피스텔)','031-8005-9725',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP342','현대가축병원','경기도-가평군 가평읍 연인2길 19, 현대동물병원',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP343','한별피그크리닉','경기도-포천시 관인면 창동로 1841','315569008',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP344','햇살동물병원','경기도-하남시 신장로 176 (덕풍동)','793-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP345','금릉동물의료센터','경기도-파주시 금빛로 24-28, 우성메디피아 2층 201, 202호 (금촌동)','031-948-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP346','Dr.JK 동물병원','경기도-고양시 일산동구 무궁화로 17, 한라밀라트 A동 102호 (장항동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP347','죽전 쿨펫동물병원','경기도-용인시 수지구 포은대로 552, 3층 (죽전동, 이마트)','031-261-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP348','제일','경기도-이천시 영창로 181 (창전동)','031-633-9883',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP349','가나동물병원','경기도-부천시 경인로 72 (송내동)','6650075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP350','하임동물병원','경기도-용인시 수지구 포은대로 450 (풍덕천동)','031-898-4300',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP351','우성동물병원','경기도-안산시 상록구 장상3길 7-1, 우성동물병원 (장상동)','482-7536',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP352','고양동물병원','경기도-고양시 덕양구 혜음로 8 (고양동)','031-964-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP353','러브펫동물병원','경기도-동두천시 평화로2169번길 21 (송내동)','031-868-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP354','스마트동물병원','경기도-고양시 일산동구 호수로 678 (장항동)','031-913-8820',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP355','제일동물병원','경기도-남양주시 퇴계원면 경춘북로 513',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP356','동탄스케치동물병원','경기도-화성시 지산2길 12-20, 101호 (영천동)','031-373-6307',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP357','김재원 동물병원','경기도-용인시 처인구 원삼면 죽양대로 1982','031-322-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP358','유일동물병원','경기도-양평군 양평읍 미리내길 96','772-2727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP359','경서동물병원','경기도-고양시 덕양구 중앙로 136, 102호 (화전동)','02-3158-0733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP360','중앙동물병원','경기도-수원시 팔달구 팔달로 163-1 (화서동)','031-255-3735',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP361','죽전예담동물병원','경기도-용인시 수지구 대지로 58 (죽전동, 선진포리스트)','031-264-7502',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP362','가평가축병원','경기도-가평군 가평읍 오리나무길 27 (조은장여관)','582-2412',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP363','S동물병원','경기도-부천시 상동로 78 (상동, 상동 동양파라곤)','323225222',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP364','내품애동물병원','경기도-남양주시 와부읍 수레로 34-1','558-9119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP365','신일산동물병원','경기도-고양시 일산동구 강송로 180, 백마프라자 (마두동)','9046681',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP366','의왕동물병원','경기도-의왕시 경수대로 372 (오전동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP367','장우진동물병원','경기도-화성시 경기대로 990 (병점동, 화성 병점 에스케이 뷰)','238-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP368','더독','경기도-고양시 일산동구 고봉로278번길 16 (중산동)','031-977-0154',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP369','주영 「산업동물에 대한 출장진료를 전문으로 함」','경기도-이천시 장호원읍 서동대로8809번길 22-29',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP370','미사마이펫','경기도-하남시 미사강변한강로158번길 56, 1층 102호 (망월동)','031-795-7590',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP371','정자프라임동물병원','경기도-성남시 분당구 내정로 58, 스포라이프 스포츠센타 111호 (정자동)','715-8203',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP372','라임동물병원','경기도-파주시 순못길 21 (다율동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP373','굿모닝동물병원','경기도-평택시 현덕면 인광2길 58','031-683-1333',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP374','가능동물병원','경기도-의정부시 가능로 37 (가능동)','875-1476',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP375','해뜰동물병원','경기도-용인시 기흥구 보정로 117 (보정동, 리베로3)','031-889-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP376','현리동물병원','경기도-가평군 조종면 현창로 70 (현리동물병원)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP377','석수동물병원','경기도-안양시 만안구 연현로 109, 2동 104호 (석수동, 석수두산위브아파트 상가동)','031-473-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP378','초이종합동물병원','경기도-성남시 수정구 시민로 159 (신흥동)','758-7776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP379','중앙동물병원','경기도-안양시 만안구 안양로 258 (안양동)','031-444-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP380','청산동물병원','경기도-화성시 우정읍 3.1만세로 29','351-2332',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP381','더본 동물병원','경기도-부천시 중동로262번길 32, 우영프라자 (중동)','323262992',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP382','우성동물병원','경기도-성남시 분당구 돌마로 481, 분당우성프라자 (서현동)','707-1776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP383','탑케어동물의료원','경기도-고양시 덕양구 화신로272번길 5, 2,3층 (화정동)','1666-7501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP384','바른동물병원','경기도-의정부시 평화로 559-1 (의정부동, 명빌딩)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP385','고대영동물병원','경기도-안산시 상록구 예술광장1로 94, 1층동 102호 (성포동,정인프라자)','413-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP386','동주동물병원','경기도-안양시 동안구 경수대로 428 (호계동, 덕유파크 123호, 215호)','031-455-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP387','아프리카동물병원','경기도-안성시 공도읍 진사길 8','031-656-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP388','일죽종합동물병원','경기도-안성시 일죽면 금일로 428','674-6551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP389','현대동물병원','경기도-수원시 권선구 매송고색로 661-1 (고색동)','031-293-0285',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP390','가좌동물병원','경기도-고양시 일산서구 가좌3로 7-1 (가좌동, 마루프라자 나동 102.103호)','031-922-5777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP391','오남동물병원','경기도-남양주시 오남읍 진건오남로 865','031-575-7598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP392','나라동물병원','경기도-용인시 처인구 포곡읍 포곡로 90','338-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP393','고양 우리아이 동물병원','경기도-고양시 덕양구 혜음로 54, 1층 (고양동)','031-965-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP394','퀸즈동물병원','경기도-수원시 권선구 금곡로118번길 50, 1층 (금곡동)','031-292-1682',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP395','안창선동물병원','경기도-평택시 탄현로 276 (지산동)','665-0046',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP396','포천대신동물병원','경기도-포천시 중앙로 170 (신읍동)','031-536-7589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP397','조이동물병원','경기도-고양시 일산서구 경의로 844 (덕이동)','919-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP398','손수의과병원','경기도-화성시 향남읍 3.1만세로 1126',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP399','건국 종합 가축병원 (출장전문병원)','경기도-안성시 일죽면 송천길 75-0','031-676-7773',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP400','숲속동물병원','경기도-화성시 동탄공원로1길 27 (반송동)','031-8003-5999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP401','평택축협동물병원','경기도-평택시 안중읍 서해로 1146-20','031-683-3003',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP402','앞선동물병원','경기도-고양시 덕양구 신원로1길 48 (신원동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP403','신촌동물병원','경기도-의정부시 신흥로 357-1 (가능동)','877-0675(6)',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP404','고려동물병원 (출장전문동물병원)','경기도-안성시 보개면 양협길 29-67','031-674-4432',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP405','이모란동물병원','경기도-평택시 평택로 17, 1층 104호 (평택동, 롯데인벤스 스카이)','655-1101',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP406','미사늘봄동물병원','경기도-하남시 미사강변북로30번길 104, 1층 (망월동)','031-793-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP407','최재호 한방동물병원','경기도-성남시 중원구 둔촌대로63번길 11, 상가동 102호 (성남동, 성남여수엘에이치1단지)','031-722-2235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP408','탄현 동물병원','경기도-고양시 일산서구 일현로 131, 105호 (탄현동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP409','삼성동물병원','경기도-동두천시 행선로 55-1 (지행동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP410','맘동물병원','경기도-수원시 영통구 센트럴타운로 85, cb12호 (이의동, Summit place 광교)','031-548-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP411','한마음 동물의료센터','경기도-수원시 장안구 수성로 300, 1층 (영화동, 동광빌딩)','031-244-0117',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP412','로하스 동물병원','경기도-남양주시 와부읍 월문천로 33 (롯데마트내 3층)','577-7606',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP413','김대일동물병원','경기도-평택시 경기대로 1511 (지산동)','031-665-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP414','조이고양이병원X조이강아지병원','경기도-안산시 단원구 화랑로 107, c동 2-6-3호 (원곡동, 라성상가)','492-8555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP415','코리아동물병원','경기도-평택시 중앙로 141 (비전동)','656-0524',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP416','경기동물병원','경기도-가평군 청평면 청평중앙로 8, 경기동물병원',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP417','메타 동물의료센터','경기도-화성시 동탄문화센터로 75 (반송동, 서해더블루)','031-831-5508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP418','여주동물병원','경기도-여주시 강천면 강문로 590',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP419','서수원동물병원','경기도-화성시 봉담읍 진등1길 72','031-297-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP420','리버풀동물병원','경기도-파주시 중앙로 255 (금촌동, 금남빌딩)','031-945-7297',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP421','중부  「산업동물에 대한 출장진료를 전문으로 함」','경기도-이천시 남천로 63-1 (중리동)','031-634-3030',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP422','알로하 동물병원','경기도-성남시 분당구 동판교로177번길 25, 101,102,103호 (삼평동, 판교 호반 써밋 플레이스)','031-8017-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP423','이용철동물병원','경기도-고양시 일산서구 고양대로 688, 201호 (일산동)','975-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP424','통일동물병원','경기도-동두천시 중앙로 226 (생연동)','862-5151',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP425','신세계동물병원','경기도-부천시 경인로 232, 이테크 에비뉴스타 215호 (심곡본동)','326147588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP426','사랑종합동물병원','경기도-포천시 소흘읍 솔모루로 118','031-544-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP427','현대 동물병원','경기도-의왕시 모락로 16 (오전동)','429-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP428','소담동물병원','경기도-수원시 장안구 하률로 9 (천천동)','031-269-1121',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP429','거부기 동물병원','경기도-고양시 일산동구 무궁화로 11, 한라밀라트 B동 113호 (장항동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP430','파주유우진료소(산업동물에 대한 출장진료를 전문으로 함)','경기도-파주시 조리읍 봉천로 11','031-941-3030',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP431','에이스 동물병원','경기도-용인시 수지구 동천로 60, 1층 (동천동)','031-266-2900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP432','쿨펫동물병원','경기도-성남시 분당구 탄천상로151번길 20, 월드쇼핑,삼성SDA (구미동)','711-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP433','우리동물병원','경기도-포천시 중앙로 50 (신읍동)','031-536-0229',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP434','반월동물병원','경기도-안산시 상록구 건건로 117, 101,102호 (건건동)','407-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP435','늘솜동물병원','경기도-의왕시 포일로 59, 호성상가 1층 3,4호 (포일동)','031-423-4033',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP436','강 동물병원','경기도-용인시 처인구 백암면 백암로185번길 46',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT004','레스케이프 호텔','서울특별시-중구 퇴계로 67','02-789-3165',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT005','호텔 포코','서울특별시-성동구 성수이로 96','02-482-2463',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT006','서머셋팰리스 서울','서울특별시-종로구 율곡로2길 7','02-027-1511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT007','라이즈 오토그래프 컬렉션 바이 메리어트','서울특별시-마포구 130','02-782-8485',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT008','알로프트 서울 강남','서울특별시-강남구 영동대로 736','02-179-6331',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT028','지엘시티 호텔 인천공항점','인천광역시-중구 영종대로 196번길 19','032-688-8122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT029','오션 파크 나인','인천광역시-중구 영종진광장로 10','032-659-7439',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT030','오션 솔레뷰 호텔','인천광역시-영종진광장로 32','032-009-2933',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT031','트리하우스','인천광역시-공항로424번길60 1037호','032-363-1944',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT032','Happia2','인천광역시-서구 길주로 116','032-366-1513',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT033','쿠피하우스 #6','인천광역시-강화군 길상면 보리고개로 80-6','032-748-0857',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT052','거제아쿠아리우스 U동2023호','경상남도-거제 사등면 거제대로 5697-10','055-870-9104',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT053','거제자연 블루베리 가족펜션','경상남도-거제 장목면 외포리 1062','055-705-1885',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT054','거제 통통게스트하우스','경상남도-거제 문동4길 53','055-791-3241',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT055','섬마을 펜션','경상남도-거제 일운면 거제대로 1988-10 (일운면)','055-554-1290',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT056','외도 여행 펜션','경상남도-거제 일운면 와현로 60','055-090-3057',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT075','안나 하우스 밸리 펜션','경기도-가평군 가평읍 당목가일길 724','031-011-6108',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT001','수페리어 코지 홈 J','서울특별시-중구 칠패로 27','02-454-5680',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT002','프레이저 플레이스 센트럴 서울','서울특별시-중구 통일로 78','02-611-1653',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT076','코지하우스602','경기도-용인시 기흥구 용구대로 2360번길 15 1동 602호','031-503-1295',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT077','플랫폼시티 312','경기도-용인시 기흥구 용구대로2360번길 15','031-458-9501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT078','더 휴 라르고','경기도-용인시 수지구 고기로377번길 51-24','031-390-6708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT009','포시즌스 호텔 서울','서울특별시-종로구 새문안로 97','02-185-0293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT010','남산 포레스트 인 명동','서울특별시-중구 퇴계로14길 29','02-516-5052',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT011','다온 에이','서울특별시-마포구 양화로23길 16-6','02-108-9660',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT012','다온 씨','서울특별시-마포구 양화로23길 16-6','02-891-8487',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT013','오크우드 프리미어 코엑스 센터','서울특별시-강남구 테헤란로87길 46','02-644-8822',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT014','그랜드 머큐어 앰배서더 호텔 앤 레지던스 서울 용산','서울특별시-용산구 청파로 20길 83','02-049-3099',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT015','라이크유 게스트하우스','서울특별시-마포구 와우산로35길 53','02-308-4555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT016','주거사무겸용홈오피스','서울특별시-금천구 시흥대로152길 11-43','02-640-0576',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT017','류 게스트하우스 강남','서울특별시-강남구 논현로159길 22-2','02-377-6635',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT018','한스 하우스','서울특별시-종로구 체부동 155-1','02-872-9384',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT019','풀리 미니 호텔','서울특별시-종로구 종로18길 5','02-768-2489',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT022','호 홈텔','서울특별시-마포구 월드컵로10길 5-5','02-713-6861',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT023','유나의 하우스','서울특별시-마포구 동교로34길 20 101호','02-702-6505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT024','노엘스 게스트하우스','서울특별시-용산구 이태원 1동129-18','02-155-1046',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT026','호텔 휴 인천공항','인천광역시-중구 공항로424번길 60','032-352-5391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT027','오크우드 프리미어 인천','인천광역시-연수구 컨벤시아대로 165','032-083-5274',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT034','아르반 호텔','부산광역시-부산진구 중앙대로 691번길 32','051-917-0832',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT035','그랜드 조선 부산','부산광역시-해운대구 해운대해변로 292','051-977-9733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT036','마리나 레지던스 호텔','부산광역시-동구 243번길 1F, 73-5','051-909-1813',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT037','도담','부산광역시-해운대구 구남로41번길 27-1','051-708-7462',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT038','선셋 비지니스 호텔','부산광역시-해운대구 구남로 46','051-656-0044',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT039','더 펫텔 프리미엄 스위트','부산광역시-해운대구 해운대해변로197번길 12','051-393-6442',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT040','호텔 더 루아','부산광역시-연제구 월드컵대로111번길 6-10','051-344-2729',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT041','호텔 벨리아','부산광역시-해운대구 해운대해변로 298번길 29 A110','051-054-8651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT042','디 앤티크','부산광역시-동래구 아시아드대로184번길 35','051-169-9793',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT043','펜션 바다와','강원도-강릉 사천면 해안로 1081','033-495-6258',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT044','델루나 강릉','강원도-강릉 옥천로62번길 20 그리다 강릉 203호','033-015-3880',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT045','블루 마운틴','강원도-강릉 사천면 119','033-706-5183',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT046','곰돌이 푸의 다락방','강원도-강릉 옥천로62번길 20 501호','033-588-6334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT047','필크 하우스','강원도-강릉 옥천로62번길 20','033-213-1865',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT048','평창 라마다 호텔, 바이윈덤','강원도-평창 대관령면 107','033-851-8683',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT049','외도 펠리스 펜션','경상남도-거제 일운면 와현로 58','055-082-4754',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT050','Js 레지던스 호텔','경상남도-거제 경상남도 거제시 옥포로4길 20','055-981-8585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT051','씨사이드 펜션','경상남도-거제 사등면 1202-2','055-797-1185',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT059','거제 펜션형 파타야모텔','경상남도-거제 경상남도 거제시 남부면 해금강2길 1-1','055-876-0184',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT060','통영 예향펜션','경상남도-통영 산양읍 논아랫개길 134-48','055-903-7143',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT061','토방 황 펜션','경상북도-포항 남구 호미곶면 일출로 715','054-348-2446',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT062','르네상스 호텔 포항','경상북도-포항 남구 중흥로57번길 6','054-877-3144',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT063','포항 클라우드나인','경상북도-포항 북구 청하면 해안로1918번길 37-2','054-771-7246',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT064','펜션 바람이 불어오는곳','경상북도-경주 천북면 물천안길 26-40','054-187-2168',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT065','바나나 호텔','광주광역시-광산구 22-13','062-170-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT066','어반스테이 호텔','광주광역시-광산구 무진대로232번길 7','062-656-2795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT067','상무 모텔 광주','광주광역시-쌍촌동 982-7','062-015-7836',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT068','더휴식 월곶 이로호텔','경기도-시흥시 월곶중앙로70번안길 12','031-179-7640',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT069','골든플래닛호텔','경기도-이천시 애련정로 67-23','031-399-3853',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT070','넘버25 남양주별내점','경기도-남양주시 별내면 청학로92번길 137','031-639-9261',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT071','퍼시픽 호텔','경기도-평택시 중앙시장로 3','031-362-6618',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT072','호텔 조이','경기도-평택시 팽성읍 안정로45번길 11-6','031-297-3818',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT073','해돋이 펜션','경기도-화성시 서신면 해안길 90','031-530-4301',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT074','솔낭구 펜션','경기도-가평군 북면 백둔로560번길 17','031-092-5515',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP805','일산 클래식 동물병원','경기도-고양시 일산동구 중앙로 1124, 1층 (백석동, 이마트전용관)','031-902-1375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP806','WE 동물병원','경기도-수원시 장안구 파장로 109 (정자동)','031-269-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP807','한빛동물병원','경기도-안양시 동안구 흥안대로 113 (호계동)','031-429-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP808','포천동물병원','경기도-포천시 중앙로 170 (신읍동)','031-535-2978',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP809','이지훈동물병원','경기도-수원시 권선구 금호로 261 (구운동)','031-295-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP810','시흥동물병원','경기도-시흥시 호현로 40 (대야동)','031-313-7780',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP811','용문조아동물병원','경기도-양평군 용문면 다문중앙1길 3','031-771-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP812','부천24시SKY동물메디컬센터','경기도-부천시 길주로 234, 힐스테이트 중동 203동 2001, 2007호 (중동)','032-323-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP813','바우동물병원','경기도-안성시 공도읍 공도로 50','316570016',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP814','문산동물병원','경기도-파주시 문산읍 문향로 35','031-953-7570',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP815','가람동물병원','경기도-부천시 경인로 494, 조양프라자 (괴안동)','3431397',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP816','해피동물병원','경기도-용인시 기흥구 마북로 141, 104호 (마북동)','287-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP817','건국 동물병원','경기도-성남시 수정구 수정로 131, 109호 (태평동, 낙원스카이뷰)','031-721-4111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP818','위더스동물의료센터','경기도-오산시 수목원로 466, 성민리치프라자 201,202호 (금암동)','031-373-2975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP819','펫 파라다이스 동물병원','경기도-파주시 청암로17번길 17, 2층 17호 (목동동)','031-948-5806',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP820','홍익동물병원','경기도-화성시 우정읍 조암북로57번길 1, 2층','358-6151',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP821','하안동물병원','경기도-광명시 하안로 309, 세인빌딩 1층 105호 (하안동)','02-897-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP822','J AND C 동물병원','경기도-이천시 설성면 신암로 91','031-643-5545',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP823','조암동물병원','경기도-화성시 우정읍 3.1만세로 69-5, 201호 (조암프라자)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP824','서울동물병원','경기도-성남시 수정구 수정로 110, 1층 (수진동)','721-2423',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP825','수제가축병원','경기도-동두천시 중앙로217번길 8 (생연동)','031-861-2328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP826','판교 행복한 동물병원','경기도-성남시 분당구 동판교로 226, 204, 205, 206호 (삼평동, 봇들마을4단지아파트)','8017-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP827','제일동물병원','경기도-안양시 동안구 시민대로 187, 105호 (비산동, 안양건설타워)','031-388-1845',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP828','씨엘동물병원','경기도-안양시 동안구 동편로 6, 207호 (관양동, 스마트프라자)','031-425-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP829','자유로 동물병원','경기도-고양시 일산서구 대화로 120, 자유로프라자 (대화동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP830','꾸러기동물병원','경기도-과천시 별양상가2로 20, 124호 (별양동, 새서울쇼핑)','02-502-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP831','오입력','경기도-화성시 남양읍 남양로 839, 헤븐리2프라자 1층 110,111,112호','313696381',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP832','행복한동물병원','경기도-부천시 소향로13번길 14-16, 대맥프라자 (상동)','324-3004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP833','푸른동물병원','경기도-여주시 세종로 27-1, 푸른동물병원 (홍문동)','883-6363',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP834','안양비산동물병원','경기도-안양시 만안구 태평로52번길 37, 202호 (안양동, 링크오빌딩)','031-446-6575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP835','백석동물병원','경기도-양주시 백석읍 꿈나무로 163','031-879-7433',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP836','참사랑동물병원','경기도-남양주시 도농로 32, 306호 (도농동)','512-3200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP837','행복이있는동물병원','경기도-성남시 분당구 돌마로 79, 104호 (금곡동, 썬프라자)','714-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP838','강아지나라동물병원','경기도-남양주시 진접읍 장현로 112-1','574-5957',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP839','초원동물병원','경기도-고양시 일산서구 일산로 589, 현대프라자 (일산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP840','건국동물병원','경기도-구리시 이문안로 27 (교문동)','569-0277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP841','서울대동물종합병원','경기도-화성시 병점2로 9 (병점동)','238-7979',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP842','나은동물병원','경기도-수원시 장안구 월드컵로 425-2 (연무동)','031-241-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP843','페테리안동물병원','경기도-하남시 미사강변대로226번길 48, A+구산프라자 202호 (망월동)','031-791-0306',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP844','제일종합동물병원','경기도-용인시 기흥구 강남동로 15, 103호 (구갈동)','031-274-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP845','다솜동물병원','경기도-부천시 지봉로 116, 역곡시장 (역곡동)','032-351-3031',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP846','한빛 동물병원','경기도-수원시 장안구 만석로19번길 29 (천천동)','031-252-2119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP847','젠(Gen)동물병원','경기도-성남시 분당구 양현로 479, 2층 (야탑동)','031-752-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP848','하은동물병원','경기도-용인시 기흥구 민속촌로 43 (보라동)','031-286-8999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP849','로뎀종합동물병원','경기도-부천시 원미로 117 (원미동, 유림연립)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP850','우정동물병원','경기도-광주시 곤지암읍 대석동길 73','797-4755',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP851','24시해든동물메디컬센터','경기도-부천시 신흥로 190, 위브더스테이트 (중동)','327157579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP852','나은동물병원','경기도-파주시 새꽃로 207 (아동동, 나은동물병원)','031-944-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP853','효원동물병원','경기도-수원시 영통구 권선로 805, 1층 (매탄동, 김정문알로에)','031-238-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP854','토베스트 동물병원','경기도-고양시 일산동구 일산로441번길 15-19 (정발산동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP855','타임즈 동물의료센터','경기도-수원시 팔달구 경수대로 486, 1,2,3층 (인계동)','031-232-3500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP856','레오동물병원','경기도-수원시 장안구 정자천로 187 (정자동, 롯데프라자)','031-253-4313',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP857','닥터김 동물병원','경기도-수원시 영통구 봉영로 1623, 124호 (영통동, 드림피아빌딩)','031-203-8277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP858','아띠동물병원','경기도-김포시 김포한강4로 113, 1층 106호 (장기동, 신한프라자)','319856125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP859','중앙애견종합병원','경기도-김포시 돌문로 83-2 (사우동)','984-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP860','해마루동물병원','경기도-성남시 분당구 황새울로319번길 8-6 (서현동)','781-2992',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP861','해솔동물병원','경기도-화성시 동탄원천로 354-11, 106~107호 (능동)','8003-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP862','동탄중앙동물병원','경기도-화성시 동탄대로시범길 146, 201호 (청계동)','031-373-7524',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP863','이지 동물병원','경기도-시흥시 비둘기공원로 21 (대야동)','031-314-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP864','럭키동물병원','경기도-의정부시 평화로 238 (호원동)','031-875-1559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP865','Dr.dog동물의료센터','경기도-고양시 일산동구 일산로394번길 5-9 (정발산동)','031-932-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP866','용인도담동물병원','경기도-용인시 기흥구 평촌1로2번길 6 (동백동)','031-548-2526',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP867','트레벨동물병원','경기도-하남시 하남대로 763 (신장동)','795-7175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP868','마송동물병원','경기도-김포시 통진읍 조강로 36, 104호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP869','우리동물병원','경기도-김포시 월곶면 군하로 187, 101호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP870','기린동물병원','경기도-부천시 길주로 273, 신명타운 (중동)','323220506',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP871','송담동물병원','경기도-평택시 안중읍 안현로서8길 35-4 (101호)','031-686-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP872','이윤권양한방동물병원','경기도-안양시 만안구 안양로 355 (안양동)','031-469-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP873','금촌종합동물병원','경기도-파주시 아동로 11-1 (금촌동)','031-941-7777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP874','로뎀동물병원','경기도-파주시 문산읍 방촌로 1636 (로뎀동물병원)','031-952-7576',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP875','우리동물병원','경기도-오산시 경기대로 174, 다모아프라자 101,102호 (원동)','031-373-8486',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP876','양주동물병원','경기도-양주시 광적면 광적로 186','031-855-3113',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP877','제일동물병원','충청북도-청주시 상당구 석교동 245번지','043-256-3309',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP878','한국동물병원','충청북도-청주시 상당구 상당로 15-1 (남문로1가)','043-221-3815',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP879','우리동물병원','충청북도-청주시 상당구 중고개로 305 (금천동)','043-223-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP880','세림동물병원','충청북도-청주시 상당구 산성로116번길 25 상가동 101호 (용담동 부영아파트5단지)','043-286-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP881','도도동물병원','충청북도-청주시 상당구 월평로 151-1 (용암동)','043-294-8855',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP882','이즈동물병원','충청북도-청주시 상당구 용암북로 154 (용암동)','043-293-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP883','명성동물병원','충청북도-청주시 상당구 미원면 미원시내2길 39','043-283-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP884','청주랜드관리사업소','충청북도-청주시 상당구 명암로 171 (명암동)','043-201-4883',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP885','협성동물병원','충청북도-청주시 상당구 남일면 단재로 509','043-237-3319',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP886','24시청주 나음동물메디컬','충청북도-청주시 상당구 1순환로 1233','043-716-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP887','엘케이동물의료센터','충청북도-청주시 상당구 중고개로 191 (용암동)','043-288-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP888','가까운동물병원','충청북도-청주시 서원구 1순환로 1109 (분평동)','043-288-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP889','그린동물병원','충청북도-청주시 서원구  사직대로 255 (사직동)','043-275-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP890','한빛동물병원','충청북도-청주시 서원구 사직대로 147','043-277-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP891','와와동물병원','충청북도-청주시 서원구 사직대로 247-1 (사직동)','043-273-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP892','분평종합동물병원','충청북도-청주시 서원구 서원구 청남로 2013 (분평동)','043-288-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP893','수 동물병원','충청북도-청주시 서원구  모충로3번길 81 (개신동 한진아파트 상가 110호)','043-275-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP894','산남동물병원','충청북도-청주시 서원구  산남로 64 104호 (산남동앤젤변호사빌딩)','043-294-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP895','충북대학교 동물의료센터','충청북도-청주시 서원구 충대로 1 (개신동)','043-261-2602',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP896','에이스동물병원','충청북도-청주시 서원구  복대로 11 (개신동)','043-238-0055',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP897','세솔동물병원','충청북도-청주시 서원구 산남로 77 101호 (산남동)','043-294-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP898','고려동물메디컬센터','충청북도-청주시 서원구 사직대로 246 (사직동)','043-268-5677',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP899','청주24동물병원','충청북도-청주시 서원구  사직대로 256 (사직동)','043-267-4119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP900','강내동물병원','충청북도-청주시 흥덕구 강내면 가로수로540-1','043-233-2145',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP901','우리동물병원','충청북도-청주시 흥덕구 옥산면 옥산시내1길 29','043-260-1684',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP902','충북동물병원','충청북도-청주시 흥덕구 사직대로 18(복대동)','043-271-7348',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP903','블루동물종합병원','충청북도-청주시 흥덕구 풍산로 33번길4(가경동)','043-235-0094',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP904','서원동물병원','충청북도-청주시 흥덕구 가로수로 1358(복대동)','043-231-6972',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP905','도담이네동물병원','충청북도-청주시 흥덕구 풍년로 82(가경동)','043-236-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP906','행복한동물병원','충청북도-청주시 흥덕구 복대로 136(복대동)','043-233-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP907','캣앤독동물병원','충청북도-청주시 흥덕구 풍산로 59(가경동)','043-237-7852',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP908','새론동물병원','충청북도-청주시 흥덕구 1순환로 539(봉명동)','043-260-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP909','동물병원 이야기','충청북도-청주시 흥덕구 직지대로 622(봉명동)','043-904-2606',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP910','아인동물의료센터','충청북도-청주시 흥덕구 진재로 41(복대동 풍년빌딩)','043-232-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP911','㈜옵티팜','충청북도-청주시 흥덕구 오송읍 오송생명6로 63','043-249-7500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP912','강서동물병원','충청북도-청주시 흥덕구 비하로 64(비하동)','043-233-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP913','훈동물병원','충청북도-청주시 흥덕구 오송읍 연제길 97','043-238-9969',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP914','청주지웰동물병원','충청북도-청주시 흥덕구 대농로 70 104호(복대동 센트럴타워)','043-239-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP915','으뜸대동물병원','충청북도-청주시 흥덕구 오송읍 오송2길 8',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP916','청주시 반려동물보호센터','충청북도-청주시 흥덕구 강내면 서부로 411-55','043-231-0047',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP917','한샘동물병원','충청북도-청주시 흥덕구 2순환로 1261번길 4(가경동)','043-267-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP918','신동물병원','충청북도-청주시 흥덕구 오송읍 상정1길103-2',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP919','가경나음동물병원','충청북도-청주시 흥덕구 서현로90(가경동)','043-236-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP920','정동물병원','충청북도-청주시 청원구 충청대로 97 (율량동)','043-256-2551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP921','오창동물병원','충청북도-청주시 청원구 오창읍 장대리 294','043-217-2069',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP922','서울동물병원','충청북도-청주시 청원구 오창읍 장대리 294','043-217-9721',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP923','소망종합동물병원','충청북도-청주시 청원구 공항로 100-1 (율량동)','043-212-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP924','청주축협동물병원','충청북도-청주시 청원구 우암동 378-7','043-255-7284',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP925','정성환동물병원','충청북도-청주시 청원구 상당로 297 (내덕동)','043-216-8274',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP926','주주종합동물병원','충청북도-청주시 청원구 공항로 102 (율량동)','043-217-0078',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP927','충북낙농업협동조합','충청북도-청주시 청원구 북이면 장재2길 66-10','043-215-9336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP928','신흥동물병원(산업동물병원)','충청북도-청주시 청원구 내수읍 충청대로 424','043-212-9117',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP929','튼튼동물병원','충청북도-청주시 청원구 오창읍 각리 637번지 9호 대원칸타빌아파트 상가 101호','043-241-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP930','하나동물병원','충청북도-청주시 청원구 새터로 22-1 (내덕동)','043-223-5511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP931','웰니스동물병원','충청북도-청주시 청원구 오창읍 중심상업1로 8-11 (홈플러스 오창점)','043-283-7305',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP932','충북야생동물센터','충청북도-청주시 청원구 오창읍 양청4길 45','043-216-3328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP933','24시청주i동물병원','충청북도-청주시 청원구 충청대로 103 (율량동)','043-214-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP934','스타동물병원','충청북도-청주시 청원구 오창읍 양청택지로 119 (스튜디오)','043-211-9669',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP935','메인동물병원','충청북도-청주시 청원구 오창읍 중심상업1로 46-17','043-288-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP936','청주온누리동물메디컬센터','충청북도-청주시 청원구 1순환로 148 201호(율량동)','043-716-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP937','다나동물병원','충청북도-청주시 청원구 오창읍 양지리 82-1 101호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP938','오성동물병원','충청북도-청주시 청원구 오창읍 양청1길 21 보람타운','043-240-7654',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP939','새솔동물병원','충청북도-청주시 청원구 오창읍 오창시내5길 7',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP940','건국동물병원','충청북도-청주시 청원구 내수읍 마산5길 24-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP941','박동물병원','충청북도-충주시 연수로 6-5 (금릉동)','043-842-4579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP942','충주축협동물병원','충청북도-충주시 예성로 256 (교현동)','043-850-7555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP943','정종합동물병원','충청북도-충주시 지현천변1길 57 (지현동)','043-854-8054',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP944','현대동물병원','충청북도-충주시 번영대로 144 (연수동)','043-851-3040',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP945','가인동물병원','충청북도-충주시 계명대로 155 (연수동)','043-844-2223',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP946','보드미동물병원','충청북도-충주시 국원대로 108 (교현동)','043-843-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP947','열린동물병원','충청북도-충주시 금릉로 78 (교현동)','043-857-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP948','중앙동물의료센터','충청북도-충주시 국원대로 131 1층 (교현동)','043-852-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP949','문동물병원','충청북도-충주시 대소원면 용관길 16 1층',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP950','큰동물병원','충청북도-충주시 주덕읍 신덕로 1364-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP951','애플동물병원','충청북도-충주시 계명대로 15(하나빌딩 1층)','043-911-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP952','용산동물병원','충청북도-충주시 형설로 54-11','043-847-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP953','중원동물병원','충청북도-충주시 천변로 249(교현동)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP954','진주동물병원','충청북도-제천시 의림대로15길24','043-643-6100',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP955','제천종합동물병원','충청북도-제천시 의림대로155-2','043-652-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP956','한일동물병원','충청북도-제천시 의병대로55-3','043-643-3037',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP957','명진동물병원','충청북도-제천시 원뜰로34','043-645-8272',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP958','그레이스동물병원','충청북도-제천시 죽하로 51층(장락동)','043-652-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP959','나라동물병원','충청북도-제천시 의림대로 285 2층(청전동)','043-648-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP960','바로동물병원','충청북도-제천시 용두천로 114-8',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP961','하이응급동물병원','충청북도-제천시 의림대로 41 1층(영천동)','043-653-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP962','금강동물병원','충청북도-제천시 용두천로 73-13 2층',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP963','서울동물병원','충청북도-보은군 보은읍 보은로 90-1','043-544-2342',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP964','최상오동물병원','충청북도-보은군 보은읍 보은로 119-1','043-543-0753',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP965','한국동물병원','충청북도-보은군 보은읍 삼산남로 34','043-543-3514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP966','중앙동물병원','충청북도-보은군 마로면 관기송현로 106','043-543-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP967','송진우동물병원','충청북도-보은군 보은읍 삼산남로 43-1','043-543-5237',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP968','E-동물의료원','충청북도-보은군 마로면 관기송현로 95-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP969','보은옥천영동축협 동물병원','충청북도-보은군 보은읍 뱃들로 57','043-540-6399',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP970','옥천동물병원','충청북도-옥천군 옥천읍 삼금로 53','043-732-8844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP971','아름동물병원','충청북도-옥천군 옥천읍 삼양로 41-1','043-731-3935',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP972','청산동물병원','충청북도-옥천군 청산면 지전1길 10-1','043-732-8173',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP973','참좋은동물병원','충청북도-옥천군 옥천읍 금장로 23','043-733-1548',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP974','고려동물병원','충청북도-옥천군 옥천읍 문장로 81-8','043-733-3478',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP975','현대동물병원','충청북도-옥천군 옥천읍 성암2길 42-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP976','영동합동동물병원','충청북도-영동군 영동읍 영동천2길 5','043-742-2055',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP977','최종주동물병원','충청북도-영동군 영동읍 계산로 54','043-743-4797',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP978','백동물병원','충청북도-영동군 영동읍 계산로 27 (신화빌딩 1층)','043-744-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP979','우리동물병원','충청북도-증평군 증평읍 신동리 111번지','043-836-4020',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP980','증평동물병원','충청북도-증평군 증평읍 교동리 39번지','043-836-2246',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP981','우주동물병원','충청북도-증평군 증평읍 창동리 791번지','043-838-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP982','하나동물병원','충청북도-증평군 증평읍 증평로 100','043-838-4742',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP983','바론동물병원','충청북도-증평군 증평읍 송산로 8길 4-26',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP984','진천축산업협동조합 동물병원','충청북도-진천군 진천읍 중앙서로 53 (진천축협 본점)','043-533-8109',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP985','광혜원 동물병원','충청북도-진천군 광혜원면 장기2길 12-5','043-535-2380',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP986','진천 동물병원','충청북도-진천군 진천읍 문화6안길 14-1','043-533-7212',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP987','오수의과 동물병원','충청북도-진천군 진천읍 원덕로 342','043-534-1548',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP988','그린벨이콰인 동물병원','충청북도-진천군 진천읍 중앙동로 127-1','043-534-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP989','한마음 동물병원','충청북도-진천군 진천읍 신정리 386번지 4호',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP990','다솜 동물병원','충청북도-진천군 진천읍 중앙동로 33','043-533-0435',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP991','해피트리 동물병원','충청북도-진천군 덕산읍 시가로 24 109호 110호','043-537-1722',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP992','CM동물병원','충청북도-진천군 광혜원면 화랑2길 12-4 1층','043-533-8868',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP993','괴산증평축협동물병원','충청북도-괴산군 괴산군 괴산읍 읍내로2길 39 (괴산증평축협)','043-833-8870',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP994','김종하 동물병원','충청북도-괴산군 괴산군 괴산읍 읍내로2길 45','043-832-2174',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP995','목도 동물병원','충청북도-괴산군 괴산군 불정면 목도로3길 1','043-833-7137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP996','김동물병원','충청북도-괴산군 괴산군 사리면 문화2길 1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP997','수암동물병원','충청북도-괴산군 괴산군 괴산읍 임꺽정로 159',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP998','우원동물병원','충청북도-괴산군 괴산읍 남산1길 41-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP999','삼성가축병원','충청북도-음성군 삼성면 대성로 613','043-878-5316',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT003','호텔 카푸치노','서울특별시-강남구 봉은사로 155','02-685-6726',1);
REM INSERTING into LOCALCITYCODE
SET DEFINE OFF;
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'서울','11B10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'인천','11B20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','수원','11B20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','성남','11B20605');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','안양','11B20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','광명','11B10103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','과천','11B10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','평택','11B20606');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','오산','11B20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','의왕','11B20609');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','용인','11B20612');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','군포','11B20610');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','안성','11B20611');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','화성','11B20604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','양평','11B20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','구리','11B20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','남양주','11B20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','하남','11B20504');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','이천','11B20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','여주','11B20703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','광주','11B20702');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','의정부','11B20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','고양','11B20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','파주','11B20305');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','양주','11B20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','동두천','11B20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','연천','11B20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','포천','11B20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','가평','11B20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','강화','11B20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','김포','11B20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','시흥','11B20202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','부천','11B20204');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','안산','11B20203');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경기','백령도','11A00101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'부산','11H20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'울산','11H20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','김해','11H20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','양산','11H20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','창원','11H20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','밀양','11H20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','함안','11H20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','창녕','11H20604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','의령','11H20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','진주','11H20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','하동','11H20704');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','사천','11H20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','거창','11H20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','합천','11H20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','산청','11H20703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','함양','11H20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','통영','11H20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','거제','11H20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','고성','11H20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경남','남해','11H20405');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'대구','11H10701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','영천','11H10702');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','경산','11H10703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','청도','11H10704');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','칠곡','11H10705');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','김천','11H10601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','구미','11H10602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','군위','11H10603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','고령','11H10604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','성주','11H10605');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','안동','11H10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','의성','11H10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','청송','11H10503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','상주','11H10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','문경','11H10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','예천','11H10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','영주','11H10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','봉화','11H10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','영양','11H10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','울진','11H10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','영덕','11H10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','포항','11H10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','경주','11H10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','울릉도','1.1E102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('경북','독도','1.1E103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'광주','11F20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','나주','11F20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','장성','11F20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','담양','11F20504');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','화순','11F20505');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','영광','21F20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','함평','21F20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','목포','21F20801');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','무안','21F20804');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','영암','21F20802');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','진도','21F20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','신안','21F20803');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','흑산도','11F20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','순천','11F20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','광양','11F20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','구례','11F20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','곡성','11F20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','완도','11F20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','강진','11F20303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','장흥','11F20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','해남','11F20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','여수','11F20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','고흥','11F20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전남','보성','11F20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','전주','11F10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','익산','11F10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','군산','21F10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','정읍','11F10203');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','김제','21F10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','남원','11F10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','고창','21F10601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','무주','11F10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','부안','21F10602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','순창','11F10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','완주','11F10204');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','임실','11F10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','장수','11F10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('전북','진안','11F10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'대전','11C20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'세종','11C20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','공주','11C20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','논산','11C20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','계룡','11C20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','금산','11C20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','천안','11C20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','아산','11C20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','예산','11C20303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','서산','11C20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','태안','11C20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','당진','11C20103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','홍성','11C20104');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','보령','11C20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','서천','11C20202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','청양','11C20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충남','부여','11C20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','청주','11C10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','증평','11C10304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','괴산','11C10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','진천','11C10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','충주','11C10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','음성','11C10103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','제천','11C10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','단양','11C10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','보은','11C10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','옥천','11C10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','영동','11C10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('충북','추풍령','11C10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','철원','11D10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','화천','11D10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','인제','11D10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','양구','11D10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','춘천','11D10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','홍천','11D10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','원주','11D10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','횡성','11D10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','영월','11D10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','정선','11D10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','평창','11D10503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','대관령','11D20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','속초','11D20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','고성','11D20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','양양','11D20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','강릉','11D20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','동해','11D20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','삼척','11D20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('강원','태백','11D20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'제주','11G00201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','서귀포','11G00401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','성산','11G00101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','고산','11G00501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','성판악','11G00302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','이어도','11G00601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('제주','추자도','11G00800');
REM INSERTING into LOCALCODE
SET DEFINE OFF;
Insert into LOCALCODE (LOCAL,CODE) values ('서울, 인천, 경기도','11B00000');
Insert into LOCALCODE (LOCAL,CODE) values ('강원도 영서','11D10000');
Insert into LOCALCODE (LOCAL,CODE) values ('강원도 영동','11D20000');
Insert into LOCALCODE (LOCAL,CODE) values ('대전, 세종, 충청남도','11C20000');
Insert into LOCALCODE (LOCAL,CODE) values ('충청북도','11C10000');
Insert into LOCALCODE (LOCAL,CODE) values ('광주, 전라남도','11F20000');
Insert into LOCALCODE (LOCAL,CODE) values ('전라북도','11F10000');
Insert into LOCALCODE (LOCAL,CODE) values ('대구, 경상북도','11H10000');
Insert into LOCALCODE (LOCAL,CODE) values ('부산, 울산, 경상남도','11H20000');
Insert into LOCALCODE (LOCAL,CODE) values ('제주도','11G00000');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree3','aaaa1111','홍길동',to_date('2022-07-16 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','부산 해운대구 APEC로 17_d_ (우동)_48060',null,'CR005',1,1,'남');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('ICIAadmin','ICIAadmin','관리자',to_date('2022-09-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-5555-5555','admin@amuna.com',null,null,null,1,1,'여');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree','aaaa1111','홍길동',to_date('2022-07-29 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','인천 계양구 갈미길 18-3_3_ (갈현동)_21002',null,'CR004',1,1,'남');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree2','aaaa1111','홍길동',to_date('2022-07-05 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','preepree@naver.com','서울 성북구 아리랑로 3__ (동소문동6가)_02830','15a70cef-d0c6-44b7-98bc-400bc87462f6_adminforest.jpg','CR003',1,1,'남');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('inchun1','aaaa1111','홍길동',to_date('2022-07-28 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','인천 남동구 간석로 1_ㅇ_ (간석동)_21510',null,'CR004',1,1,'여');
REM INSERTING into ORDERINFO
SET DEFINE OFF;
REM INSERTING into PAY
SET DEFINE OFF;
REM INSERTING into RECOMMENT
SET DEFINE OFF;
REM INSERTING into REPORT
SET DEFINE OFF;
REM INSERTING into WALKBOARD
SET DEFINE OFF;
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW003','preepree',to_date('2022-08-01 10:45:54','YYYY-MM-DD HH24:MI:SS'),'ㅠㅠㅠㅜ','<p>ㅠ푸퓨ㅜ퓨ㅜ</p>','CB001',6,5,1,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',5,0,1,'CR004','출발지: 인천 주안동26-44','2/온도: 30도/비올확률: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('WB001','preepree',to_date('2022-08-01 10:31:42','YYYY-MM-DD HH24:MI:SS'),'ㅇㅇㅇㅇ','ㅇㅇㅇㅇㅇㅇㅇㅇ',null,0,1,0,'["{\"La\":126.7315502730827,\"Ma\":37.550699461463736}","{\"La\":126.73224922052525,\"Ma\":37.55144887494435}"]','preepree',to_date('2022-08-02 16:30:00','YYYY-MM-DD HH24:MI:SS'),'----/1025/----',0,0,0,null,'출발지: 인천 계양구 임학동산9-1','2/온도: 29도/비올확률: 60%',5);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('WB002','preepree',to_date('2022-08-02 09:57:08','YYYY-MM-DD HH24:MI:SS'),'dfdsfdsf','dsfdsfsdfsdfsdfsdf',null,0,1,1,'["{\"La\":126.72599721520783,\"Ma\":37.549001843713604}","{\"La\":126.72757863492748,\"Ma\":37.54978936928118}"]','preepree',to_date('2022-08-03 03:30:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,null,'출발지: 인천 계양구 계산동산10-3','2/온도: 26도/비올확률: 60%',5);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW001','preepree',to_date('2022-07-31 22:57:28','YYYY-MM-DD HH24:MI:SS'),'크루 산책 후기 작성2','<p>gggggggggggggddddddddddddddddddd</p>','CB001',3,0,0,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','출발지: 인천 주안동26-44','2/온도: 30도/비올확률: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW002','preepree',to_date('2022-07-31 23:05:19','YYYY-MM-DD HH24:MI:SS'),'GGG','<p>GGGGGGGGGGGGGGGGGGGGGGGGG</p>','CB001',14,0,1,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',1,1,0,'CR004','출발지: 인천 주안동26-44','2/온도: 30도/비올확률: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CB001','preepree',to_date('2022-07-31 22:56:24','YYYY-MM-DD HH24:MI:SS'),'dsd','ddddddddddddddd',null,0,1,0,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','출발지: 인천 주안동26-44','2/온도: 30도/비올확률: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CB002','preepree',to_date('2022-07-31 22:58:11','YYYY-MM-DD HH24:MI:SS'),'sdf','sdfsdfsdfsfsdfdsf',null,0,1,2,'["{\"La\":126.67597772531448,\"Ma\":37.466235347708086}","{\"La\":126.67731848893938,\"Ma\":37.46725715495081}"]','preepree',to_date('2022-07-30 14:20:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','출발지: 인천 주안동26-105','2/온도: 30도/비올확률: 30%',14);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW004','preepree',to_date('2022-08-02 08:53:38','YYYY-MM-DD HH24:MI:SS'),'hㅗㅗ','<p>ㅗㅗㅗㅗㅗ</p>','CB001',9,1,2,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',1,0,0,'CR004','출발지: 인천 주안동26-44','2/온도: 30도/비올확률: 30%',20);
REM INSERTING into WEATHERXY
SET DEFINE OFF;
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','장흥군',59,64);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','강진군',57,63);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','해남군',54,61);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','영암군',56,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','무안군',52,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','함평군',52,72);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','영광군',52,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','장성군',57,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','완도군',57,56);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','진도군',48,59);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','신안군',50,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도',null,89,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','포항시남구',102,94);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','포항시북구',102,95);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','경주시',100,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','김천시',80,96);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','안동시',91,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','구미시',84,96);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','영주시',89,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','영천시',95,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','상주시',81,102);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','문경시',81,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','경산시',91,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','군위군',88,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','의성군',90,101);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','청송군',96,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','영양군',97,108);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','영덕군',102,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','청도군',91,86);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','고령군',83,87);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','성주군',83,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','칠곡군',85,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','예천군',86,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','봉화군',90,113);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','울진군',102,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상북도','울릉군',127,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도',null,91,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창원시의창구',90,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창원시성산구',91,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창원시마산합포구',89,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창원시마산회원구',89,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창원시진해구',91,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','진주시',81,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','통영시',87,68);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','사천시',80,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','김해시',95,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','밀양시',92,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','거제시',90,69);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','양산시',97,79);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','의령군',83,78);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','함안군',86,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','창녕군',87,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','고성군',85,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','남해군',77,68);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','하동군',74,73);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','산청군',76,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','함양군',74,82);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','거창군',77,86);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경상남도','합천군',81,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('제주특별자치도',null,52,38);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('제주특별자치도','제주시',53,38);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('제주특별자치도','서귀포시',52,33);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('이어도',null,28,8);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('이어도',null,28,8);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시',null,60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','종로구',60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','중구',60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','용산구',60,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','성동구',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','광진구',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','동대문구',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','중랑구',62,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','성북구',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','강북구',61,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','도봉구',61,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','노원구',61,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','은평구',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','서대문구',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','마포구',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','양천구',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','강서구',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','구로구',58,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','금천구',59,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','영등포구',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','동작구',59,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','관악구',59,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','서초구',61,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','강남구',61,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','송파구',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('서울특별시','강동구',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시',null,98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','중구',97,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','서구',97,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','동구',98,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','영도구',98,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','부산진구',97,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','동래구',98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','남구',98,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','북구',96,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','해운대구',99,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','사하구',96,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','금정구',98,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','강서구',96,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','연제구',98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','수영구',99,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','사상구',96,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('부산광역시','기장군',100,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시',null,89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','중구',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','동구',90,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','서구',88,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','남구',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','북구',89,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','수성구',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','달서구',88,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대구광역시','달성군',86,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시',null,55,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','중구',54,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','동구',54,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','미추홀구',54,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','연수구',55,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','남동구',56,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','부평구',55,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','계양구',56,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','서구',55,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','강화군',51,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('인천광역시','옹진군',54,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시',null,58,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시','동구',60,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시','서구',59,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시','남구',59,73);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시','북구',59,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('광주광역시','광산구',57,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시',null,67,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시','동구',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시','중구',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시','서구',67,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시','유성구',67,101);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('대전광역시','대덕구',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시',null,102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시','중구',102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시','남구',102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시','동구',104,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시','북구',103,85);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('울산광역시','울주군',101,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('세종특별자치시',null,66,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('세종특별자치시','세종특별자치시',66,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도',null,60,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','수원시장안구',60,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','수원시권선구',60,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','수원시팔달구',61,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','수원시영통구',61,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','성남시수정구',63,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','성남시중원구',63,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','성남시분당구',62,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','의정부시',61,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','안양시만안구',59,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','안양시동안구',59,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','부천시',56,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','광명시',58,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','평택시',62,114);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','동두천시',61,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','안산시상록구',58,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','안산시단원구',57,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','고양시덕양구',57,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','고양시일산동구',56,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','고양시일산서구',56,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','과천시',60,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','구리시',62,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','남양주시',64,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','오산시',62,118);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','시흥시',57,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','군포시',59,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','의왕시',60,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','하남시',64,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','용인시처인구',64,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','용인시기흥구',62,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','용인시수지구',62,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','파주시',56,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','이천시',68,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','안성시',65,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','김포시',55,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','화성시',57,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','광주시',65,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','양주시',61,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','포천시',64,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','여주시',71,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','연천군',61,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','가평군',69,133);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('경기도','양평군',69,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도',null,73,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','춘천시',73,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','원주시',76,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','강릉시',92,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','동해시',97,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','태백시',95,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','속초시',87,141);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','삼척시',98,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','홍천군',75,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','횡성군',77,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','영월군',86,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','평창군',84,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','정선군',89,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','철원군',65,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','화천군',72,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','양구군',77,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','인제군',80,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','고성군',85,145);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('강원도','양양군',88,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도',null,69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','청주시상당구',69,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','청주시서원구',69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','청주시흥덕구',67,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','청주시청원구',69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','충주시',76,114);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','제천시',81,118);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','보은군',73,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','옥천군',71,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','영동군',74,97);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','증평군',71,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','진천군',68,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','괴산군',74,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','음성군',72,113);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청북도','단양군',84,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도',null,68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','천안시동남구',63,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','천안시서북구',63,112);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','공주시',63,102);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','보령시',54,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','아산시',60,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','서산시',51,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','논산시',62,97);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','계룡시',65,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','당진시',54,112);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','금산군',69,95);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','부여군',59,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','서천군',55,94);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','청양군',57,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','홍성군',55,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','예산군',58,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('충청남도','태안군',48,109);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도',null,63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','전주시완산구',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','전주시덕진구',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','군산시',56,92);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','익산시',60,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','정읍시',58,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','남원시',68,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','김제시',59,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','완주군',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','진안군',68,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','무주군',72,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','장수군',70,85);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','임실군',66,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','순창군',63,79);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','고창군',56,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라북도','부안군',56,87);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도',null,51,67);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','목포시',50,67);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','여수시',73,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','순천시',70,70);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','나주시',56,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','광양시',73,70);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','담양군',61,78);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','곡성군',66,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','구례군',69,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','고흥군',66,62);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','보성군',62,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('전라남도','화순군',61,72);
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "BOARD_CODE" PRIMARY KEY ("BOARD_CODE")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "PK_CHAT_ID_DATE" PRIMARY KEY ("CHAT_ID", "CHAT_DATE")
  USING INDEX  ENABLE
  ALTER TABLE "CHAT" MODIFY ("CHAT_CONTENT" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table COMMEND
--------------------------------------------------------

  ALTER TABLE "COMMEND" ADD CONSTRAINT "PK_CODE_ID" PRIMARY KEY ("CODE", "MEMBER_ID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table CREW
--------------------------------------------------------

  ALTER TABLE "CREW" ADD CONSTRAINT "PK_CREW_CODE" PRIMARY KEY ("CREW_CODE")
  USING INDEX  ENABLE
  ALTER TABLE "CREW" ADD CONSTRAINT "UK_CREW_NAME" UNIQUE ("CREW_NAME")
  USING INDEX  ENABLE
  ALTER TABLE "CREW" MODIFY ("CREW_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DOGINFO
--------------------------------------------------------

  ALTER TABLE "DOGINFO" ADD CONSTRAINT "PK_DOG_OWNER" PRIMARY KEY ("DOG_OWNER", "DOG_NAME")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table GOODS
--------------------------------------------------------

  ALTER TABLE "GOODS" MODIFY ("GOODS_NAME" NOT NULL ENABLE)
  ALTER TABLE "GOODS" MODIFY ("GOODS_TYPE" NOT NULL ENABLE)
  ALTER TABLE "GOODS" ADD CONSTRAINT "PK_GOODS_CODE" PRIMARY KEY ("GOODS_CODE")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table HO
--------------------------------------------------------

  ALTER TABLE "HO" ADD CONSTRAINT "PK_HO_CODE" PRIMARY KEY ("HO_CODE")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER_ID" PRIMARY KEY ("MEMBER_ID")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Constraints for Table RECOMMENT
--------------------------------------------------------

  ALTER TABLE "RECOMMENT" ADD CONSTRAINT "PK_RECOMMENT_CODE" PRIMARY KEY ("RECOMMENT_CODE")
  USING INDEX  ENABLE
--------------------------------------------------------
--  Ref Constraints for Table BASKET
--------------------------------------------------------

  ALTER TABLE "BASKET" ADD CONSTRAINT "FK_BASKET_ID" FOREIGN KEY ("BASKET_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
  ALTER TABLE "BASKET" ADD CONSTRAINT "FK_BASKET_GCODE" FOREIGN KEY ("BASKET_GCODE")
	  REFERENCES "GOODS" ("GOODS_CODE") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CHAT
--------------------------------------------------------

  ALTER TABLE "CHAT" ADD CONSTRAINT "FK_CHAT_CODE" FOREIGN KEY ("CHAT_CODE")
	  REFERENCES "CREW" ("CREW_CODE") ENABLE
  ALTER TABLE "CHAT" ADD CONSTRAINT "FK_CHAT_ID" FOREIGN KEY ("CHAT_ID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table CREW
--------------------------------------------------------

  ALTER TABLE "CREW" ADD CONSTRAINT "FK_CREW_MASTER" FOREIGN KEY ("CREW_MASTER")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table DOGINFO
--------------------------------------------------------

  ALTER TABLE "DOGINFO" ADD CONSTRAINT "FK_DOG_OWNER" FOREIGN KEY ("DOG_OWNER")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "FK_MEMBER_CREWCODE" FOREIGN KEY ("MEMBER_CREWCODE")
	  REFERENCES "CREW" ("CREW_CODE") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ORDERINFO
--------------------------------------------------------

  ALTER TABLE "ORDERINFO" ADD CONSTRAINT "FK_ORDER_MID" FOREIGN KEY ("ORDER_MID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
  ALTER TABLE "ORDERINFO" ADD CONSTRAINT "FK_ORDER_GCODE" FOREIGN KEY ("ORDER_GCODE")
	  REFERENCES "GOODS" ("GOODS_CODE") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "PAY" ADD CONSTRAINT "FK_PAY_MID" FOREIGN KEY ("PAY_MID")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WALKBOARD
--------------------------------------------------------

  ALTER TABLE "WALKBOARD" ADD CONSTRAINT "FK_WALK_WRITER" FOREIGN KEY ("WALK_WRITER")
	  REFERENCES "MEMBER" ("MEMBER_ID") ENABLE
