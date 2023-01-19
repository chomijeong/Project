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
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ﱺ',59,64);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ﱺ',59,64);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',57,63);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�س���',54,61);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ϱ�',56,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ȱ�',52,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','����',52,72);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',52,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�强��',57,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�ϵ���',57,56);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',48,59);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�žȱ�',50,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���',null,89,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���׽ó���',102,94);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���ֽ�',100,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',80,96);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','�ȵ���',91,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���̽�',84,96);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���ֽ�',89,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',95,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���ֽ�',81,102);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','�����',81,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','����',91,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',88,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','�Ǽ���',90,101);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û�۱�',96,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���籺',97,108);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',102,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û����',91,86);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��ɱ�',83,87);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���ֱ�',83,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','ĥ�',85,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',86,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��ȭ��',90,113);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',102,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','�︪��',127,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲',null,91,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','â������â��',90,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���ֽ�',81,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�뿵��',87,68);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','��õ��',80,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���ؽ�',95,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�о��',92,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','������',90,69);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','����',97,79);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�Ƿɱ�',83,78);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�Ծȱ�',86,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','â�籺',87,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','����',85,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���ر�',77,68);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�ϵ���',74,73);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','��û��',76,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�Ծ籺',74,82);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','��â��',77,86);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','��õ��',81,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����',null,52,38);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ֽ�',53,38);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','��������',52,33);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�̾',null,28,8);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�̾',null,28,8);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����',null,60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���α�',60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','�߱�',60,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','��걸',60,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���빮��',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','�߶���',62,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���ϱ�',61,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���ϱ�',61,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',61,129);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','�����',61,129);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','����',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���빮��',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',59,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','��õ��',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���α�',58,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','��õ��',59,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','��������',58,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���۱�',59,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���Ǳ�',59,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���ʱ�',61,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',61,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','���ı�',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����','������',62,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����',null,98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','�߱�',97,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','����',97,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','����',98,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',98,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','�λ�����',97,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','����',98,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','�ϱ�',96,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','�ؿ�뱸',99,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','���ϱ�',96,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',98,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',96,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',98,76);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','������',99,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','���',96,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�λ걤����','���屺',100,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������',null,89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','�߱�',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','����',90,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','����',88,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','����',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','�ϱ�',89,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','������',89,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','�޼���',88,90);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�뱸������','�޼���',86,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������',null,55,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','�߱�',54,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','����',54,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','����Ȧ��',54,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','������',55,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','������',56,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','����',55,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','��籸',56,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','����',55,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','��ȭ��',51,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��õ������','������',54,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����',null,58,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����','����',60,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����','����',59,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����','����',59,73);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����','�ϱ�',59,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���ֱ�����','���걸',57,74);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������',null,67,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������','����',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������','�߱�',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������','����',67,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������','������',67,101);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����������','�����',68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����',null,102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����','�߱�',102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����','����',102,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����','����',104,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����','�ϱ�',103,85);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��걤����','���ֱ�',101,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����ġ��',null,66,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����Ư����ġ��','����Ư����ġ��',66,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵',null,60,120);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��������ȱ�',60,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����ü�����',63,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����ν�',61,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�Ⱦ�ø��ȱ�',59,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��õ��',56,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����',58,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ý�',62,114);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','����õ��',61,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�Ȼ�û�ϱ�',58,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ô��籸',57,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��õ��',60,124);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','������',62,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����ֽ�',64,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����',62,118);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�����',57,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','������',59,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�ǿս�',60,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�ϳ���',64,126);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ν�ó�α�',64,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ֽ�',56,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��õ��',68,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','�ȼ���',65,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','������',55,128);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','ȭ����',57,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ֽ�',65,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ֽ�',61,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��õ��',64,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','���ֽ�',71,121);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','��õ��',61,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','����',69,133);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('��⵵','����',69,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������',null,73,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','��õ��',73,134);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','���ֽ�',76,122);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','������',92,131);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','���ؽ�',97,127);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','�¹��',95,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','���ʽ�',87,141);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','��ô��',98,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','ȫõ��',75,130);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','Ⱦ����',77,125);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','������',86,119);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','��â��',84,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','������',89,123);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','ö����',65,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','ȭõ��',72,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','�籸��',77,139);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','������',80,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','����',85,145);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('������','��籺',88,138);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���',null,69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û�ֽû�籸',69,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û�ֽü�����',69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û�ֽ������',67,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','û�ֽ�û����',69,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���ֽ�',76,114);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',81,118);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',73,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',71,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',74,97);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','����',71,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','��õ��',68,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','���걺',74,111);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','������',72,113);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('���','�ܾ籺',84,115);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲',null,68,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','õ�Ƚõ�����',63,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','õ�Ƚü��ϱ�',63,112);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���ֽ�',63,102);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���ɽ�',54,100);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�ƻ��',60,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�����',51,110);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','����',62,97);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','����',65,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','������',54,112);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�ݻ걺',69,95);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�ο���',59,99);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','��õ��',55,94);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','û�籺',57,103);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','ȫ����',55,106);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','���걺',58,107);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('�泲','�¾ȱ�',48,109);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����',null,63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ֽÿϻ걸',63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�����',56,92);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�ͻ��',60,91);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',58,83);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',68,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',59,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ֱ�',63,89);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ȱ�',68,88);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ֱ�',72,93);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�����',70,85);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�ӽǱ�',66,84);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','��â��',63,79);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','��â��',56,80);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�ξȱ�',56,87);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����',null,51,67);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',50,67);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',73,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','��õ��',70,70);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ֽ�',56,71);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','�����',73,70);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','��籺',61,78);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���',66,77);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ʱ�',69,75);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','���ﱺ',66,62);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','������',62,66);
Insert into ADDRXY (ADDR,DETAILADDR,X,Y) values ('����','ȭ����',61,72);
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
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR004','ũ��ũ��','inchun1',1,'��õ','0010/1025/2580','ũũ���� ����������',0,'b910969c-98da-432b-ac5e-9bcf88e39fb1_walkdog.PNG',20);
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR005','���ƾƾƾƾӾƾƾƾƾ�','preepree3',1,'�λ�','0010/1025/2580','��������������������',0,'6bb81f27-9368-4c08-ad67-f3b5ef1c969d_info.PNG',20);
Insert into CREW (CREW_CODE,CREW_NAME,CREW_MASTER,CREW_STATE,CREW_REGION,CREW_DOGWEIGHT,CREW_INTRODUCE,CREW_REPORT,CREW_PROFILE,CREW_MAXCOUNT) values ('CR003','�������� ���ýô�','preepree2',1,'����','0010/1025/2580','�����ٰ� �ƴϸ� ��������122',0,'6ecd75f3-decc-45b6-b0e2-00488e9ebfb4_click2.png',20);
REM INSERTING into DOGINFO
SET DEFINE OFF;
REM INSERTING into DOGTYPE
SET DEFINE OFF;
Insert into DOGTYPE (DOG_TYPE) values ('���Ĵٵ� Ǫ��');
Insert into DOGTYPE (DOG_TYPE) values ('�ù� �̴�');
Insert into DOGTYPE (DOG_TYPE) values ('�ú��̶� �㽺Ű');
Insert into DOGTYPE (DOG_TYPE) values ('����');
Insert into DOGTYPE (DOG_TYPE) values ('�Ƹ޸�ĭ ��ī ���ǴϿ�');
Insert into DOGTYPE (DOG_TYPE) values ('��ũ�� �׸���');
Insert into DOGTYPE (DOG_TYPE) values ('���� �ڱ�');
Insert into DOGTYPE (DOG_TYPE) values ('��Ż���� �׷����Ͽ��');
Insert into DOGTYPE (DOG_TYPE) values ('����Ͻ� ������');
Insert into DOGTYPE (DOG_TYPE) values ('������');
Insert into DOGTYPE (DOG_TYPE) values ('ġ�Ϳ�');
Insert into DOGTYPE (DOG_TYPE) values ('ī�ٸ��� ŷ���� ���Ĵ�');
Insert into DOGTYPE (DOG_TYPE) values ('��Ŀ ���дϾ�');
Insert into DOGTYPE (DOG_TYPE) values ('���� Ǫ��');
Insert into DOGTYPE (DOG_TYPE) values ('���ǿ�');
Insert into DOGTYPE (DOG_TYPE) values ('�۱�');
Insert into DOGTYPE (DOG_TYPE) values ('��Ű����');
Insert into DOGTYPE (DOG_TYPE) values ('���� �����ڱ�');
Insert into DOGTYPE (DOG_TYPE) values ('���޶�Ͼ�');
Insert into DOGTYPE (DOG_TYPE) values ('Ǫ��');
Insert into DOGTYPE (DOG_TYPE) values ('ǳ�갳');
Insert into DOGTYPE (DOG_TYPE) values ('����ġ �ҵ�');
Insert into DOGTYPE (DOG_TYPE) values ('�ͽ���');
Insert into DOGTYPE (DOG_TYPE) values ('��� ��Ʈ����');
Insert into DOGTYPE (DOG_TYPE) values ('�ڽ���Ʈ');
Insert into DOGTYPE (DOG_TYPE) values ('����� ��Ʈ����');
Insert into DOGTYPE (DOG_TYPE) values ('��Ƽ��');
Insert into DOGTYPE (DOG_TYPE) values ('�̴Ͼ�ó ��������');
Insert into DOGTYPE (DOG_TYPE) values ('�̴Ͼ�ó Ǫ��');
Insert into DOGTYPE (DOG_TYPE) values ('�̴Ͼ�ó �ɼ�');
Insert into DOGTYPE (DOG_TYPE) values ('���鸵�� �׸���');
Insert into DOGTYPE (DOG_TYPE) values ('���� �ݸ�');
Insert into DOGTYPE (DOG_TYPE) values ('������ �׸���');
Insert into DOGTYPE (DOG_TYPE) values ('���');
Insert into DOGTYPE (DOG_TYPE) values ('��� ������');
Insert into DOGTYPE (DOG_TYPE) values ('��𿹵�');
Insert into DOGTYPE (DOG_TYPE) values ('��Ʋ���� ����');
REM INSERTING into GOODS
SET DEFINE OFF;
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD001','üũ ���� 15mm',5500,100,'GW001',1,'https://shop-phinf.pstatic.net/20210809_276/1628489727939hdOFe_JPEG/35954359937043621_1617066099.jpg','õ/�к긯, ������ ����, �ٱ��� 15mm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD002','�ڵ� ������ S ��Ű���ο�',13000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_75/1627002693841oXzgh_JPEG/34467389946671522_1524775303.jpg','õ/�к긯, ������ ����, �ٱ��� 4m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD003','�ڵ� ������ M ������',14000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_1/1627002685886xWe79_JPEG/34467318009452292_1678609383.jpg','õ/�к긯, ������ ����, �ٱ��� 5m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD004','�ڵ� ������ M ������',14000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_152/16270026949636X1FU_JPEG/34467405094393913_1611788957.jpg','õ/�к긯, ������ ����, �ٱ��� 5m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD005','�ڵ� ������ S ��ī�̺��',13000,100,'GW001',1,'https://shop-phinf.pstatic.net/20210723_201/16270026932753HCdM_JPEG/34467389382058130_1499603778.jpg','õ/�к긯, ������ ����, �ٱ��� 4m');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD006','�ϳ׽� + ������ ��Ʈ ���� M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_107/1614064427417oqvvW_JPEG/15200315859950488_273513962.jpg','������ 12.5m / �����ѷ� 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD007','�ϳ׽� + ������ ��Ʈ ���� S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_107/1614064427417oqvvW_JPEG/15200315859950488_273513962.jpg','������ 12.5m / �����ѷ� 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD008','�ϳ׽� + ������ ��Ʈ �� M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20220616_79/1655358483883MKGJE_JPEG/56494318719434367_1464793105.jpg','������ 12.5m / �����ѷ� 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD009','�ϳ׽� + ������ ��Ʈ �� S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20220616_79/1655358483883MKGJE_JPEG/56494318719434367_1464793105.jpg','������ 12.5m / �����ѷ� 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD010','�ϳ׽� + ������ ��Ʈ ������ M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_136/1614064440565BGmqg_JPEG/15200329267937252_1207030943.jpg','������ 12.5m / �����ѷ� 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD011','�ϳ׽� + ������ ��Ʈ ������ S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_136/1614064440565BGmqg_JPEG/15200329267937252_1207030943.jpg','������ 12.5m / �����ѷ� 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD012','�ϳ׽� + ������ ��Ʈ �׸� M',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_240/1614064431914EGbgL_JPEG/15200320411243179_105039278.jpg','������ 12.5m / �����ѷ� 28~38cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD013','�ϳ׽� + ������ ��Ʈ �׸� S',11800,100,'GW002',1,'https://shop-phinf.pstatic.net/20210223_240/1614064431914EGbgL_JPEG/15200320411243179_105039278.jpg','������ 12.5m / �����ѷ� 22~32cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD014','�÷��� ��������',5000,100,'GW003',1,'https://shop-phinf.pstatic.net/20211224_190/1640328163801d3q05_JPEG/47792795771075654_1145079041.jpg','��/��, ���� 19cm/���� 80g');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD015','��ٹ� �����ũ',15900,100,'GW003',1,'https://shop-phinf.pstatic.net/20210818_289/1629253407443C3NfQ_JPEG/36718040553161731_2114346450.jpg','���������׸�, 38X30X7cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD016','���ؽ� �� 5ea',3000,100,'GW003',1,'https://shop-phinf.pstatic.net/20210830_219/16303018561445yluv_JPEG/37766552249327071_1754679179.jpg','��/�Ǹ���, ���� 5.3cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD017','������ �� 3ea',8500,100,'GW003',1,'https://shop-phinf.pstatic.net/20210624_202/16244907357149TLva_JPEG/31955368819062090_1521383801.jpg','��/�Ǹ���, ���� 5.1cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD018','�����̾ �����ũ 2ea',7900,100,'GW003',1,'https://shop-phinf.pstatic.net/20220620_203/1655720978246RpRrm_JPEG/63185610275770822_1333806258.jpg','�ռ�����, 4X11cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD019','����� �躯���� 90��',8000,100,'GW004',1,'https://shop-phinf.pstatic.net/20220530_63/1653890232407KHh3p_JPEG/61354928375340261_1599974182.jpg','����������, 23X33cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD020','�����Ƽ�� �躯���� 120��',12000,100,'GW004',1,'https://shop-phinf.pstatic.net/20220520_62/1653026032926peGmf_JPEG/60490743039777932_1115724941.jpg','����������, 28X37cm');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD021','��� ��Ƽ�� 80��',2500,100,'GW004',1,'https://shop-phinf.pstatic.net/20210624_284/1624490929087uBjRx_JPEG/31955639211234724_1966184705.jpg','�˷ο� ���⹰, ������, ��Ÿ�� E ����');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD022','�꺸Ʋ 360ml',17000,100,'GW004',1,'https://shop-phinf.pstatic.net/20210810_235/16285533275718oNe0_JPEG/36017852402821447_2114802220.jpg','�ö�ƽ, �޴�� ��Ʋ');
Insert into GOODS (GOODS_CODE,GOODS_NAME,GOODS_PRICE,GOODS_AMOUNT,GOODS_TYPE,GOODS_STATE,GOODS_IMAGE,GOODS_INTRODUCE) values ('GD023','���̽� �Ǹ��� ���� 1L',3500,100,'GW004',1,'https://shop-phinf.pstatic.net/20220621_105/16557713008602GWLa_JPEG/63235933953195259_1216695574.jpg','�Ǹ���, ���� 13cm');
REM INSERTING into HO
SET DEFINE OFF;
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP247','�����͵������� (����������������)','��⵵-�ȼ��� ��������� 162 (���絿)','031-676-3828',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP248','��ִϸ�ũ����','��⵵-���ν� ���ﱸ ������72���� 14-1, ���Ⱥ��� 8�� 02ȣ (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP249','������������','��⵵-����� �����߾ӷ� 87-1, 101ȣ (������)','031-404-8566',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP250','���̽���������','��⵵-������ ������ ������ 13, 2��',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP251','�׸���������','��⵵-������ ��ȱ� ����� 59, �׸��������� (���ڵ�)','031-241-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP252','�������յ�������(�������� ����)','��⵵-���ý� ����� 17, 108ȣ (���)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP253','���Ͻ� ��������','��⵵-������ ��������136���� 57, ����Ʈ ������ 2�� (��â��)','031-565-5275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP254','�ξ��굿������','��⵵-�����ν� ����� 171 (�����ε�)','879-4478(9)',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP255','�̱Էε�������','��⵵-�����ֽ� ȭ���� â���� 47','593-7751',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP256','���㵿������','��⵵-��õ�� ����� 131, �Ͻź��� (�ߵ�)','323297599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP257','�︯�������޵��ü���','��⵵-���� ���籸 �߾ӷ� 439 (��ŵ�)','031-978-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP258','�߾ӵ�������','��⵵-���ֽ� ����� 97, �߾ӵ������� (â��)','885-3347',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP259','����������','��⵵-�Ⱦ�� ���ȱ� �����27���� 7, 1�� 107,108ȣ (���絿)','031-426-8661',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP260','���ϵ�������','��⵵-���ν� ó�α� ��ϸ� ��Ϸ�201���� 24','332-4179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP261','�Ѽ���������','��⵵-���� ������ ��ŷ� 280, 104ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP262','�Ѽ־�躴��','��⵵-���ν� ó�α� ��ϸ� ���Ƿ�54���� 6, 2ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP263','�ε����� �����ǷἾ��','��⵵-���ֽ� ������ 166, 1,2�� ����ȣ (���۵�)','031-847-7720',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP264','���µ�������','��⵵-�Ȼ�� �ܿ��� ������ 114, �ְ������� 111,112ȣ (������)','031-362-5475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP265','ä�ø���������','��⵵-�����ν� ��η� 493, �������� 120, 121ȣ (�ζ���)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP266','�̷������ǷἾ�� ������','��⵵-������ ������ ������ 130, â������ 2�� (������)','031-757-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP267','����������','��⵵-������ ��ȱ� ��ȷ� 29, 103ȣ (��ȭ��)','070-4647-2999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP268','24�� ������ �����ǷἾ��','��⵵-����� ��������� 1, �»�WŸ�� 2�� 208,209,210ȣ (���ൿ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP269','�ʽ��� ��������','��⵵-ȭ���� �簨�� ��¹��̱� 7-10',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP270','24�� ���������ǷἾ��','��⵵-���� �ϻ굿�� �鸶�� 223, 103~4ȣ (���׵�, ���� ���߷���)','031-906-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP271','������ ��������','��⵵-ȭ���� ��ȸ� ����� 187',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP272','�츮��������','��⵵-�Ⱦ�� ���ȱ� ���� 18, ���̾�����ũ �󰡵� 205ȣ (��굿)','031-465-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP273','�¸�׵�������','��⵵-���ν� ó�α� ���õ�� 2 (����)','031-339-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP274','�ߵ���������','��⵵-��õ�� �ߵ��� 157 (�ߵ�)','655-6034',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP275','������������','��⵵-������ �д籸 �߾Ӱ�����31���� 42, ������ũ�ö��� 1�� 142ȣ (������)','707-3334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP276','�����굿������','��⵵-������ �д籸 ������� 165, 118ȣ (�ݰ)','031-714-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP277','�޵� ���� ��������','��⵵-�����ֽ� �ͺ��� ���Ƿ� 200, 1��',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP278','���ɵ�������','��⵵-�����ֽ� �ٻ��߾ӷ�82���� 49-3, �ٻ��������� F2-4-6 103ȣ (�ٻ굿)','591-1795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP279','��õ�����ǷἾ��','��⵵-��õ�� �̼���õ�� 1342 (������)','031-632-7510',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP280','�帲24 ��������','��⵵-���ν� ó�α� ���õ�� 46 (����)','031-335-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP281','�ߺε�������','��⵵-ȭ���� ��ź�� ���ϱ� 206',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP282','���̽������޵��ü���','��⵵-�����ν� ����� 102-1 (�����ε�)','031-875-8090',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP283','������������','��⵵-�����ν� ȸ��� 178 (��ϵ�)','031-876-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP284','�츮��������','��⵵-���ν� ���ﱸ �Ѻ���2��14���� 4-14 (����)','286-2275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP285','�� ��������','��⵵-����� ��������� 11, ���������� 202, 203, 204ȣ (���ൿ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP286','365��������������','��⵵-������ ������ ���ʵ��� 153, ������Ÿ�� 205ȣ (â�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP287','ưư��������','��⵵-����� �ȸ���� 69, �������� 101ȣ (�ȵ�)','031-372-8333',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP288','�̸��� �����޵��ü���','��⵵-���ν� ó�α� �ߺδ�� 1307 (���ϵ�)','031-334-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP289','�ǿ쵿������','��⵵-���ֽ� ������ ������ 73-14, 1�� 1ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP290','�ϳ��� ���ѹ� ��������','��⵵-������ �ʴ��16���� 75 (��⵿)','031-996-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP291','���ɾ���ǷἾ��','��⵵-���ý� �׹�3�� 139 (�׹鵿)','031-657-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP292','���� ��������','��⵵-������ ���뱸 ����� 120, ȿ������ 1�� (������)','031-206-7503',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP293','�˷��ϵ�������','��⵵-ȭ���� ����� ���̷� 255',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP294','��������������','��⵵-���ֽ� ��ҷ� 32, 107ȣ (�ߴ뵿)','031-761-1600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP295','�����ǰ� ��������','��⵵-�ȼ��� �׻�� �׻��ʱ��� 15',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP296','û�� �޻쵿������','��⵵-���ý� û���� ��û��2�� 33-2, 105,106ȣ','031-684-8779',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP297','�ŵ�������','��⵵-�Ⱦ�� ���ȱ� �峻��89���� 5 (�Ⱦ絿)','031-445-7505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP298','�¼�','��⵵-��õ�� �������� 325 (���굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP299','������ڵ�������','��⵵-����� �Լ۷� 15, ȭ�������� 104,105ȣ (���յ�)','031-434-0863',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP300','��ȭ���յ�������','��⵵-����� ���մ�� 64 (���յ�,�ް����θ�(108,109ȣ))','031-507-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP301','�ູ�ѵ�������','��⵵-�ȼ��� �߾ӷ�419���� 6 (����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP302','��������������','��⵵-���ֽ� ��ź�� ������ 345',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP303','�ʿ���������','��⵵-���� ������ ���� 100, 1��',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP304','���뵿������','��⵵-�ϳ��� ��û�� 33, ���뺣���ھ� 6�� 603ȣ (���嵿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP305','�϶������ǷἾ��','��⵵-�����ֽ� ����� 470, 1,2�� (�ٻ굿)','031-522-6767',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP306','24�� ����� �����ǷἾ��','��⵵-������ ��ȱ� õõ�� 100, �ó׸�Ÿ�� 104ȣ, 202ȣ (õõ��)','031-268-6575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP307','��Ʈ�����ǷἾ��','��⵵-������ ����2�� 49, ���ν�ŸS1 2�� 204,205ȣ (������)','031-985-8075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP308','���Ͻ��������� ��Ÿ�ʵ� ���','��⵵-���� ���籸 ����� 1955, ��Ÿ�ʵ� ��� 1�� 1100ȣ (���굿)','031-5173-1487',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP309','���ؾ��̵�������','��⵵-�ϳ��� �̻簭������ 91, ��������ũ �� 1�� 119,120ȣ (������)','031-994-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP310','����Ʈ ������ ��������','��⵵-���ý� ��ź���� 2 (���嵿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP116','�ٳ���������','���ֱ�����-���� �׺���� 42 (�󼺵�)','062-365-1491',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP117','Ǫ����������','���ֱ�����-���� ���Ϸ� 44 (���̵�)','062-375-1613',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP118','�����������','���ֱ�����-���� �󹫹��ַ� 90, 2�� (���̵�)','062-371-0122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP119','�������������','���ֱ�����-���� ��ȭ�� 240, 3�� (ǳ�ϵ�, �Ե���Ʈ)','062-653-7553',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP120','Dr.����������','���ֱ�����-���� ������4���� 58 (ȭ����)','062-236-0575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP121','���μ���������','���ֱ�����-���� ������4���� 88 (ȭ����)','062-372-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP122','���굿������','���ֱ�����-���� ��û�� 40, 4�� (ġ��, �Ե���Ʈ)','062-384-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP123','������������','���ֱ�����-���� �׺���� 135 (��õ��)','062-368-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP124','������������','���ֱ�����-���� �ϳ���� 672 (��õ��)','062-527-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP125','�� �����ܻ���','���ֱ�����-���� ��õ�� 110-1 (���̵�)','062-383-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP126','������� ��������','���ֱ�����-���� ǳ�ݷ�38���� 49-1 (ǳ�ϵ�)','062-655-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP127','����Ʈ��������','���ֱ�����-���� �󹫴�� 866 (���̵�)','062-375-5110',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP128','���絿������','���ֱ�����-���� ��ȭ�� 71 (��ȣ��)','062-384-5445',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP129','������ ��������','���ֱ�����-���� ġ��� 76, 102ȣ (ġ��)','062-381-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP130','��︲��������','���ֱ�����-���� ȸ��� 888 (ǳ�ϵ�)','062-362-2882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP131','���ϸ���������','���ֱ�����-���� �ſ�2�� 53, 12�� 127ȣ (�ſ���, ���ֻ���������뼾��)','062-382-8552',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP132','�ٸ���������','���ֱ�����-���� �ϳ���� 704 (��õ��, ��������)','062-523-5353',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP133','ȭ������������','���ֱ�����-���� ȭ���� 211','062-382-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP134','���ϵ�������','���ֱ�����-���� �󹫹��ַ�76���� 8-1, 1�� (���̵�)','062-371-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP135','���굿������','���ֱ�����-���� ������� 945-1 (��õ��)','062-447-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP136','�����굿������','���ֱ�����-���� ���������� 157, 101�� B102-2ȣ (���̵�)','062-381-3733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP137','���ֱ����� �߻�����������������','���ֱ�����-���� ������� 576 (���̵�)','062-613-6651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP138','����24�ý�ī�̵����޵��ü���','���ֱ�����-���� �󹫴�� 879, �οպ���(3, 4, 5��)','062-719-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP139','����Ʈ����̺���','���ֱ�����-���� �󹫴��868���� 2, 4�� (���̵�)','062-384-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP141','���뵿������','���ֱ�����-���� �󹫴�� 1045 (ȭ����)','062-373-5293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP142','��ȣ��������','���ֱ�����-���� ��ȭ�� 54 (��ȣ��)','062-383-7572',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP143','�ϳ��ε�������','���ֱ�����-���� ���߾ӷ� 62, 1�� (ġ��)','062-371-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP144','������������','���ֱ�����-���� ��õ�� 29 (��ȣ��)','062-382-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP145','�Ѱᵿ���ǷἾ��','���ֱ�����-���� ǳ�ϼ�ȯ��188���� 15 (ǳ�ϵ�)','062-652-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP146','�ٳ���������','���ֱ�����-���� �׺���� 42 (�󼺵�)','062-365-1491',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP147','Ǫ����������','���ֱ�����-���� ���Ϸ� 44 (���̵�)','062-375-1613',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP148','�����������','���ֱ�����-���� �󹫹��ַ� 90, 2�� (���̵�)','062-371-0122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP149','�������������','���ֱ�����-���� ��ȭ�� 240, 3�� (ǳ�ϵ�, �Ե���Ʈ)','062-653-7553',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP150','Dr.����������','���ֱ�����-���� ������4���� 58 (ȭ����)','062-236-0575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP151','���μ���������','���ֱ�����-���� ������4���� 88 (ȭ����)','062-372-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP152','���굿������','���ֱ�����-���� ��û�� 40, 4�� (ġ��, �Ե���Ʈ)','062-384-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP153','������������','���ֱ�����-���� �׺���� 135 (��õ��)','062-368-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP154','������������','���ֱ�����-���� �ϳ���� 672 (��õ��)','062-527-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP155','�� �����ܻ���','���ֱ�����-���� ��õ�� 110-1 (���̵�)','062-383-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP156','������� ��������','���ֱ�����-���� ǳ�ݷ�38���� 49-1 (ǳ�ϵ�)','062-655-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP157','����Ʈ��������','���ֱ�����-���� �󹫴�� 866 (���̵�)','062-375-5110',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP158','���絿������','���ֱ�����-���� ��ȭ�� 71 (��ȣ��)','062-384-5445',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP159','������ ��������','���ֱ�����-���� ġ��� 76, 102ȣ (ġ��)','062-381-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP160','��︲��������','���ֱ�����-���� ȸ��� 888 (ǳ�ϵ�)','062-362-2882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP161','���ϸ���������','���ֱ�����-���� �ſ�2�� 53, 12�� 127ȣ (�ſ���, ���ֻ���������뼾��)','062-382-7812',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP162','�ٸ���������','���ֱ�����-���� �ϳ���� 704 (��õ��, ��������)','062-523-5353',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP163','ȭ������������','���ֱ�����-���� ȭ���� 211','062-382-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP164','���ϵ�������','���ֱ�����-���� �󹫹��ַ�76���� 8-1, 1�� (���̵�)','062-371-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP165','���굿������','���ֱ�����-���� ������� 945-1 (��õ��)','062-447-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP166','�����굿������','���ֱ�����-���� ���������� 157, 101�� B102-2ȣ (���̵�)','062-381-3733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP167','���ֱ����� �߻�����������������','���ֱ�����-���� ������� 576 (���̵�)','062-613-6651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP168','����24�ý�ī�̵����޵��ü���','���ֱ�����-���� �󹫴�� 879, �οպ���(3, 4, 5��)','062-719-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP169','����Ʈ����̺���','���ֱ�����-���� �󹫴��868���� 2, 4�� (���̵�)','062-384-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP171','��������ິ��','��󳲵�-������ �������1�� 17 (�������)','055-681-2821',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP172','������������','��󳲵�-������ �����߾ӷ� 1830-1 (������)','055-636-8272',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP173','��Ƶ�������','��󳲵�-������ ������26�� 23 (������)','055-635-6004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP174','�𽺵�������','��󳲵�-������ �����߾ӷ� 1852 (������)','055-632-2365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP175','�����÷��� ��������','��󳲵�-������ ����� 12 (����)','055-680-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP176','���뵿���ǷἾ��','��󳲵�-������ ����� 5 (����)','055-636-3662',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP177','���׾�Ĺ ��������','��󳲵�-������ �ظ�� 45 (������)','055-637-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP178','24�� ������ �����޵��� ����','��󳲵�-������ ����õ�� 47 (������)','055-716-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP179','���������޵��ü���','��󳲵�-������ ������6�� 1, 2�� (������, Ÿ��������)','055-632-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP180','���ֵ�������','��󳲵�-������ ������� 3541 (���ֵ�)','055-681-0093',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP181','�󹮵�������','��󳲵�-������ �����߾ӷ� 1645 (�󵿵�)','055-633-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP199','���ֵ�������','������-õ��� 79(�ܰ赿)','033-743-8882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP200','������������','������-ġ�Ƿ� 1758(���)','033-742-7494',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP201','�������յ�������','������-������ 562(���)','033-763-9297',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP202','25�����յ�������','������-������ 625-6(�����)','033-764-0119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP203','�������ິ��','������-����� 37(�߾ӵ�)','033-745-7676',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP204','������������','������-������ ���ϱ� 7','033-735-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP205','�ξ����յ�������','������-������ 655(�����)','033-766-7230',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP206','���ϵ�������','������-����� 29(�߾ӵ�)','033-745-5125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP207','�������յ�������','������-�����㸮�� 60(�ܱ���)','033-766-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP208','��Ǫ���������պ���','������-�Ͽ��� 2241(�ܰ赿)','033-747-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP209','����������������','������-������ �ǵ�� 70','033-735-7359',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP210','�Ｚ���յ�������','������-����� 278(���嵿)','033-732-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP211','�ϻ����յ�������','������-���Ƿ� 134(�ϻ굿)','033-742-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP212','�������յ�������','������-������� 408(�ܱ���)','033-761-0167',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP213','�׸���������','������-�౸�� 57(���)','033-762-9882',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP214','������������','������-��������� 8-10(���ǵ�)','033-743-6466',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP215','���� ��������','������-������ ��������1�� 82','033-745-8789',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP216','������ ��������','������-��ȭ�� 2(�ܰ赿)','033-742-8475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP217','�ູ�� ��������','������-������� 62-4(������)','033-764-7522',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP218','�������Ͱ����','������-���Ϸ� 177(�м���)','033-745-6680',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP219','�ູ�帲 ��������','������-õ��� 23-17(�ܰ赿)','033-764-7519',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP182','�츮�鵿������','��󳲵�-������ ������ 107 (������)','055-635-7682',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP183','�츮��������','���ϵ�-��õ�� ����4�� 41-1 (�ϻ굿)','054-331-2848',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP184','�� ���ǰ�����','���ϵ�-��õ�� ������ 25 (������)','054-334-1377',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP185','���ϰ��ິ��','���ϵ�-��õ�� �ϻ�� 38-1 (�ϻ굿)','054-334-3313',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP186','�Ѽֵ�������','���ϵ�-��õ�� ��ȿ�� 56-1 (���ܵ�)','054-331-0137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP187','��õ������������','���ϵ�-��õ�� ȣ���� 17 (���ܵ�)','054-332-8598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP188','����ɰ��ິ��','���ϵ�-��õ�� �ϻ�� 4-25 (�ϻ굿)','054-334-3157',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP189','����ǰ�����','���ϵ�-��õ�� ȣ���� 28 (�߻絿)','054-333-1589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP190','�̷����յ�������','���ϵ�-��õ�� ��ȣ�� ��ȣ�� 118','054-335-6708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP191','��õ��������','���ϵ�-��õ�� �ֹ����� 315 (������ ��������)','054-333-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP192','��� ��������','���ϵ�-��õ�� ����� 58 (ȭ�浿)','054-331-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP193','��ε�������','���ϵ�-��õ�� ��â�� 11 (������) 1��','054-336-6179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP194','������������','���ϵ�-��õ�� ȣ���� 15 (���ܵ�)','054-333-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP195','��������������','���ϵ�-��õ�� ��ȣ�� ����� 31','054-332-2654',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP196','������������(����������������)','���ϵ�-��õ�� �ֹ����� 233 (������)','054-332-4514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP197','�Ȱ���������(������������)','���ϵ�-��õ�� ��ȣ�� ������� 6  1��','054-332-4215',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP198','������������','���ϵ�-��õ�� �Ͼȸ� �������� 84 ��������Ʈ 2�� 2�� 2ȣ','054-333-4215',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP001','�̼��ǰ��ǿ�','����Ư����-��걸 �ľϷ� 13-2 (�ľϵ�)','02-754-4978',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP002','���굿������','����Ư����-��걸 �ľϷ� 51, ����1�� (�ľϵ�)','02-778-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP003','ȿâ��������','����Ư����-��걸 ����� 293 (ȿâ��)','02-711-4527',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP004','21���⵿������','����Ư����-��걸 ������ 46 (������, ��ȣ���� 202ȣ,203ȣ(2��))','02-749-6750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP005','�ѳ���������','����Ư����-��걸 ������24�� 28 (�ѳ���)','02-793-9230',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP006','�����������պ���','����Ư����-��걸 ��ȿ�� 171 (��ȿ��2��)','02-3273-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP007','��ȿ���յ�������','����Ư����-��걸 ��ȿ�� 187 (��ȿ��2��)','02-719-7070',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP008','�ѻ����������','����Ư����-��걸 ����� 36-1 (��굿2��)','02-749-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP009','ûȭ���յ�������','����Ư����-��걸 ������ 90 (���¿���,�±����� 1��)','02-792-7602',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP010','�����̵�������','����Ư����-��걸 ������ 32 (�ѳ���)','02-795-2184',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP011','�ݰ���������','����Ư����-��걸 ���̷� 303, 21�� 112ȣ (���̵�,�������Ʈ)','02-798-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP012','��µ�������','����Ư����-��걸 ȸ������13�� 6 (���¿���)','02-792-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP013','������ī��������','����Ư����-��걸 �ľϷ� 32, ����1�� (�ľϵ�)','02-773-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP014','��Ŭ�嵿������','����Ư����-��걸 ����� 341 (��ȿ��1��,��1���� ��þ�þ�A�� 106ȣ(����1��))','02-713-0053',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP015','�굿������','����Ư����-��걸 ����� 285 (ȿâ��,(����1��))','02-3275-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP016','(��)�̻�����������','����Ư����-��걸 ���̷� 248, 31�� 105,205ȣ (���̵�, �Ѱ��Ǽ�)','02-792-5455',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP017','��������������','����Ư����-��걸 ȿâ���� 14 (��õ��)','02-706-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP018','�����굿������','����Ư����-��걸 �Ѱ����23�� 55, 5�� (�Ѱ���3��, ������ũ�� �мǰ�)','02-2012-3875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP019','�޷���������','����Ư����-��걸 �ѳ����20�� 7, ����1,2�� (�ѳ���)','02-794-1255',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP020','������������','����Ư����-��걸 ������ 22-1 (������)','02-790-9808',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP021','��Ʈ��������','����Ư����-��걸 ��ȿ�� 51, 114ȣ (��õ��)','02-707-2235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP022','���¿���������','����Ư����-��걸 ������� 210, 1,2�� (���¿���)','02-749-4945',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP023','�������� ����','����Ư����-��걸 ������ 41 (�ѳ���, 2��)','02-797-4408',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP024','�۽���������','����Ư����-��걸 ����� 54, 106ȣ (��굿2��)','02-790-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP025','�꼼�� ��������','����Ư����-��걸 �Ѱ����23�� 55 (�Ѱ���3��, �̸�Ʈ ����2�� ��)','02-2012-1256',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP026','���Ƽ��ϴ� ��������','����Ư����-��걸 ����� 341, B�� 113,114ȣ (���赿)','02-703-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP027','�ٴٵ�������(Bada Animal HO)','����Ư����-��걸 ������� 67, ����1�� ��21ȣ (��굿5��, ��ũŸ��)','02-792-2561',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP028','24�� ���������޵��ü���','����Ư����-��걸 ���̷�64�� 24, 1�� 101ȣ (���̵�)','02-793-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP029','���̵�������','����Ư����-��걸 ���̷� 248, 11�� 102ȣ (���̵�, �Ѱ��Ǽ�)','02-749-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP030','���� ��������','��õ������-���� ������ 346 (������)','032-575-0833',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP031','���� �������պ���','��õ������-���� ������ 295 (������)','032-576-5726',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP032','���� ��������','��õ������-���� Ź����74���� 16 (�ɰ)','032-561-4667',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP033','���� ��������','��õ������-���� ������ 222 (�ݰ)','032-565-7915',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP034','�츮 ��������','��õ������-���� ������ 349 (����)','032-566-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP035','���� ��������','��õ������-���� ���з� 245, 1�� (�ɰ)','032-566-0038',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP036','���� ��������','��õ������-���� ������ 852, 204ȣ (���ϵ�, â��������)','032-566-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP037','ȭ��Ʈ ��������','��õ������-���� ������ 866 (������, ��������)','032-561-7592',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP038','�¸�� ��������','��õ������-���� ������ 246, 203ȣ (������)','032-583-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP039','�� ��������','��õ������-���� ������ 70 (������, ����ž��������Ʈ ��)','032-563-1575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP040','���� ��������','��õ������-���� ������ 78, 202ȣ (���µ�, ���������μ�Ÿ)','032-584-8254',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP041','���� ��������','��õ������-���� ������ 581 (������, �Ե���Ʈ)','032-561-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP042','���� ��������','��õ������-���� ������ 754 (���ϵ�, ���� �̸�Ʈ)','032-565-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP043','�˾� ��������','��õ������-���� ���з� 512 (�˾ϵ�)','032-563-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP044','û������ ��������','��õ������-���� û��Ŀ���� 252, c�� 118~119ȣ (�漭��)','032-583-0365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP045','û����� ��������','��õ������-���� û����ӷ� 102, 102~104ȣ (����)','032-563-1900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP046','������ ��������','��õ������-���� ������ 853, 102~103ȣ (���絿, ����������)','032-561-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP047','���� ��������','��õ������-���� ������ 103 (���µ�)','032-579-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP048','û��ȣ�� �����޵��ü���','��õ������-���� Ǫ����7���� 2 (�漭��)','032-568-0022',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP049','�´��� ��������','��õ������-���� ������ 182 (������)','032-567-2575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP050','���̷� ��������','��õ������-���� ������ 664, 102ȣ (���ϵ�, â��������)','032-564-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP051','û�� ��� ��������','��õ������-���� û�����134���� 6-4 (�漭��)','032-568-0922',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP052','�˴����� ��������','��õ������-���� ������7���� 1, 1�� (������, �Ѹ�����)','032-563-8579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP053','�� ��������','��õ������-���� ������ 375, 201ȣ (������, �ݰ��ƹ̿�)','032-578-5119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP054','���̷����� �������� ��õû����','��õ������-���� �ߺ���� 587, ���� 1�� (�漭��, Ȩ�÷��� ��õû����)','032-565-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP055','J ��������','��õ������-���� û��Ŀ���� 270, 107ȣ (�漭��)','032-566-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP056',' ������ ���ϴ� ��������','��õ������-���� ũ����Ż��102���� 22, 101~102ȣ (û��)','032-713-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP057','���� ��������(������)','��õ������-���� ������151���� 11 (���µ�)','032-576-0045',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP058','�Ͼ�⸰ ��������','��õ������-���� û����ӷ� 40, 103ȣ (����, û����Ŭ���� Ŀ������)','032-564-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP059','û����� ��������','��õ������-���� �ߺ����586���� 22, 128~131ȣ (����, û�� ǳ�� ������Ÿ��)','032-563-0094',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP060','������ ��������','��õ������-���� ������� 119, 202ȣ (���µ�, ��õ���µλ�����Ʈ������ 2����)','032-574-5757',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP061','�Ｚ���� ��������','��õ������-���� ������ 269 (������)','032-584-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP062','������� ��������','��õ������-���� ����� 468, 103ȣ (������, �帲Ÿ��)','032-564-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP063','�ɲ� �����޵��ü���','��õ������-���� û�߷�478���ȱ� 4, 2�� (������)','032-565-2943',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP064','������ ��������','��õ������-���� ������ 295 (������)','032-572-7475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP065','24�� ������ �����ǷἾ��','��õ������-���� û��Ŀ����260���� 27, 236~239ȣ (û��, û���ѽŴ���Ŀ������)','032-565-8270',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP066','�����ɾ� ��������','��õ������-���� û�󿡸޶����102���� 10, 103~105ȣ (û��, û��ġ�Ƴ�)','032-564-7600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP067','BS������������','�λ걤����-�ؿ�뱸 ���ݼ۷� 73 (�ݼ۵�)','051-544-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP068','������������','�λ걤����-�ؿ�뱸 ��ݷ� 148, 32ȣ (��۵�)','051-784-7844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP069','���ؿ� �����ǷἾ��','�λ걤����-�ؿ�뱸 �ؿ��� 580, 4�� (�쵿)','051-704-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP070','������������','�λ걤����-�ؿ�뱸 ����2��13���� 46 (������)','051-701-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP071','������ ��������','�λ걤����-�ؿ�뱸 �µ���ȯ��402���� 8, 204ȣ (�µ�, �Ƿ�ü���ǽ���)','051-731-7530',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP072','�޸��� ȣ�γ� ��������','�λ걤����-�ؿ�뱸 �޸��̱�65���� 33, �󰡵� 3�� 305ȣ (�ߵ�, �ؿ�� �޸��� ���� �븣���̽�)','051-746-7077',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP073','���� ��������','�λ걤����-�ؿ�뱸 ����2�� 33, ���Һ��� 107ȣ (�쵿)','051-751-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP074','�������յ�������','�λ걤����-�ؿ�뱸 �����߾ӷ� 145, 202ȣ (��۵�, ������ũ��2��)','051-742-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP075','��������������','�λ걤����-�ؿ�뱸 �ؿ��� 814, �������������� A�� 301ȣ (�µ�)','051-701-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP076','���� ��������','�λ걤����-�ؿ�뱸 �޸��̱� 58, 2�� (�ߵ�)','051-747-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP077','������������','�λ걤����-�ؿ�뱸 �ؿ��� 794, ������ 306ȣ (�µ�)','051-702-5750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP078','������Ƽ ���յ�������','�λ걤����-�ؿ�뱸 ������Ƽ3�� 23, �����̿����������� 333~336ȣ (�쵿)','051-747-7407',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP079','������ũ ��������','�λ걤����-�ؿ�뱸 ������Ƽ2�� 2, ������ũ 2�� 208ȣ (�쵿)','051-746-7519',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP080','��â�� ��������','�λ걤����-�ؿ�뱸 �ؿ���177���� 6 (��۵�)','051-782-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP081','�ݼ۵�������','�λ걤����-�ؿ�뱸 �Ʒ��ݼ۷� 11-1 (�ݼ۵�)','051-545-0041',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP082','�ݿ����ѵ�������','�λ걤����-�ؿ�뱸 �����̷� 65-19, �����ݿ������� 2�� (�ݿ���)','051-927-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP083','������ ��������','�λ걤����-�ؿ�뱸 �ؿ��� 369, �ؿ�뼾�Ҹ޵�Į���� (�쵿)','051-715-2228',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP084','����ǵ�������','�λ걤����-�ؿ�뱸 �µ���ȯ�� 173, ��ǳ������ 302ȣ (�µ�)','051-702-1626',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP085','���ɵ�������','�λ걤����-�ؿ�뱸 �µ���ȯ�� 308, 3�� (�µ�)','051-704-7540',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP086','���ҵ������պ���','�λ걤����-�ؿ�뱸 �����߾ӷ� 145, 205ȣ (��۵�)','051-744-6336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP087','����������','�λ걤����-�ؿ�뱸 ������Ƽ3�� 37, ���Ͽ����� 207ȣ (�쵿)','051-742-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP088','��������������','�λ걤����-�ؿ�뱸 �ؿ��� 658-1 (�쵿)','051-746-1075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP089','�ŵ��õ�������','�λ걤����-�ؿ�뱸 �µ���ȯ�� 178, 2�� (�µ�)','051-703-6996',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP090','���̼��� �����޵��ü���','�λ걤����-�ؿ�뱸 ���ҵ��� 25, �󰡵� 203,204ȣ (�쵿, �����帶ũ���Ҿ���Ʈ)','051-746-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP091','���̾�����������','�λ걤����-�ؿ�뱸 ��õ�� 114, 1�� (�µ�)','051-702-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP092','�����ɾ� ��������','�λ걤����-�ؿ�뱸 ���ҵ��� 25, B�󰡵� 203ȣ (�쵿, �����帶ũ���Ҿ���Ʈ)','051-715-5640',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP093','���ǵ����޵��ü���','�λ걤����-�ؿ�뱸 �����̷� 78, �ټغ��� 2�� (�ݿ���)','051-711-5999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP094','�´�����������','�λ걤����-�ؿ�뱸 �µ���ȯ�� 309, 303ȣ (�µ�)','051-701-7555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP095','�츮��������','�λ걤����-�ؿ�뱸 �����̷� 101 (�ݿ���)','051-528-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP096','���Ͻ� Ŭ���� ��������','�λ걤����-�ؿ�뱸 �µ���ȯ�� 511, �̸�Ʈ�ؿ���� 3�� (�ߵ�)','051-746-8675',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP097','��굿������','�λ걤����-�ؿ�뱸 �ݿ��� 96, 1�� (�ݿ���, ��ǳ����)','051-529-5388',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP098','��۵�������','�λ걤����-�ؿ�뱸 ��ݷ� 117-1, 2�� (��۵�)','051-784-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP099','���عڵ�������','�λ걤����-�ؿ�뱸 ���� 108, 2�� (�µ�)','051-702-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP100','ū���������޵��ü���','�λ걤����-�ؿ�뱸 �ؿ���غ���357���� 17, 4~8�� (�ߵ�)','051-710-2004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP101','�丶����������','�λ걤����-�ؿ�뱸 �ݼ۷� 922 (�ݼ۵�)','051-544-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP102','Ǫ����������','�λ걤����-�ؿ�뱸 �ؿ���61���� 104 (�ݿ���)','051-784-1235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP103','�عе�������','�λ걤����-�ؿ�뱸 ���������� 22, 1�� (������)','051-710-1766',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP104','�ؿ�� 24�� �����Ƿ��','�λ걤����-�ؿ�뱸 ���� 45, �ؿ�뺣������ 111ȣ (�µ�)','051-702-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP105','�ؿ�� �÷�����������','�λ걤����-�ؿ�뱸 ���Ƿ� 48, �󰡵� 1-2, 2-2ȣ (�µ�, �ؿ������ھ��ֻ���)','051-915-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP106','�ؿ�뵿���޵��ü���','�λ걤����-�ؿ�뱸 ���� 40, ��Ȳ���� 301ȣ (�µ�)','051-702-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP107','�ؿ��������������','�λ걤����-�ؿ�뱸 �ؿ��� 624 (�쵿)','051-746-7775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP108','�ູ�帲 ��������','�λ걤����-�ؿ�뱸 ���� 61, 201ȣ (�ݿ���, ���ż������Ʈ)','051-521-0521',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP109','ȭ�����յ�������','�λ걤����-�ؿ�뱸 ���Ƿ� 48, 206ȣ (�µ�)','051-704-4376',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP110','�� ��������','�λ걤����-�ؿ�뱸 �µ���ȯ��433���� 30-1, �ؿ����������Ʈ���� 224~227ȣ (�ߵ�)','051-747-7966',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP111','���뵿������','���ֱ�����-���� �󹫴�� 1045 (ȭ����)','062-373-5293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP112','��ȣ��������','���ֱ�����-���� ��ȭ�� 54 (��ȣ��)','062-383-7572',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP113','�ϳ��ε�������','���ֱ�����-���� ���߾ӷ� 62, 1�� (ġ��)','062-371-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP114','������������','���ֱ�����-���� ��õ�� 29 (��ȣ��)','062-382-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP115','�Ѱᵿ���ǷἾ��','���ֱ�����-���� ǳ�ϼ�ȯ��188���� 15 (ǳ�ϵ�)','062-652-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP220','�õ�ϵ�������','��⵵-������ ������ ����� 10 (����)','723-7508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP221','������������','��⵵-ȭ���� 10���� 219, ���� ��ȣ ����Ʈ (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP222','���ϵ�������','��⵵-���ֽ� �������� 25, �۽�ƮŸ�� 1�� 104ȣ (������)','031-766-3463',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP223','������������','��⵵-��õ�� �渶������� 107, �ѱ�����ȸ (�־ϵ�)','02-509-1944',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP224','�������� Dr.��','��⵵-������ �߿��� �꼺��� 498, 1�� 102ȣ (���ൿ)','031-733-9325',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP225','���׽�Ÿ ��������','��⵵-������ �Ǽ��� ȣ�ŽǷ�218���� 124, 202ȣ (ȣ�Žǵ�)','031-291-8896',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP226','�ϸ������ǷἾ��','��⵵-������ ���뱸 ������ 25, ���� SK VIEW Lake �ٸ���Ȱ�� 112~114ȣ (�ϵ�)','031-213-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP227','ī�󵿹�����','��⵵-���ֽ� ������ ����Ȧ�� 1409','031-959-8600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP228','���ص�������','��⵵-��õ�� ����� 164, �󰡵� 2�� 205ȣ (�θ���, ��õ��Ʈ����ũǪ���������)','02-2038-7718',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP229','�ƶ�絷��������','��⵵-��õ�� ������ ����̷�167���� 4',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP230','���������ǷἾ��','��⵵-������ �߿��� ����� 321, �������� 1�� (�ݱ���)','031-735-0922',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP231','�ʽ��÷���������(��������)','��⵵-���� ������ �߾ӷ� 53, 1�� 103ȣ','031-771-9533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP232','ž��������','��⵵-���� ���籸 ���� 4, 103ȣ (��絿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP233','24�� ���� �� �����ǷἾ��','��⵵-���ֽ� ��������7�� 30, 2�� 1~3ȣ (������)','031-859-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP234','������������','��⵵-������ �ȴޱ� ������ 685 (�ű���)','031-224-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP235','�ε�������','��⵵-���� ���籸 ȣ���� 778-6 (���絿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP236','�׷��ͱ� ��������','��⵵-������ ǳ���� 73, ���ÿ��������� 2�� 210ȣ (ǳ����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP237','�ξ⺪ ��������','��⵵-���ν� ������ ������ 203 (�ź���,�̸�Ʈ������ 3��)','031-263-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP238','���������޵��ü���','��⵵-����� ����� 868 (����)','2060-7577',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP239','��ſ������','��⵵-���ν� ������ ����2�� 100, 113ȣ (������, ���ݾ��̿�������)','031-272-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP240','�����Ѻ���������','��⵵-���ֽ� ���Ƿ� 1068, 101.201,202ȣ (�ߴ絿, ����������)','031-944-7179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP241','ȭ����������','��⵵-���� ���籸 ������29���� 46 (ȭ����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP242','���ֵ�������','��⵵-���ֽ� �Ĺ߷�151���� 4-2 (��ȵ�)','762-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP243','������ī ��������','��⵵-������ �д籸 ������ 170, ǳ�����̿��÷��� 108ȣ (������)','705-7776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP244','�� �����ǷἾ��','��⵵-���ν� ���ﱸ �뱸���2394���� 2, 2�� 201,202ȣ (���ϵ�)','312867582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP245','�۽�Ʈ��������','��⵵-�Ⱦ�� ���ȱ� ������ 597, ���ź��� 2�� 202ȣ (ȣ�赿)','031-360-0818',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP246','���� �� ��������','��⵵-�ϳ��� ���Ϲ�����83���� 24, G��������� 2�� 204ȣ (���̵�)','02-485-0512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP437','������������','��⵵-���ֽ� �ͼ���ȯ�� 125, ���������� 2�� 204ȣ (���е�)','031-943-3710',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP438','�̼��ص�������','��⵵-�ȼ��� �߾ӷ� 431-1 (������)','673-5858',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP439','���ӵ�������','��⵵-��õ�� �źϸ� ȣ���� 2258','031-533-5065',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP440','����ȣ�������޵��ü���','��⵵-���ֽ� ���Ƿ� 1114, ����Ÿ�� 202,203ȣ (�ߴ絿)','031-937-8225',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP441','�´��͵�������','��⵵-�Ⱦ�� ���ȱ� �����183���� 14 (���絿)','031-345-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP442','���Ͻ� ��������','��⵵-���� �ϻ꼭�� ������ 74, ��������8���� (�ֿ���)','031-923-8271',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP443','������ Ŭ����','��⵵-������ �д籸 ������ 134 (���ڵ�)','031-711-1911',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP444','�����굿�����պ����ߵ�����','��⵵-��õ�� ���Ϸ� 322 (�ߵ�)','661-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP445','�ݻ��츣�� ��������','��⵵-������ �д籸 ������ 364, �������ϻ� 21ȣ (������)','031-712-2795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP446','������������','��⵵-���ν� ������ ����2��76���� 26-3, B101ȣ (������, �帲Ÿ��)','263-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP447','�̼ٵ�������','��⵵-���� �ϻ굿�� �ϻ��286���� 7-7 (���ε�)','031-903-3399',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP448','�����ϵ�������','��⵵-������ ��ȣ1�� 4, 104ȣ (�絿)','031-391-7075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP449','�ݵ��� ��������','��⵵-���� �ϻ꼭�� �߾ӷ� 1443, ������ 208ȣ (�ֿ���)','904-2345',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP450','���ѵ�������(������� �������� ���� ��������)','��⵵-���ֽ� ���Ƿ� 1805, 2�� (���̵�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP451','���Ը��ܰ���������','��⵵-��õ�� ���Ϸ� 226, ���׸������� (��)','032-656-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP452','���ĵ�������','��⵵-����õ�� �߾ӷ� 125 (���ൿ, ���������� 101ȣ)','031-864-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP453','����������','��⵵-���ν� ���ﱸ ��õ����12���� 4-8 (��õ��)','031-203-4727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP454','ưư��������','��⵵-���ν� ���ﱸ ������ 29, 102ȣ (������, �����޸�������)','031-265-7505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP455','��Ʈ����������','��⵵-ȭ���� ��ź������ 102, �ϳ��������� (�ݼ۵�)','8003-7520',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP456','ť��Ʈ��������','��⵵-��õ�� ���Ϸ� 447-1 (�ɰ)','032-666-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP457','��� ��������','��⵵-������ �д籸 ���ڷ� 78 (���ڵ�)','716-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP458','�ѱ���������','��⵵-�Ȼ�� �ܿ��� ����1�� 63, 1�� 109ȣ (������, �޵�������)','403-1604',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP459','�� S ��������','��⵵-���� �ϻ굿�� ����ȭ��93���� 6-10 (���߻굿)','031-916-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP460','ȫ�͵�������','��⵵-��õ�� �ܿ��� 17-13 (�ܿ���)','637-7762',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP461','���뵿������','��⵵-����õ�� ū����� 42 (������)','865-5393',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP462','������������','��⵵-���ν� ���ﱸ ������ 134-12 (�ߵ�)','031-284-9200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP463','���뵿������','��⵵-��õ�� �۳����265���� 85, ��������� (��)','328-8440',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP464','�갡�� �ǿ�����������','��⵵-�ǿս� ������з� 7 (���յ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP465','��Ÿ��������','��⵵-������ �Ǽ��� �ݰ��102���� 30(�ݰ)','031-294-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP466','�꽺(vans)��������','��⵵-ȭ���� ����1�� 18-24, 1�� (��õ��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP467','���ﵿ������','��⵵-����� ���η� 3390, ����1�� (��õ��)','031-313-6109',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP468','���������� ��������','��⵵-���� ���籸 �߾ӷ� 628 (ȭ����)','031-970-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP469','���ѵ�������(��������)','��⵵-�ȼ��� �׻�� ���ַ� 300','676-9608',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP470','�ٷ� ��������','��⵵-��õ�� ���̷� 88-2 (���̵�)','255-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP471','�ſ��뵿������','��⵵-������ ���뱸 ����� 103 (������)','031-204-9006',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP472','24�� ���̵����޵��ü���','��⵵-��õ�� �һ�� 779, ������������ (������)','677-5262',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP473','����24�ü�Ʈ�������ǷἾ��','��⵵-����� ���մ�� 174, ���������1 2�� 203ȣ (���յ�)','031-432-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP474','��⵿������(�������� ����)','��⵵-���ý� ��������58���� 30 (������)','031-666-6501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP475','���������ǷἾ��','��⵵-��õ�� ���ַ� 80, �ξ�Ÿ�� (��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP476','24�ø�����絿������','��⵵-�Ⱦ�� ���ȱ� ������ 1234, 3�� 301ȣ (������, ���Ǽ���)','031-474-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP477','�Ѱ������ǷἾ��','��⵵-������ �����Ѱ�1��97���� 10-26 (��⵿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP478','�ٸ���������','��⵵-���ֽ� �Ĺ߷� 107, �������� (��ȵ�)','031-762-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP479','���������','��⵵-�����ν� �ߵ��� 13 (�Ű)','031-840-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP480','Ȩ���յ�������','��⵵-������ ǳ���� 85, 1�� 4�� (ǳ����)','031-986-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP481','���ӵ�������','��⵵-���ν� ó�α� ����� �ѽ��� 45, �ѽ�������ο� A�� 113ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP482','����Ʈ��������','��⵵-������ ��ȱ� �������535���� 38, �ξ������� 101ȣ (õõ��)','031-268-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP483','���굿������','��⵵-������ ���뱸 �ߺδ�� 437 (��õ��)','031-213-5075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP484','���������յ�������','��⵵-����� ������ 47 (��ߵ�)','031-315-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP485','���������','��⵵-�Ⱦ�� ���ȱ� ������ 833, 2�� (��굿)','031-465-0907',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP486','�Ƹ���','��⵵-���� ���籸 �߾ӷ�558���� 21 (��ŵ�)','031-972-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP487','�ູ�� ��������','��⵵-��õ�� ������ 2486 (������)','636-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP488','�̷뵿������','��⵵-�Ⱦ�� ���ȱ� ���Ǵ�� 167, 1�� (��굿, ��� �����Ѽ��� �󰡵�)','031-381-0166',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP489','Wellness clinic ��������','��⵵-���ν� ���ﱸ �뱸��� 2457 (������)','031-283-1357',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP490','�����ѵ�������','��⵵-��õ�� ����� 111, ��ƶ� 1 A�� 110, 111ȣ (�ߵ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP491','���� ��������','��⵵-������ �д籸 ���Ǳ���52���� 6, �� 1����(�д籸 ���Ǳ���52���� 8) 1�� (������)','705-7511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP492','�꺻��������','��⵵-������ �꺻õ�� 212 (�꺻��)','394-0816',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP493','25�� ���յ�������','��⵵-����� ��ȣ��� 97 (���굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP494','�����������','��⵵-���ֽ� ������237���� 1 (����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP495','���� ����Ʈ ��������','��⵵-��õ�� �帻�� 219 (�ߵ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP496','�ѱ����������ǷῬ����(KASMINE) �������������弾��','��⵵-������ �д籸 �̱ݷ� 43, ������� 1�� (���̵�)','031-716-9001',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP497','������������','��⵵-���ν� ���ﱸ ������ 1, 101ȣ (���ϵ�, ��������LG����Ʈ��)','031-275-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP498','�꽺�丮 ��������','��⵵-���ν� ������ �ź�2�� 19, 102ȣ (�ź���,�ſ���������)','031-276-0282',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP499','���ǿõ�������','��⵵-��õ�� ������ ȣ���� 571, �������','542-9482',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP562','�����','��⵵-���� �ϻ굿�� ź�߷� 324 (�߻굿)','031-975-0187',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP563','�ϳ���������','��⵵-������ ������ 4 (��쵿, 1����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP564','����ְ����պ���','��⵵-������ ������ �ùη� 146 (���ﵿ)','735-1942',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP565','�񰨽�Ƽ��������','��⵵-����� �񰨵ѷ��� 253-24, 110ȣ (������)','031-504-7559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP566','���ְ񵿹�����','��⵵-���ֽ� ������ ����Ȧ�� 422-1','031-952-4674',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP567','������������','��⵵-��õ�� ���۷� 305 (���絿, �����׸�Ÿ�� 102��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP568','������������','��⵵-������ �ȴޱ� ȭ��� 21-2, 1�� (ȭ����)','031-242-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP569','���ӵ�������','��⵵-����� ��̽���1�� 39, 1�� (��õ��)','031-317-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP570','������������','��⵵-������ �ǿ���� 41 (��â��)','031-558-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP571','����������','��⵵-��õ�� ����� 473 (����)','683-5137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP572','�����߾ӵ����ǷἾ��','��⵵-������ ������ ���ʱ���� 104, ���� ��ȭ ��������ũ ��Ʈ�������� 2241,2242ȣ (â�)','031-758-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP573','���� ���� ��������','��⵵-���� �ϻ굿�� ����� 99, ȣ������5��������Ʈ 1�� 121~122ȣ (���׵�, ȣ������5��������Ʈ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP574','���̷��� ��������','��⵵-������ ��ȱ� �ۿ��� 69, 4�� (���׵�)','031-241-7551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP575','���������ǷἾ��','��⵵-���ý� ������ 1842 (������)','031-8054-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP576','���굿������','��⵵-������ �����Ѱ�7�� 71 (������, �̸�Ʈ �����Ѱ��� 2��)','031-997-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP577','���������','��⵵-���ν� ó�α� ������ ����� 27-2','334-3304',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP578','���ŵ�������','��⵵-������ �����߾ӷ� 70, 202ȣ (���ŵ�, �̷�ѹ�����ġ��)','031-529-5088',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP579','���翡��������','��⵵-�����ν� �ζ��� 195, ����sŬ���� 1�� 113, 114ȣ (�ζ���)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP580','�޺���������','��⵵-�����ֽ� ����2��6���� 28-11 (������)','528-7545',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP581','�̿���������','��⵵-���ֽ� û���� 264, 201ȣ (���е�, �Ź�������)','031-935-5009',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP582','�����ϵ�������','��⵵-���ν� ó�α� �ߺδ�� 1510 (����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP583','�Ѽֵ�������','��⵵-���ν� ó�α� ����� ������ 93','332-7951',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP584','�츮���׵�������','��⵵-���ν� ���ﱸ ��õ���16���� 3-2, 101ȣ (�Ű���, ����������)','031-281-0811',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP585','���굿������','��⵵-���ֽ� ȫ���� ������ 68-17',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP586','�赿������','��⵵-�Ȼ�� ��ϱ� ȭ���� 501, 1���� 103ȣ (������,����������)','480-4474',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP587','���ѵ�������','��⵵-��õ�� ���ϸ� ���Ϸ�203���� 30',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP588','���ִϵ�������','��⵵-����� ���� 23, 106ȣ (��)','031-438-7552',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP589','������Ƽ�ӵ�������','��⵵-���ν� ó�α� ������ 185 (����)','313357578',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP590','��������������','��⵵-���ý� �߾�2�� 79, 1�� (������)','031-652-8921',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP591','�Ǳ׸�Ŭ����','��⵵-���� ���籸 ��۷� 222, �츮�����ǽ� 310ȣ (��۵�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP592','���ﵿ���޵��ü���','��⵵-���ֽ� ������ ������ 89','031-8022-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP593','�����ְߵ�������','��⵵-�Ȼ�� ��ϱ� ����� 78 (������,1��)','419-7574',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP594','�����޵𿤵�������','��⵵-������ �����Ѱ�4�� 521, �Ѱ��޵��ö��� 201ȣ (������)','031-985-7075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP595','�� ���� ��������','��⵵-���� ������ �ùη� 90','031-772-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP596','�д絿������','��⵵-������ �д籸 ������ 126, �̸������� 104ȣ (�̸ŵ�)','705-4144',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP597','������������','��⵵-���ֽ� �ͼ���ȯ�� 78, �Ѱ������� 201ȣ (�ߴ絿)','031-944-5077',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP598','������������','��⵵-��õ�� ���η�138���� 9 (�۳���)','651-5450',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP599','25�õ�������','��⵵-�����ֽ� ȭ���� �����߾ӷ� 70','594-3119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP600','���ǵ�������','��⵵-�����ֽ� �ͺ��� ���ҷ� 218','521-7573',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP601','�ѵ������� (�������� ����)','��⵵-���ý� ������ ��������� 65 (������)','031-692-2250',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP602','�ٻ굿������','��⵵-�����ֽ� ����� 380, �������� 1�� (�ٻ굿)','511-0304',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP603','�̼ٵ�������','��⵵-���ֽ� �ʿ��� ������ 1264','031-768-8820',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP604','�������������','��⵵-��õ�� �渶������� 107 (�־ϵ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP605','����24�õ�������','��⵵-���ֽ� ���Ϸ� 87, 201ȣ (�񵿵�, �Ｚ������)','031-944-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP606','����������','��⵵-���ý� ������ ���߷� 94, 105�� (��â����)','031-681-2406',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP607','������������','��⵵-���� �ϻ굿�� ������ 156, ���̸���7���� (���ε�)','031-906-0976',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP608','�޸��� ��������','��⵵-���� �ϻ굿�� ȣ���� 358-25, ����Ÿ��II 1016ȣ (�鼮��)','031-816-7879',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP609','������������','��⵵-�����ֽ� ȭ���� ������ 90','031-551-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP610','Dr. ���� ��������','��⵵-������ �д籸 �д��263���� 39, 109ȣ (������, ���̵���ũ)','701-8225',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP611','������������','��⵵-ȭ���� ��ź�ֺ��� 64, ����������2 1�� 104ȣ (�ݼ۵�)','8003-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP612','ȫ�͸޵�Į��������','��⵵-ȭ���� ������ ���ϺϷ�57���� 1, 1��','031-358-0200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP613','����+ ��������','��⵵-��õ�� �����3�� 34, 2�� 218,219,220ȣ (���絿, ��õ �����ʵ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP614','�̸���','��⵵-������ �ʴ��61���� 56 (��⵿)','031-988-3125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP615','�������������','��⵵-������ ���뱸 ����� 118 (������)','031-273-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP616','�ٴϿ� ��������','��⵵-���� �ϻ굿�� �ϻ�� 233 (���ε�)','908-5857',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP617','â����������','��⵵-�����ֽ� ȭ���� â���� 53','591-5991',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP618','���ϵ�������','��⵵-�����ν� ����� 116 (�����ε�)','848-4598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP619','�Ŀ쵿������','��⵵-���ν� ������ ���Ϸ�125���� 6, 105ȣ (������, �׸�������)','898-0330',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP620','��ǳ��������','��⵵-��õ�� �۳���� 239, ��ǳ (��)','329-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP621','��ȣõ�絿������','��⵵-�Ⱦ�� ���ȱ� ������ 552 (ȣ�赿,1��)','031-451-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP622','�����������','��⵵-�ȼ��� �������� 84 (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP623','��Ÿ�ε����޵��ü���','��⵵-�Ⱦ�� ���ȱ� ���Ǵ�� 267, 1,2�� (��굿)','031-465-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP624','���������ǷἾ��','��⵵-���ֽ� ź���� 7, �°���� (ź����)','031-767-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP625','ȣ����������','��⵵-���� �ϻ꼭�� �߾ӷ� 1470, A�� 106-3ȣ (�ֿ���, ���̸���10��������Ʈ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP626','�������յ�������','��⵵-������ ���뱸 �ߺδ�� 263, 2�� (��õ��)','031-214-5527',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP627','�����µ�������','��⵵-�Ȼ�� ��ϱ� ������ 133, 116ȣ (������, �켺��)','409-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP628','��絿������','��⵵-�����ν� ���� 66 (��絿)','855-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP629','��μ� ��������','��⵵-����� ������� 5, ���ջ󰡵� 112ȣ (ö�굿)','02-2686-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP630','�������� HADA','��⵵-������ �����Ѱ�8�� 398, 204ȣ (������, �����÷���)','031-8049-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP631','��ȭ��������','��⵵-���ý� ������ �����μ�6�� 38','686-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP632','�̵絿������','��⵵-������ �ȴޱ� ������244���� 25, 101ȣ (ȭ����, ȭ�������ϴ�ä)','031-242-7501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP633','CJ��������','��⵵-��õ�� ����� 246, ���������� 6�� (�ߵ�)','032-323-4999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP634','���� ��������','��⵵-������ �Ǽ��� ��������577���� 341, �󰡵� 1�� B127ȣ (�ݰ, ������ƹ̷�����Ʈ��Ÿ��1����)','031-294-8277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP635','���� ��������','��⵵-������ �Ǽ��� �����85���� 12, 105�� (���)','031-292-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP636','�� ���յ�������','��⵵-����� ����� 37-1 (����)','031-374-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP637','�Ѹ�����������','��⵵-������ ������ ������� 2025','031-987-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP638','���� ģ�� ��������','��⵵-���� ���籸 ����42���� 13-15, �ɰ������ 103ȣ (��絿)','031-970-9204',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP639','������絷������������','��⵵-������ �ȴޱ� ȭ��� 62 (ȭ����)','031-295-7611',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP640','�Ǿ絿������','��⵵-���ֽ� ������ ������9�� 12-27',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP641','��۵����ǷἾ��','��⵵-���� ���籸 ��۷�205���� 15 (��۵�)','02-381-9658',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP642','���������п� ����ڿ����ߺ� ��������','��⵵-���ý� �ؼ��� ���2�� 48-16','041-580-3409',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP643','�츮�ص�������','��⵵-��õ�� �������105���� 8-6 (��)','032-325-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP644','������յ�������','��⵵-���ν� ���ﱸ ����߾ӷ� 59 (������, ��������������������)','031-217-7119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP645','��������������','��⵵-������ �꺻��343���� 7, â������ 101,102,��101,102,103ȣ (�꺻��)','031-397-0071',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP646','�ϻ굿���Ƿ��','��⵵-���� �ϻ꼭�� ��ȭ�� 407 (��ȭ��)','031-924-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP647','������������','��⵵-������ ������ ����390���� 97','981-0123',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP648','���絿������(��������)','��⵵-�ȼ��� ������ ���������� 25, �󰡵� 103ȣ (�ӱ��״밡����Ʈ 1����)','655-4465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP649','�׷��嵿������','��⵵-������ ������ 521-1 (�絿)','453-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP650','two����������','��⵵-���ý� �򳲷� 1050, 1�� 103ȣ (���赿)','031-657-4671',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP651','���굿������(�̸�Ʈ �ߵ���)','��⵵-��õ�� ��õ�� 188, (��)�ż����̸�Ʈ�ߵ��� (�ߵ�)','323259617',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP652','�ú� ��������','��⵵-��õ�� �һ�� 196 (�һ纻��)','323465454',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP653','����Ʈ�� ��������','��⵵-����� ������ 6, ��ũ������ 105,106ȣ (����)','031-378-1514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP654','���е�������','��⵵-�����ֽ� ȭ���� �˵���91���� 4-18, ��ȣ�� 102ȣ','559-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP655','���絿������','��⵵-���� ���籸 �����126���� 97, 3�� (�ֱ���)','962-6049',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP656','���񵿹�����','��⵵-������ �Ǽ��� ��ȣ�� 236, ��ȣ���� 101ȣ (ž��)','031-296-7875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP657','��������','��⵵-���ֽ� �������� ������ 779-2','031-767-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP658','�̸� ��������','��⵵-��õ�� ����� 150, �����������Ʈ (�ߵ�)','662-2479',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP659','(��)�����̽ʻ�õ�������','��⵵-�Ȼ�� �ܿ��� �߾Ӵ�� 899, 1.2�� (���ܵ�)','402-4061',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP660','������������','��⵵-������ �д籸 �������171���� 17, ��Ƽ�븮 101ȣ (�ݰ)','031-713-5004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP661','�����������','��⵵-�����ν� ȣ���� 1300 (�����ε�)','031-845-2500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP662','�ظ��� ��������','��⵵-���� �ϻ꼭�� ������ 48 203ȣ (ź����,����������)','031-924-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP663','��â����������','��⵵-���ֽ� ������ 151, ���������� 3�� 2ȣ (������)','031-858-2918',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP664','�������յ�������','��⵵-���ν� ó�α� ������ �ߺδ�� 2219','031-338-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP665','�ѱ���������','��⵵-������ �߿��� ����� 360, 10ȣ (������)','746-8990',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP666','�� �����ǷἾ��','��⵵-������ ��ȱ� ������ 114, �� �����ǷἾ�� 1,2(�Ϻ�)�� (������)','031-248-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP667','������� ��������','��⵵-���� �ϻ꼭�� �ϻ�� 539 (�ϻ굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP668','��õ��������','��⵵-����� ȣ����22���� 27 (��õ��)','031-315-3727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP669','�������� ��������','��⵵-���ν� ó�α� ������ ��������� 199','031-320-8708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP670','ȣ�򵿹�����','��⵵-�����ֽ� ����1��16���� 29 (ȣ��)','511-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP671','����������','��⵵-������ �ȴޱ� �Ǳ��� 120 (�ΰ赿)','031-239-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP672','���ϵ�������','��⵵-������ ����� 200, 205ȣ (���õ�)','031-522-5107',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP673','����W��������','��⵵-���ֽ� �̷��� 620, 112ȣ (�͵���, �ؼ�������)','031-944-9075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP674','�ݿ���������','��⵵-�����ν� û��� 37 (�ݿ���,�ż��������� 112ȣ)','031-826-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP675','�º���������','��⵵-����� ������ 352 (���ϵ�)','28988971',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP676','���ϵ�������','��⵵-���ý� ������ ���߷�99���� 13-1','031-682-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP677','��������������','��⵵-���ֽ� ������ ������ 123, 2��','031-713-0103',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP678','���񴩸� ��������','��⵵-���ֽ� �߾ӷ� 69-4 (����)','031-763-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP679','�׷���24�õ�������','��⵵-���ֽ� ��Ⱦȱ� 5 (��ȵ�)','766-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP680','�δ������յ�������','��⵵-�Ⱦ�� ���ȱ� ��ȴ�� 495, 1�� (���絿)','031-426-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP681','�� ��������','��⵵-������ ���뱸 ������� 1535, ���������� 111ȣ (���뵿)','031-205-7900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP682','��õ���� ������� �������� (�������� ����)','��⵵-���ý� �ؼ��� ������ 159, 201ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP683','�ֽ�ȸ�� �����긴����','��⵵-��õ�� �ι��� �žƷ� 58','031-637-5248',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP684','��Ÿ��������','��⵵-�Ȼ�� �ܿ��� �Ѿ���з� 208, 2�� (���ܵ�)','410-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP685','������������','��⵵-�Ⱦ�� ���ȱ� ����ȷ� 57 (�Ⱦ絿)','031-443-9726',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP745','�̻絿������','��⵵-�ϳ��� �̻簭���߾ӷ� 223, 203ȣ (������)','031-796-7179',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP746','��絹����������','��⵵-�����ν� ���� 100, 1�� (��絿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP747','�ϳ��','��⵵-���� �ϻ꼭�� �߾ӷ� 1470, ���̸��� ���ջ� (�ֿ���)','9193567',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP748','�����ӵ�������','��⵵-������ ���ڴ�� 76 (���õ�, �̿�������)','031-566-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP749','���ν� ������ȣ����','��⵵-���ν� ó�α� �ߺδ�� 1074-1, ���ν� ������ȣ���� (�ﰡ��)','031-324-3467',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP750','�����ӵ�������','��⵵-������ �д籸 ���߷� 124, 204ȣ (���ߵ�, ��ũ��Ƽ ���)','8017-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP751','�߾ӵ�������','��⵵-������ ������ ������ 139 (����)','755-9429',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP752','û�ȵ�������','��⵵-����� ��̽���1�� 19 (��õ��)','031-311-4148',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP753','��õ�������� (��������)','��⵵-�ȼ��� ������ ������ 29-67','031-674-4432',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP754','��浿������','��⵵-��õ�� �ι��� ������ 2260','031-632-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP755','���������������','��⵵-���ν� ������ ǳ��õ�� 135, 103ȣ (ǳ��õ��, ����Ÿ��)','263-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP756','�д��߾� ��������','��⵵-������ �д籸 �߾Ӱ�����39���� 49, ���� ������ 108ȣ (������)','031-708-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP757','�Ѱ���������','��⵵-�����ֽ� ������ ����Ϸ� 516','571-4465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP758','�������� ��������','��⵵-����� ���η� 3376-1, 1�� (��õ��)','031-314-0706',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP759','����24���������ǷἾ��','��⵵-������ �����Ѱ�2�� 11, 201,202,203ȣ (��⵿, �������� �ֿ뿹������Ʈ)','031-987-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP760','���յ�������','��⵵-���ý� ���÷� 105 (�뺹��)','655-4980',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP761','���ٿ������','��⵵-�Ȼ�� �ܿ��� �������з� 137, �������� 201ȣ (���ܵ�)','482-5793',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP762','��õ�ص�������','��⵵-��õ�� ����� 230, �θ������� (�ߵ�)','322-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP763','������������','��⵵-ȭ���� �Ⳳ�� ����������1�� 25, 102ȣ','354-7844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP764','���絿���޵�Į','��⵵-������ ��ȱ� �ȴ޷� 249 (��ȭ��)','031-243-0080',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP765','���ε�������','��⵵-���ν� ó�α� ������ 17 (���ϵ�)','332-3070',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP766','�����������','��⵵-��õ�� ������ ����� 140','832-7771',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP767','���� ��������','��⵵-������ �д籸 �̱ݷ� 48, ���������� 113ȣ (���̵�)','712-0707',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP768','���������������','��⵵-�Ȼ�� �ܿ��� ���η� 195 (���ε�, �������)','413-4402',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP769','����� ��������','��⵵-���� �ϻ꼭�� ����212���� 8-12 (��ȭ��)','923-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP770','ưư��������','��⵵-���� �ϻ굿�� �ϻ�� 38, �츲���ǽ��� 1�� 110ȣ (�鼮��)','031-811-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP771','���� ��������','��⵵-������ �߿��� ������� 1110, 1�� (�ϴ����)','031-755-5095',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP772','������������','��⵵-���� �ϻ굿�� ����Ƽ�� 75 (�Ļ絿)','031-906-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP773','������������','��⵵-���ý� ����3�� 27, 104, 105ȣ (������)','316511175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP774','�׷���Ʈ ��������','��⵵-������ �д籸 ���ڷ� 80, 1�� (���ڵ�, ����������)','031-716-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP775','�ſ������޵��ü���','��⵵-���� ���籸 �ſ���1�� 42, 1�� (�ſ���)','02-381-0507',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP776','�����굿������','��⵵-�����ν� �ζ��� 210, 4�� (�ζ���, �̸�Ʈ)','031-852-7502',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP777','�ٿµ�������','��⵵-�Ⱦ�� ���ȱ� ���̴�� 124, 1�� (���̵�, �������)','031-689-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP778','���ϵ�������','��⵵-������ �꺻�� 394, 1�� 108,109ȣ (�꺻��, �븲������)','392-8850',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP779','�ø��굿������','��⵵-���� �ϻ굿�� �߾ӷ� 1130, C�� 112ȣ (���ε�, �ø����)','031-908-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP780','�ٿ쵿������','��⵵-�Ⱦ�� ���ȱ� �ڴ޷� 512 (�ڴ޵�)','031-443-1280',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP781','�輺�ϵ�������','��⵵-������ ��ȱ� ���η� 2132 (������)','031-297-2975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP782','�������յ�������','��⵵-���ν� ���ﱸ �Ű��� 85 (�Ű���)','031-283-0775',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP783','�̸�����������','��⵵-�����ֽ� ����5�� 35, 102ȣ (������)','574-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP784','��ž���ﵿ������','��⵵-������ �д籸 ������ 33, 206ȣ (��ž��, �Ͻ����ջ�)','0505-315-1234',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP785','�Ƶ�������','��⵵-���ý� ���÷� 80 (���õ�)','657-1062',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP786','�鸶��������','��⵵-���� �ϻ굿�� �ϻ�� 212, ����AŸ�� 1�� (���ε�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP787','���ϵ�������','��⵵-�ǿս� ���ϼ��Ÿ��� 3, 112ȣ (���ϵ�, �ķ���Ÿ��)','031-425-7541',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP788','��ȣ��������','��⵵-���ý� ��ź�� 202 (������)','031-611-5736',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP789','���̷����굿������','��⵵-��õ�� ���ַ� 118, Ȩ�÷�����õ���� (��)','324-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP790','�뿤��������','��⵵-��õ�� ���ȷ� 98, ���ڵ� �ٸ���Ȱ�ü� (���ڵ�)','2477575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP791','���굿������','��⵵-������ �꺻�� 347, 5�� (�꺻��, �̸�Ʈ��ȭ��)','031-398-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP792','������������','��⵵-���ν� ���ﱸ ������ 32 (������, ����������Ŭ��)','031-898-3708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP793','������������','��⵵-���ν� ������ ������296���� 30 (ǳ��õ��)','031-262-8700',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP794','���뵿������','��⵵-������ ���뱸 û����4���� 6, 1�� (���뵿)','031-204-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP795','�������浿������','��⵵-���ý� ��ź�� 147, �±� 1�� (���浿)','031-667-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP796','�������� ��������','��⵵-���ֽ� �ͼ���ȯ�� 70 (�ߴ絿, �ſ���������2)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP797','�ٸ�����������','��⵵-����� ���Ϸ� 88, 2�� 201ȣ (���ϵ�, û��������)','02-899-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP798','����24���ص絿���ǷἾ��','��⵵-���ֽ� ����� 1938, 201ȣ (���絿)','031-848-9111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP799','���Ϲ��������������','��⵵-�ȼ��� �׻�� �뼳�� 429-12','1566-4343',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP800','��â�� ��������','��⵵-���� �ϻ굿�� ����ȭ��141���� 7-9 (���߻굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP801','��ǿ��� ��������','��⵵-������ ���뱸 �ΰ��220���� 20 (��ź��)','031-212-1999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP802','�ڿ��ص�������','��⵵-������ ���뱸 ����Ÿ��� 17, ���������� 108ȣ (���ǵ�)','031-215-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP803','������������','��⵵-������ �߿��� �����142���� 3, �̷�Ÿ�� B101ȣ (������)','741-1701',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP804','��ȣ����������','��⵵-��õ�� ��ȣ���� �尨�� 23','031-643-0010',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP686','û������������','��⵵-������ �ȴޱ� ������ 751-7, 2�� (�ߵ�)','031-242-2078',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP687','�����������','��⵵-���� ������ ���Ϸ� 97','031-772-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP688','����� �������� ���õ���','��⵵-���ý� ���÷� 84-1 (���õ�)','031-618-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP689','�����ִϵ����޵��ü���','��⵵-�ϳ��� ����� 168 (���嵿)','031-795-0903',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP690','������������','��⵵-����� û�з� 250, 1�� 104ȣ (��û��)','031-375-7590',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP691','�ִϿµ�������','��⵵-����� ����õ�� 335, 2�� 201,202ȣ (���յ�)','031-499-7991',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP692','�̷������ǷἾ��','��⵵-������ �д籸 ������255���� 1, 1�� (������)','031-705-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP693','Ȱ������������','��⵵-������ �д籸 ��ȷ� 39, ���Ϻ��� 102-2ȣ (�д絿)','781-7525',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP694','���� ��������','��⵵-������ �̹��ȷ� 138 (����,��ź��� 1��)','031-568-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP695','�� ��������','��⵵-���ν� ������ ������ 120, SR������ 112ȣ (������)','031-898-2298',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP696','24�� �� ��������','��⵵-������ �Ǽ��� �Ǽ��� 715, 1�� (�Ǽ���)','031-548-2475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP697','����365�����ǷἾ��','��⵵-���ֽ� å���� 573, 2�� 206ȣ (�񵿵�, ����Ÿ��3)','031-945-5365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP698','��ź��Ƽ�����ǷἾ��','��⵵-ȭ���� ��ź������ 126, ���������� 109ȣ, 202ȣ (�ݼ۵�)','031-8003-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP699','���밡�ິ��','��⵵-���ֽ� ���� ȭ�շ� 583','031-868-5061',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP700','������������','��⵵-���ν� ���ﱸ ������ 49, 101ȣ (������)','031-266-2993',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP701','365 �ſ��� ��������','��⵵-���� ���籸 ȣ����790���� 88 (���絿, �ſ��絿������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP702','�츮��������','��⵵-�ȼ��� ���1�� 5(������)','675-0722',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP703','�����굿������','��⵵-�����ֽ� ȭ���� ����� 1992 (�Ե���Ʈ ��)','511-7544',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP704','�����󵿹�����','��⵵-���� �ϻ굿�� ����Ƽ2��11���� 16, �۶������� 202ȣ (�Ļ絿)','031-969-8586',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP705','���ﵿ������','��⵵-�����ν� ������ 152, 103ȣ (�ζ���)','031-852-7733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP706','�� ��������','��⵵-���ν� ������ �����߾ӷ� 302, 1�� 101ȣ (������, �������� ��罺����)','031-213-7522',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP707','��ϵ�������','��⵵-���ν� ó�α� ��ϸ� ��â�� 45','031-336-1245',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP708','�ִ��� ��������','��⵵-���� �ϻ굿�� ���� 13, ����ƶ߸�����ǽ��� 110ȣ (�鼮��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP709','����Ʈ������������','��⵵-������ �д籸 �����Ϸ� 197, 101ȣ (���ڵ�, Ǫ��������Ƽ 2��)','031-713-8391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP710','���굿������','��⵵-���� ���籸 ȭ�߷� 66, �Ե���Ʈ 2�� (ȭ����)','971-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP711','���뵿������','��⵵-���ν� ���ﱸ �Ű��� 20 (�󰥵�)','285-6334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP712','����24�õ�������','��⵵-���ֽ� ���õ�� 5 (������,1��)','7687599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP713','������������','��⵵-���� �ϻ꼭�� ������ũ2�� 42 (���̵�)','031-911-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP714','�����������','��⵵-�ϳ��� �����168���� 56, K ���� 1�� 103ȣ (���嵿)','1577-9291',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP715','�̻缭�ﵿ������','��⵵-�ϳ��� �̻簭������ 45, ���긴�� 1�� 211ȣ (������)','031-795-6060',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP716','�������� ��������','��⵵-��õ�� ���������� 102, �������� (���赿)','02-500-7770',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP717','�����ֵ�������','��⵵-�����ֽ� ����� 1281 (�򳻵�)','592-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP718','����������̺���','��⵵-������ �д籸 ���߷�243���� 3-6, 1�� (�Ǳ���)','726-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP719','�Ｚ��������','��⵵-�Ȼ�� �ܿ��� ������ 57 (���)','494-1119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP720','�θ�����Ŭ����','��⵵-������ �ȴޱ� ȿ���� 53 (�Ż��3��)','031-221-2410',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP721','���Ϸ� ��������','��⵵-���� ���籸 ���Ϸ� 730 (���굿)','070-7720-4934',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP722','�Ƹ�����������','��⵵-ȭ���� ������ �Ϳ�� 89, �丶����ǽ���2 106ȣ','613-3872',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP723','(��)���ϸ�Ŭ����������(����������������)','��⵵-���ν� ���ﱸ �Ű��� 85 (�Ű���)','031-233-2836',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP724','������������','��⵵-���ֽ� ������ ������� 39','031-836-3507',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP725','�ο� ��������','��⵵-�����ֽ� �ٻ��߾ӷ�123���� 22-8, ���������� 604ȣ (�ٻ굿)','031-565-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP726','Wiz-Pet ��������','��⵵-���� �ϻ굿�� �߾ӷ� 1036 (�鼮��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP727','�ٻ����������','��⵵-�Ⱦ�� ���ȱ� �ùδ�� 266, 103ȣ (���絿, ���̻��������ǽ���)','031-385-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP728','�̻罣�����ǷἾ��','��⵵-�ϳ��� �̻簭����� 222, 2�� 202ȣ (������, �̻��߾�������)','031-791-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP729','���ɵ�������','��⵵-��õ�� ������ ����� 47','835-0815',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP730','���ӵ�������','��⵵-��õ�� �һ�� 722 (������, ���̵� ��ī�̺�)','676-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP731','ȣ����������','��⵵-����� �񰨳����� 9-19, 103ȣ (������)','031-403-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP732','�����굿������','��⵵-ȭ���� ����� 1054 (���ȵ�)','225-2513',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP733','�����������','��⵵-�ϳ��� �ϳ���� 809, 1�� (���嵿, �渲����)','795-7523',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP734','���굿������','��⵵-�ȼ��� �߾ӷ� 246, 3�� (������, �̸�Ʈ)','031-677-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP735','������յ�������','��⵵-�����ν� ���Ϸ� 468(�Ű)','843-1415',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP736','24�ù�𽺸�Ʈ�����ǷἾ��','��⵵-����� ���3�� 86, ����������2 207, 208ȣ (���)','031-432-1224',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP737','�����굿������ ǳ����','��⵵-���� �ϻ굿�� ����ȭ�� 237 (ǳ��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP738','���������ǷἾ��','��⵵-���ֽ� ��ϱ� 306-53, ������ũ������ 202, 203ȣ (������)','031-857-7551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP739','�׶󸮿򵿹�����','��⵵-�Ⱦ�� ���ȱ� ����� 314 (���絿)','031-388-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP740','���ߵ�������','��⵵-��õ�� ��õ�� 69 (�ɰ)','655-3500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP741','AtoZ��������','��⵵-������ �д籸 �Ǳ����� 145, ��Ʈ��Ʈ2�� 2�� 213ȣ (������, ���ĸ���2����)','031-8016-8206',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP742','���Ƶ�������','��⵵-������ �д籸 �Ǳ��� 446, 108ȣ (�̸ŵ�, �׸�������)','031-708-3100',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP743','���ƽý� �����ܰ� �Ű�ܰ� ��������','��⵵-������ ���뱸 ��Ʈ��Ÿ��� 107, 204�� 2-06,2-07,2-08,2-09ȣ (���ǵ�, ����Ǫ���������帶ũ,���彺����)','031-215-7474',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP744','���̺� ��������','��⵵-������ �߿��� �꼺��� 336-3 (�߾ӵ�)','735-5995',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP500','���ﵿ������','��⵵-������ �߿��� ����� 442 (�ݱ���)','741-8119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP501','������������(��������)','��⵵-�ȼ��� �缺�� ������ 620','671-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP502','����츮�ֵ�������','��⵵-ȭ���� ������ ��ȭ���ͱ� 5','031-293-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP503','��Ƶ�������','��⵵-������ ��ȱ� ��ȷ� 67 (��ȭ��)','031-246-1254',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP504','�ش㵿������','��⵵-����� �����з� 13, �ѱ����� 1,2�� (ö�굿)','588-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP505','����������','��⵵-����� ����� 91-10 (������, �������� 101ȣ)','031-374-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP506','�ִ��굿������','��⵵-���ν� ������ ������ 95, B102ȣ (������, ����3���ֿ뽺����Ȩ��)','031-266-8898',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP507','�����������','��⵵-�����ν� �ݽŷ� 317 (�Ű)','847-7335',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP508','��鵿������','��⵵-���� �ϻ굿�� ����� 250 (�߻굿)','976-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP509','�Ϲ��ټص�������','��⵵-������ ��ȱ� ������921���� 3 (��ȭ��)','031-251-0082',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP510','�̸� ��������','��⵵-������ �д籸 �������779���� 17, 1�� (�̸ŵ�, ��Ƽ������)','703-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP511','�����´��͵�������','��⵵-������ ���� 242, 1�� (�絿)','031-391-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP512','�ʸ���������','��⵵-���ý� ����� 34 (���굿)','611-1766',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP513','�ϸ�ϵ�������','��⵵-��õ�� ����� 150, �����������Ʈ (�ߵ�)','225-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP514','���뵿���ǷἾ��','��⵵-�����ν� ���Ƿ� 49 (������, ������)','031-852-3119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP515','�ŵ����޵��ü���','��⵵-ȭ���� �Ⳳ�� ��������2�� 28-37','031-352-6633',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP516','365�������� �д���','��⵵-������ �д籸 �̱��Ϸ�90���� 32, 125ȣ (���̵�)','718-0365',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP517','���굿������','��⵵-���ֽ� ������ 151 (ȫ����)','885-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP518','������������','��⵵-������ �˹�� 36, ����Ifriend���� 101ȣ (���õ�)','031-557-9009',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP519','���������յ�������','��⵵-�����ν� �ùη� 154 (�����ε�)','031-846-9600',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP520','�ִ��ɾ������','��⵵-������ ������ 104 (����)','031-567-7589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP521','������������','��⵵-���� �ϻ굿�� ���۷�87���� 8-10 (�鼮��)','031-912-9465',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP522','�����������޵��ü���','��⵵-������ ������ ���ʱ���� 5, ���ʿ쳲��������ũ 3�� 301,302,317ȣ (â�)','604-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP523','�Բ��ϴ� ��������','��⵵-���ν� ���ﱸ ���Ϸ� 164, A�� 1�� 1,2ȣ (���ϵ�, �׶󽺰���A����)','031-275-6549',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP524','�����Ͼ��ѹ浿������','��⵵-���ֽ� �ݺ��� 44, 203ȣ (���̵�, ����������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP525','�һ������ӵ�������','��⵵-��õ�� �һ�� 184 (�һ纻��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP526','��������������','��⵵-���ý� �ߴ�� 102 (���浿)','662-8222',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP527','��������������','��⵵-����� ������ 81, 102ȣ, 201ȣ (��ߵ�, �������)','031-318-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP528','�Ǳ��������� (�������� ����)','��⵵-���ý� û���� ���Ϸ� 13','665-7763',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP529','�д���ũ�� ��������','��⵵-������ �д籸 �����Ϸ� 248, 112ȣ (���ڵ�, ��ũ���)','031-713-2111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP530','�߻����յ�������','��⵵-���� �ϻ꼭�� ����� 299 (�ϻ굿)','031-976-8939',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP531','PMC','��⵵-��õ�� ����� ����� 940','031-635-7620',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP532','�ϻ��Ƽ �����ǷἾ��','��⵵-���� �ϻ굿�� ����ȭ�� 8-28, �Ｚ�޸����Ͽ콺 103ȣ (���׵�)','031-932-0085',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP533','24�� ������ī��������','��⵵-�Ȼ�� �ܿ��� ��������2�� 35, 106ȣ (������,�ް�����)','486-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP534','THE������������','��⵵-���ν� ���ﱸ �����������527���� 98-6, 1�� (�ߵ�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP535','���ֵ�������','��⵵-���ν� ���ﱸ ������ 94 (������, ���ֵ�������)','031-284-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP536','�ξ⵿������','��⵵-���ֽ� ��ϱ� 58 (��ϵ�)','031-857-7570',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP537','24�õ�������','��⵵-���ν� ���ﱸ ������ 53 (������)','281-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP538','�Ƹ���������','��⵵-������ �д籸 �������779���� 52, �����ھ� 102ȣ (�̸ŵ�)','706-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP539','���� ��������','��⵵-������ ��ȱ� ������ 78, 1�� (������)','031-244-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP540','�д翡����������','��⵵-���ֽ� ������ ����� 203','726-3336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP541','KRH��������','��⵵-������ ��ȭ��181���� 36, ��ȯ����Ʈ �󰡵� ������ 8ȣ (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP542','�Ѱ���������','��⵵-��õ�� ������ ȣ���� 1628','031)536-8388',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP543','��������������','��⵵-��õ�� ���ַ� 81, ��ǽ�Ƽ (��)','666-7500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP544','���ٿ������','��⵵-����� �߽ɻ󰡷� 146, 105ȣ (���յ�, ����������)','031-498-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP545','���������� ��������','��⵵-���� ������ ��ȭ�� 55-17, ����������','031-582-4111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP546','�Ѻ���������','��⵵-ȭ���� ������ �������� 101','356-4311',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP547','���ʳ�����������','��⵵-������ ������ ���ʵ��� 147, 106ȣ (â�, ���ʰǾ�Ÿ��)','031-778-8738',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP548','��︲��������','��⵵-���ν� ������ �ź�2�� 115-46, 1�� (�ź���)','031-548-2911',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP549','�ູ��������','��⵵-���ν� ó�α� ������ ������ 2362, �ջ��±ǵ��п�','031-334-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP550','������������','��⵵-ȭ���� ������ ��õ������ 1314',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP551','���ٿ����յ�������','��⵵-���ν� ������ ������112���� 11, 1�� 104ȣ (������)','031-272-1199',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP552','�д��ʵ�������','��⵵-������ �д籸 �ݰ��15���� 1 (���̵�)','031-718-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP553','���ߵ�������','��⵵-���ý� û���� û�ϳ��� 253, ������ 106ȣ','031-683-8764',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP554','���õ�������','��⵵-������ ������ ������ 35 (������)','751-3985',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP555','PET25�õ�������','��⵵-���ý� ���÷� 69 (���õ�)','655-6941',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP556','�����ϵ�������','��⵵-���ֽ� �������� �����Ϸ� 70-14','031-769-5675',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP557','���÷��� ��������','��⵵-������ �д籸 ��Ƽ�� 16, ����Ÿ��1 117ȣ (���ڵ�)','713-8391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP558','�׷��̵����ǷἾ��','��⵵-������ ������ ���ʱ���� 320, 214ȣ (â�, ���̿�����Ʈ��Ÿ��)','753-0303',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP559','�����������(�����������������������)','��⵵-���� ������ ���̷� 11',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP560','24�����嵿������(���յ������ǷἾ��)','��⵵-����� ���մ�� 230, 1�� 107ȣ (���յ�, ����������)','031-488-8075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP561','�����ѵ�������','��⵵-���� ���籸 ������ 63, 103ȣ (��۵�, ����������)','02-381-7963',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP311','���ӵ����ǷἾ��','��⵵-������ �絵��19���� 17, 2�� 201ȣ (ǳ����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP312','����̵�������','��⵵-������ �����߾ӷ�55���� 107 (���ŵ�)','031-572-7571',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP313','��õ�������','��⵵-�Ȼ�� �ܿ��� ������� 145, 102ȣ (���ܵ�,����׷����)','410-9759',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP314','���ﵿ���ǷἾ��','��⵵-���� ���籸 ������� 40, 201ȣ (������, ���°��������)','031-966-3328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP315','��ǳ��������','��⵵-������ �Ǽ��� ������514���� 1, 1�� (������)','031-239-3303',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP316','��ܹ��� �ѱ���������������ȸ ��������','��⵵-���ֽ� ���� ���ǻ�� 63-37','031-867-9119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP317','�عе�������','��⵵-���� �ϻ굿�� ����� 1139 (�Ļ絿)','319662777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP318','������������','��⵵-��õ�� �����490���� 5 (����)','678-0896',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP319','�Ե���Ʈ �ȼ��� ����','��⵵-�ȼ��� ������ ������� 4478, 2�� (�Ե���Ʈ)','031-618-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP320','ǳ����������','��⵵-���� �ϻ굿�� ���Ӹ����� 48 (ǳ��, �ż�������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP321','������������','��⵵-������ �߿��� ����� 341 (�ݱ���)','741-3012',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP322','�츮�굿������','��⵵-�Ȼ�� �ܿ��� �ű�� 8, 1�� 104-1ȣ (�ű浿)','493-3535',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP323','�̽��ϵ�������','��⵵-�Ⱦ�� ���ȱ� �޾ȷ� 61, 139ȣ (��굿, �����Ѿ����Ʈ)','031-386-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP324','������������','��⵵-�ϳ��� ��û�� 50-1, �󰡵� 1�� 101ȣ (���嵿, ����ѽž���Ʈ)','792-4904',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP325','���̳�����������','��⵵-�Ⱦ�� ���ȱ� ��ȴ�� 458, 1�� 103ȣ (���̵�, ���̸ް�Ÿ��)','031-425-3403',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP326','��Ƽ���յ�������','��⵵-������ �̹��ȷ� 15 (������)','031-555-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP327','���굿������','��⵵-��õ�� ���ַ� 219, �帲���� (�ߵ�)','321-7584',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP328','�¸���� ��������','��⵵-������ �д籸 �����Ϸ� 55, 108-110ȣ (�ݰ, �д�λ��������Ʈ)','715-7119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP329','�������� ����','��⵵-������ �д籸 ���Ǳ��� 160, 101ȣ (�Ǳ���, ��Ÿ�Ľ��븮)','8016-5559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP330','����������','��⵵-������ �߿��� ����� 375 (������)','031-749-7557',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP331','��ۻ�� �����ǷἾ��','��⵵-���� ���籸 ��۷� 92 (��۵�, �쿵������ 2��)','02-388-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP332','���е�������','��⵵-�Ȼ�� ��ϱ� ��������1�� 16, 109ȣ (���ǵ�)','482-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP333','�������յ�������','��⵵-������ ������ ���1�� 13','981-1516',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP334','�񿣵��������ǷἾ��','��⵵-��õ�� ���η� 475, ���κ��� (���ȵ�)','032-345-7559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP335','���������Ƿ��','��⵵-���ν� ������ ������ 77, 101ȣ (������, ��������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP336','����ȣ�� ��������','��⵵-���ν� ������ ���������� 91, 102,103ȣ (������)','312127515',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP337','�� ��������','��⵵-���� ���籸 ������� 52 (������, ���������� 104ȣ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP338','�޺� ��������','��⵵-��õ�� ��õ�� 718 (������)','676-7584',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP339','������ ��������','��⵵-������ �������� 120 (��â��)','031-563-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP340','24�ϻ�츮��������','��⵵-���� �ϻ꼭�� �߾ӷ� 1455 (�ֿ���, ����Ƽ������)','031-913-5550',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP341','��ġ�굿������','��⵵-���ν� ���ﱸ �����߾ӷ� 177 (�ߵ�, ���龾���� ���ǽ���)','031-8005-9725',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP342','���밡�ິ��','��⵵-���� ������ ����2�� 19, ���뵿������',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP343','�Ѻ��Ǳ�ũ����','��⵵-��õ�� ���θ� â���� 1841','315569008',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP344','�޻쵿������','��⵵-�ϳ��� ����� 176 (��ǳ��)','793-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP345','�ݸ������ǷἾ��','��⵵-���ֽ� �ݺ��� 24-28, �켺�޵��Ǿ� 2�� 201, 202ȣ (���̵�)','031-948-3375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP346','Dr.JK ��������','��⵵-���� �ϻ굿�� ����ȭ�� 17, �Ѷ�ж�Ʈ A�� 102ȣ (���׵�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP347','���� ���굿������','��⵵-���ν� ������ ������� 552, 3�� (������, �̸�Ʈ)','031-261-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP348','����','��⵵-��õ�� ��â�� 181 (â����)','031-633-9883',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP349','������������','��⵵-��õ�� ���η� 72 (�۳���)','6650075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP350','���ӵ�������','��⵵-���ν� ������ ������� 450 (ǳ��õ��)','031-898-4300',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP351','�켺��������','��⵵-�Ȼ�� ��ϱ� ���3�� 7-1, �켺�������� (���)','482-7536',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP352','��絿������','��⵵-���� ���籸 ������ 8 (��絿)','031-964-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP353','�����굿������','��⵵-����õ�� ��ȭ��2169���� 21 (�۳���)','031-868-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP354','����Ʈ��������','��⵵-���� �ϻ굿�� ȣ���� 678 (���׵�)','031-913-8820',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP355','���ϵ�������','��⵵-�����ֽ� ������ ����Ϸ� 513',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP356','��ź����ġ��������','��⵵-ȭ���� ����2�� 12-20, 101ȣ (��õ��)','031-373-6307',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP357','����� ��������','��⵵-���ν� ó�α� ����� �׾��� 1982','031-322-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP358','���ϵ�������','��⵵-���� ������ �̸����� 96','772-2727',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP359','�漭��������','��⵵-���� ���籸 �߾ӷ� 136, 102ȣ (ȭ����)','02-3158-0733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP360','�߾ӵ�������','��⵵-������ �ȴޱ� �ȴ޷� 163-1 (ȭ����)','031-255-3735',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP361','�������㵿������','��⵵-���ν� ������ ������ 58 (������, ����������Ʈ)','031-264-7502',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP362','�����ິ��','��⵵-���� ������ ���������� 27 (�����忩��)','582-2412',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP363','S��������','��⵵-��õ�� �󵿷� 78 (��, �� �����Ķ��)','323225222',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP364','��ǰ�ֵ�������','��⵵-�����ֽ� �ͺ��� ������ 34-1','558-9119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP365','���ϻ굿������','��⵵-���� �ϻ굿�� ���۷� 180, �鸶������ (���ε�)','9046681',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP366','�ǿյ�������','��⵵-�ǿս� ������ 372 (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP367','�������������','��⵵-ȭ���� ����� 990 (������, ȭ�� ���� �������� ��)','238-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP368','����','��⵵-���� �ϻ굿�� �����278���� 16 (�߻굿)','031-977-0154',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP369','�ֿ� ����������� ���� �������Ḧ �������� �ԡ�','��⵵-��õ�� ��ȣ���� �������8809���� 22-29',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP370','�̻縶����','��⵵-�ϳ��� �̻簭���Ѱ���158���� 56, 1�� 102ȣ (������)','031-795-7590',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP371','���������ӵ�������','��⵵-������ �д籸 ������ 58, ���������� ��������Ÿ 111ȣ (���ڵ�)','715-8203',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP372','���ӵ�������','��⵵-���ֽ� ������ 21 (������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP373','�¸�׵�������','��⵵-���ý� ������ �α�2�� 58','031-683-1333',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP374','���ɵ�������','��⵵-�����ν� ���ɷ� 37 (���ɵ�)','875-1476',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP375','�ض㵿������','��⵵-���ν� ���ﱸ ������ 117 (������, ������3)','031-889-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP376','������������','��⵵-���� ������ ��â�� 70 (������������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP377','������������','��⵵-�Ⱦ�� ���ȱ� ������ 109, 2�� 104ȣ (������, �����λ��������Ʈ �󰡵�)','031-473-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP378','�������յ�������','��⵵-������ ������ �ùη� 159 (���ﵿ)','758-7776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP379','�߾ӵ�������','��⵵-�Ⱦ�� ���ȱ� �Ⱦ�� 258 (�Ⱦ絿)','031-444-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP380','û�굿������','��⵵-ȭ���� ������ 3.1������ 29','351-2332',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP381','���� ��������','��⵵-��õ�� �ߵ���262���� 32, �쿵������ (�ߵ�)','323262992',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP382','�켺��������','��⵵-������ �д籸 ������ 481, �д�켺������ (������)','707-1776',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP383','ž�ɾ���Ƿ��','��⵵-���� ���籸 ȭ�ŷ�272���� 5, 2,3�� (ȭ����)','1666-7501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP384','�ٸ���������','��⵵-�����ν� ��ȭ�� 559-1 (�����ε�, �����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP385','��뿵��������','��⵵-�Ȼ�� ��ϱ� ��������1�� 94, 1���� 102ȣ (������,����������)','413-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP386','���ֵ�������','��⵵-�Ⱦ�� ���ȱ� ������ 428 (ȣ�赿, ������ũ 123ȣ, 215ȣ)','031-455-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP387','������ī��������','��⵵-�ȼ��� ������ ����� 8','031-656-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP388','�������յ�������','��⵵-�ȼ��� ���׸� ���Ϸ� 428','674-6551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP389','���뵿������','��⵵-������ �Ǽ��� �ż۰���� 661-1 (�����)','031-293-0285',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP390','���µ�������','��⵵-���� �ϻ꼭�� ����3�� 7-1 (���µ�, ���������� ���� 102.103ȣ)','031-922-5777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP391','������������','��⵵-�����ֽ� ������ ���ǿ����� 865','031-575-7598',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP392','���󵿹�����','��⵵-���ν� ó�α� ������ ����� 90','338-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP393','��� �츮���� ��������','��⵵-���� ���籸 ������ 54, 1�� (��絿)','031-965-0079',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP394','���������','��⵵-������ �Ǽ��� �ݰ��118���� 50, 1�� (�ݰ)','031-292-1682',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP395','��â����������','��⵵-���ý� ź���� 276 (���굿)','665-0046',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP396','��õ��ŵ�������','��⵵-��õ�� �߾ӷ� 170 (������)','031-536-7589',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP397','���̵�������','��⵵-���� �ϻ꼭�� ���Ƿ� 844 (���̵�)','919-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP398','�ռ��ǰ�����','��⵵-ȭ���� �Ⳳ�� 3.1������ 1126',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP399','�Ǳ� ���� ���ິ�� (������������)','��⵵-�ȼ��� ���׸� ��õ�� 75-0','031-676-7773',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP400','���ӵ�������','��⵵-ȭ���� ��ź������1�� 27 (�ݼ۵�)','031-8003-5999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP401','����������������','��⵵-���ý� ������ ���ط� 1146-20','031-683-3003',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP402','�ռ���������','��⵵-���� ���籸 �ſ���1�� 48 (�ſ���)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP403','���̵�������','��⵵-�����ν� ����� 357-1 (���ɵ�)','877-0675(6)',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP404','����������� (����������������)','��⵵-�ȼ��� ������ ������ 29-67','031-674-4432',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP405','�̸����������','��⵵-���ý� ���÷� 17, 1�� 104ȣ (���õ�, �Ե��κ��� ��ī��)','655-1101',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP406','�̻�ú���������','��⵵-�ϳ��� �̻簭���Ϸ�30���� 104, 1�� (������)','031-793-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP407','����ȣ �ѹ浿������','��⵵-������ �߿��� ���̴��63���� 11, �󰡵� 102ȣ (������, ��������������ġ1����)','031-722-2235',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP408','ź�� ��������','��⵵-���� �ϻ꼭�� ������ 131, 105ȣ (ź����)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP409','�Ｚ��������','��⵵-����õ�� �༱�� 55-1 (���ൿ)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP410','����������','��⵵-������ ���뱸 ��Ʈ��Ÿ��� 85, cb12ȣ (���ǵ�, Summit place ����)','031-548-1175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP411','�Ѹ��� �����ǷἾ��','��⵵-������ ��ȱ� ������ 300, 1�� (��ȭ��, ��������)','031-244-0117',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP412','���Ͻ� ��������','��⵵-�����ֽ� �ͺ��� ����õ�� 33 (�Ե���Ʈ�� 3��)','577-7606',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP413','����ϵ�������','��⵵-���ý� ����� 1511 (���굿)','031-665-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP414','���̰���̺���X���̰���������','��⵵-�Ȼ�� �ܿ��� ȭ���� 107, c�� 2-6-3ȣ (���, �󼺻�)','492-8555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP415','�ڸ��Ƶ�������','��⵵-���ý� �߾ӷ� 141 (������)','656-0524',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP416','��⵿������','��⵵-���� û��� û���߾ӷ� 8, ��⵿������',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP417','��Ÿ �����ǷἾ��','��⵵-ȭ���� ��ź��ȭ���ͷ� 75 (�ݼ۵�, ���ش����)','031-831-5508',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP418','���ֵ�������','��⵵-���ֽ� ��õ�� ������ 590',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP419','��������������','��⵵-ȭ���� ������ ����1�� 72','031-297-7556',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP420','����Ǯ��������','��⵵-���ֽ� �߾ӷ� 255 (���̵�, �ݳ�����)','031-945-7297',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP421','�ߺ�  ����������� ���� �������Ḧ �������� �ԡ�','��⵵-��õ�� ��õ�� 63-1 (�߸���)','031-634-3030',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP422','�˷��� ��������','��⵵-������ �д籸 ���Ǳ���177���� 25, 101,102,103ȣ (����, �Ǳ� ȣ�� ��� �÷��̽�)','031-8017-6125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP423','�̿�ö��������','��⵵-���� �ϻ꼭�� ����� 688, 201ȣ (�ϻ굿)','975-1475',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP424','���ϵ�������','��⵵-����õ�� �߾ӷ� 226 (������)','862-5151',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP425','�ż��赿������','��⵵-��õ�� ���η� 232, ����ũ ���񴺽�Ÿ 215ȣ (�ɰ��)','326147588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP426','������յ�������','��⵵-��õ�� ������ �ָ��� 118','031-544-0275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP427','���� ��������','��⵵-�ǿս� ����� 16 (������)','429-0975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP428','�Ҵ㵿������','��⵵-������ ��ȱ� �Ϸ��� 9 (õõ��)','031-269-1121',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP429','�źα� ��������','��⵵-���� �ϻ굿�� ����ȭ�� 11, �Ѷ�ж�Ʈ B�� 113ȣ (���׵�)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP430','�������������(��������� ���� �������Ḧ �������� ��)','��⵵-���ֽ� ������ ��õ�� 11','031-941-3030',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP431','���̽� ��������','��⵵-���ν� ������ ��õ�� 60, 1�� (��õ��)','031-266-2900',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP432','���굿������','��⵵-������ �д籸 źõ���151���� 20, �������,�ＺSDA (���̵�)','711-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP433','�츮��������','��⵵-��õ�� �߾ӷ� 50 (������)','031-536-0229',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP434','�ݿ���������','��⵵-�Ȼ�� ��ϱ� �ǰǷ� 117, 101,102ȣ (�ǰǵ�)','407-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP435','�üص�������','��⵵-�ǿս� ���Ϸ� 59, ȣ���� 1�� 3,4ȣ (���ϵ�)','031-423-4033',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP436','�� ��������','��⵵-���ν� ó�α� ��ϸ� ��Ϸ�185���� 46',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT004','���������� ȣ��','����Ư����-�߱� ���� 67','02-789-3165',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT005','ȣ�� ����','����Ư����-������ �����̷� 96','02-482-2463',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT006','���Ӽ��Ӹ��� ����','����Ư����-���α� �����2�� 7','02-027-1511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT007','������ ����׷��� �÷��� ���� �޸���Ʈ','����Ư����-������ 130','02-782-8485',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT008','�˷���Ʈ ���� ����','����Ư����-������ ������� 736','02-179-6331',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT028','������Ƽ ȣ�� ��õ������','��õ������-�߱� ������� 196���� 19','032-688-8122',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT029','���� ��ũ ����','��õ������-�߱� ����������� 10','032-659-7439',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT030','���� �ַ��� ȣ��','��õ������-����������� 32','032-009-2933',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT031','Ʈ���Ͽ콺','��õ������-���׷�424����60 1037ȣ','032-363-1944',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT032','Happia2','��õ������-���� ���ַ� 116','032-366-1513',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT033','�����Ͽ콺 #6','��õ������-��ȭ�� ���� �������� 80-6','032-748-0857',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT052','��������Ƹ��콺 U��2023ȣ','��󳲵�-���� ���� ������� 5697-10','055-870-9104',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT053','�����ڿ� ��纣�� �������','��󳲵�-���� ���� ������ 1062','055-705-1885',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT054','���� ����Խ�Ʈ�Ͽ콺','��󳲵�-���� ����4�� 53','055-791-3241',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT055','������ ���','��󳲵�-���� �Ͽ�� ������� 1988-10 (�Ͽ��)','055-554-1290',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT056','�ܵ� ���� ���','��󳲵�-���� �Ͽ�� ������ 60','055-090-3057',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT075','�ȳ� �Ͽ콺 �븮 ���','��⵵-���� ������ ����ϱ� 724','031-011-6108',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT001','���丮�� ���� Ȩ J','����Ư����-�߱� ĥ�з� 27','02-454-5680',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT002','�������� �÷��̽� ��Ʈ�� ����','����Ư����-�߱� ���Ϸ� 78','02-611-1653',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT076','�����Ͽ콺602','��⵵-���ν� ���ﱸ �뱸��� 2360���� 15 1�� 602ȣ','031-503-1295',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT077','�÷�����Ƽ 312','��⵵-���ν� ���ﱸ �뱸���2360���� 15','031-458-9501',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT078','�� �� �󸣰�','��⵵-���ν� ������ ����377���� 51-24','031-390-6708',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT009','������ ȣ�� ����','����Ư����-���α� �����ȷ� 97','02-185-0293',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT010','���� ������Ʈ �� ��','����Ư����-�߱� ����14�� 29','02-516-5052',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT011','�ٿ� ����','����Ư����-������ ��ȭ��23�� 16-6','02-108-9660',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT012','�ٿ� ��','����Ư����-������ ��ȭ��23�� 16-6','02-891-8487',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT013','��ũ��� �����̾� �ڿ��� ����','����Ư����-������ �������87�� 46','02-644-8822',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT014','�׷��� ��ť�� �ڹ輭�� ȣ�� �� �������� ���� ���','����Ư����-��걸 û�ķ� 20�� 83','02-049-3099',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT015','����ũ�� �Խ�Ʈ�Ͽ콺','����Ư����-������ �Ϳ���35�� 53','02-308-4555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT016','�ְŻ繫���Ȩ���ǽ�','����Ư����-��õ�� ������152�� 11-43','02-640-0576',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT017','�� �Խ�Ʈ�Ͽ콺 ����','����Ư����-������ ������159�� 22-2','02-377-6635',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT018','�ѽ� �Ͽ콺','����Ư����-���α� ü�ε� 155-1','02-872-9384',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT019','Ǯ�� �̴� ȣ��','����Ư����-���α� ����18�� 5','02-768-2489',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT022','ȣ Ȩ��','����Ư����-������ �����ŷ�10�� 5-5','02-713-6861',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT023','������ �Ͽ콺','����Ư����-������ ������34�� 20 101ȣ','02-702-6505',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT024','�뿤�� �Խ�Ʈ�Ͽ콺','����Ư����-��걸 ���¿� 1��129-18','02-155-1046',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT026','ȣ�� �� ��õ����','��õ������-�߱� ���׷�424���� 60','032-352-5391',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT027','��ũ��� �����̾� ��õ','��õ������-������ �����þƴ�� 165','032-083-5274',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT034','�Ƹ��� ȣ��','�λ걤����-�λ����� �߾Ӵ�� 691���� 32','051-917-0832',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT035','�׷��� ���� �λ�','�λ걤����-�ؿ�뱸 �ؿ���غ��� 292','051-977-9733',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT036','������ �������� ȣ��','�λ걤����-���� 243���� 1F, 73-5','051-909-1813',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT037','����','�λ걤����-�ؿ�뱸 ������41���� 27-1','051-708-7462',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT038','���� �����Ͻ� ȣ��','�λ걤����-�ؿ�뱸 ������ 46','051-656-0044',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT039','�� ���� �����̾� ����Ʈ','�λ걤����-�ؿ�뱸 �ؿ���غ���197���� 12','051-393-6442',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT040','ȣ�� �� ���','�λ걤����-������ �����Ŵ��111���� 6-10','051-344-2729',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT041','ȣ�� ������','�λ걤����-�ؿ�뱸 �ؿ���غ��� 298���� 29 A110','051-054-8651',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT042','�� ��Ƽũ','�λ걤����-������ �ƽþƵ���184���� 35','051-169-9793',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT043','��� �ٴٿ�','������-���� ��õ�� �ؾȷ� 1081','033-495-6258',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT044','���糪 ����','������-���� ��õ��62���� 20 �׸��� ���� 203ȣ','033-015-3880',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT045','��� ����ƾ','������-���� ��õ�� 119','033-706-5183',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT046','������ Ǫ�� �ٶ���','������-���� ��õ��62���� 20 501ȣ','033-588-6334',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT047','��ũ �Ͽ콺','������-���� ��õ��62���� 20','033-213-1865',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT048','��â �󸶴� ȣ��, ��������','������-��â ����ɸ� 107','033-851-8683',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT049','�ܵ� �縮�� ���','��󳲵�-���� �Ͽ�� ������ 58','055-082-4754',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT050','Js �������� ȣ��','��󳲵�-���� ��󳲵� ������ ������4�� 20','055-981-8585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT051','�����̵� ���','��󳲵�-���� ���� 1202-2','055-797-1185',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT059','���� ����� ��Ÿ�߸���','��󳲵�-���� ��󳲵� ������ ���θ� �رݰ�2�� 1-1','055-876-0184',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT060','�뿵 �������','��󳲵�-�뿵 ����� ��Ʒ����� 134-48','055-903-7143',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT061','��� Ȳ ���','���ϵ�-���� ���� ȣ�̰��� ����� 715','054-348-2446',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT062','���׻� ȣ�� ����','���ϵ�-���� ���� �����57���� 6','054-877-3144',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT063','���� Ŭ���峪��','���ϵ�-���� �ϱ� û�ϸ� �ؾȷ�1918���� 37-2','054-771-7246',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT064','��� �ٶ��� �Ҿ���°�','���ϵ�-���� õ�ϸ� ��õ�ȱ� 26-40','054-187-2168',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT065','�ٳ��� ȣ��','���ֱ�����-���걸 22-13','062-170-2470',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT066','��ݽ����� ȣ��','���ֱ�����-���걸 �������232���� 7','062-656-2795',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT067','�� ���� ����','���ֱ�����-���̵� 982-7','062-015-7836',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT068','���޽� ���� �̷�ȣ��','��⵵-����� �����߾ӷ�70���ȱ� 12','031-179-7640',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT069','����÷���ȣ��','��⵵-��õ�� �ַ����� 67-23','031-399-3853',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT070','�ѹ�25 �����ֺ�����','��⵵-�����ֽ� ������ û�з�92���� 137','031-639-9261',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT071','�۽��� ȣ��','��⵵-���ý� �߾ӽ���� 3','031-362-6618',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT072','ȣ�� ����','��⵵-���ý� �ؼ��� ������45���� 11-6','031-297-3818',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT073','�ص��� ���','��⵵-ȭ���� ���Ÿ� �ؾȱ� 90','031-530-4301',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT074','�ֳ��� ���','��⵵-���� �ϸ� ��з�560���� 17','031-092-5515',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP805','�ϻ� Ŭ���� ��������','��⵵-���� �ϻ굿�� �߾ӷ� 1124, 1�� (�鼮��, �̸�Ʈ�����)','031-902-1375',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP806','WE ��������','��⵵-������ ��ȱ� ����� 109 (���ڵ�)','031-269-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP807','�Ѻ���������','��⵵-�Ⱦ�� ���ȱ� ��ȴ�� 113 (ȣ�赿)','031-429-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP808','��õ��������','��⵵-��õ�� �߾ӷ� 170 (������)','031-535-2978',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP809','�����Ƶ�������','��⵵-������ �Ǽ��� ��ȣ�� 261 (���)','031-295-5975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP810','���ﵿ������','��⵵-����� ȣ���� 40 (��ߵ�)','031-313-7780',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP811','�빮���Ƶ�������','��⵵-���� �빮�� �ٹ��߾�1�� 3','031-771-7585',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP812','��õ24��SKY�����޵��ü���','��⵵-��õ�� ���ַ� 234, ��������Ʈ �ߵ� 203�� 2001, 2007ȣ (�ߵ�)','032-323-7579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP813','�ٿ쵿������','��⵵-�ȼ��� ������ ������ 50','316570016',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP814','���굿������','��⵵-���ֽ� ������ ����� 35','031-953-7570',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP815','������������','��⵵-��õ�� ���η� 494, ���������� (���ȵ�)','3431397',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP816','���ǵ�������','��⵵-���ν� ���ﱸ ���Ϸ� 141, 104ȣ (���ϵ�)','287-7275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP817','�Ǳ� ��������','��⵵-������ ������ ������ 131, 109ȣ (����, ������ī�̺�)','031-721-4111',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP818','�����������ǷἾ��','��⵵-����� ������� 466, ���θ�ġ������ 201,202ȣ (�ݾϵ�)','031-373-2975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP819','�� �Ķ���̽� ��������','��⵵-���ֽ� û�Ϸ�17���� 17, 2�� 17ȣ (�񵿵�)','031-948-5806',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP820','ȫ�͵�������','��⵵-ȭ���� ������ ���ϺϷ�57���� 1, 2��','358-6151',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP821','�Ͼȵ�������','��⵵-����� �Ͼȷ� 309, ���κ��� 1�� 105ȣ (�Ͼȵ�)','02-897-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP822','J AND C ��������','��⵵-��õ�� ������ �žϷ� 91','031-643-5545',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP823','���ϵ�������','��⵵-ȭ���� ������ 3.1������ 69-5, 201ȣ (����������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP824','���ﵿ������','��⵵-������ ������ ������ 110, 1�� (������)','721-2423',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP825','�������ິ��','��⵵-����õ�� �߾ӷ�217���� 8 (������)','031-861-2328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP826','�Ǳ� �ູ�� ��������','��⵵-������ �д籸 ���Ǳ��� 226, 204, 205, 206ȣ (����, ���鸶��4��������Ʈ)','8017-5575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP827','���ϵ�������','��⵵-�Ⱦ�� ���ȱ� �ùδ�� 187, 105ȣ (��굿, �Ⱦ�Ǽ�Ÿ��)','031-388-1845',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP828','������������','��⵵-�Ⱦ�� ���ȱ� ����� 6, 207ȣ (���絿, ����Ʈ������)','031-425-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP829','������ ��������','��⵵-���� �ϻ꼭�� ��ȭ�� 120, ������������ (��ȭ��)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP830','�ٷ��⵿������','��⵵-��õ�� �����2�� 20, 124ȣ (���絿, ���������)','02-502-7509',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP831','���Է�','��⵵-ȭ���� ������ ����� 839, ��츮2������ 1�� 110,111,112ȣ','313696381',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP832','�ູ�ѵ�������','��⵵-��õ�� �����13���� 14-16, ��������� (��)','324-3004',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP833','Ǫ����������','��⵵-���ֽ� ������ 27-1, Ǫ���������� (ȫ����)','883-6363',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP834','�Ⱦ��굿������','��⵵-�Ⱦ�� ���ȱ� �����52���� 37, 202ȣ (�Ⱦ絿, ��ũ������)','031-446-6575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP835','�鼮��������','��⵵-���ֽ� �鼮�� �޳����� 163','031-879-7433',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP836','�������������','��⵵-�����ֽ� ����� 32, 306ȣ (����)','512-3200',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP837','�ູ���ִµ�������','��⵵-������ �д籸 ������ 79, 104ȣ (�ݰ, ��������)','714-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP838','���������󵿹�����','��⵵-�����ֽ� ������ ������ 112-1','574-5957',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP839','�ʿ���������','��⵵-���� �ϻ꼭�� �ϻ�� 589, ���������� (�ϻ굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP840','�Ǳ���������','��⵵-������ �̹��ȷ� 27 (������)','569-0277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP841','����뵿�����պ���','��⵵-ȭ���� ����2�� 9 (������)','238-7979',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP842','������������','��⵵-������ ��ȱ� �����ŷ� 425-2 (������)','031-241-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP843','���׸��ȵ�������','��⵵-�ϳ��� �̻簭�����226���� 48, A+���������� 202ȣ (������)','031-791-0306',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP844','�������յ�������','��⵵-���ν� ���ﱸ �������� 15, 103ȣ (������)','031-274-3575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP845','�ټص�������','��⵵-��õ�� ������ 116, ������� (���)','032-351-3031',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP846','�Ѻ� ��������','��⵵-������ ��ȱ� ������19���� 29 (õõ��)','031-252-2119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP847','��(Gen)��������','��⵵-������ �д籸 ������ 479, 2�� (��ž��)','031-752-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP848','������������','��⵵-���ν� ���ﱸ �μ��̷� 43 (����)','031-286-8999',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP849','�ε����յ�������','��⵵-��õ�� ���̷� 117 (���̵�, ��������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP850','������������','��⵵-���ֽ� �������� �뼮���� 73','797-4755',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP851','24���ص絿���޵��ü���','��⵵-��õ�� ����� 190, �����������Ʈ (�ߵ�)','327157579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP852','������������','��⵵-���ֽ� ���ɷ� 207 (�Ƶ���, ������������)','031-944-8288',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP853','ȿ����������','��⵵-������ ���뱸 �Ǽ��� 805, 1�� (��ź��, �������˷ο�)','031-238-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP854','�亣��Ʈ ��������','��⵵-���� �ϻ굿�� �ϻ��441���� 15-19 (���߻굿)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP855','Ÿ���� �����ǷἾ��','��⵵-������ �ȴޱ� ������ 486, 1,2,3�� (�ΰ赿)','031-232-3500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP856','������������','��⵵-������ ��ȱ� ����õ�� 187 (���ڵ�, �Ե�������)','031-253-4313',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP857','���ͱ� ��������','��⵵-������ ���뱸 ������ 1623, 124ȣ (���뵿, �帲�Ǿƺ���)','031-203-8277',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP858','�ƶ쵿������','��⵵-������ �����Ѱ�4�� 113, 1�� 106ȣ (��⵿, ����������)','319856125',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP859','�߾Ӿְ����պ���','��⵵-������ ������ 83-2 (��쵿)','984-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP860','�ظ��絿������','��⵵-������ �д籸 Ȳ�����319���� 8-6 (������)','781-2992',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP861','�ؼֵ�������','��⵵-ȭ���� ��ź��õ�� 354-11, 106~107ȣ (�ɵ�)','8003-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP862','��ź�߾ӵ�������','��⵵-ȭ���� ��ź��νù��� 146, 201ȣ (û�赿)','031-373-7524',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP863','���� ��������','��⵵-����� ��ѱ������ 21 (��ߵ�)','031-314-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP864','��Ű��������','��⵵-�����ν� ��ȭ�� 238 (ȣ����)','031-875-1559',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP865','Dr.dog�����ǷἾ��','��⵵-���� �ϻ굿�� �ϻ��394���� 5-9 (���߻굿)','031-932-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP866','���ε��㵿������','��⵵-���ν� ���ﱸ ����1��2���� 6 (���鵿)','031-548-2526',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP867','Ʈ������������','��⵵-�ϳ��� �ϳ���� 763 (���嵿)','795-7175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP868','���۵�������','��⵵-������ ������ ������ 36, 104ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP869','�츮��������','��⵵-������ ������ ���Ϸ� 187, 101ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP870','�⸰��������','��⵵-��õ�� ���ַ� 273, �Ÿ�Ÿ�� (�ߵ�)','323220506',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP871','�۴㵿������','��⵵-���ý� ������ �����μ�8�� 35-4 (101ȣ)','031-686-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP872','�����Ǿ��ѹ浿������','��⵵-�Ⱦ�� ���ȱ� �Ⱦ�� 355 (�Ⱦ絿)','031-469-7581',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP873','�������յ�������','��⵵-���ֽ� �Ƶ��� 11-1 (���̵�)','031-941-7777',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP874','�ε���������','��⵵-���ֽ� ������ ���̷� 1636 (�ε���������)','031-952-7576',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP875','�츮��������','��⵵-����� ����� 174, �ٸ�������� 101,102ȣ (����)','031-373-8486',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP876','���ֵ�������','��⵵-���ֽ� ������ ������ 186','031-855-3113',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP877','���ϵ�������','��û�ϵ�-û�ֽ� ��籸 ������ 245����','043-256-3309',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP878','�ѱ���������','��û�ϵ�-û�ֽ� ��籸 ���� 15-1 (������1��)','043-221-3815',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP879','�츮��������','��û�ϵ�-û�ֽ� ��籸 �߰��� 305 (��õ��)','043-223-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP880','������������','��û�ϵ�-û�ֽ� ��籸 �꼺��116���� 25 �󰡵� 101ȣ (��㵿 �ο�����Ʈ5����)','043-286-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP881','������������','��û�ϵ�-û�ֽ� ��籸 ����� 151-1 (��ϵ�)','043-294-8855',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP882','���������','��û�ϵ�-û�ֽ� ��籸 ��ϺϷ� 154 (��ϵ�)','043-293-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP883','����������','��û�ϵ�-û�ֽ� ��籸 �̿��� �̿��ó�2�� 39','043-283-7583',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP884','û�ַ�����������','��û�ϵ�-û�ֽ� ��籸 ��Ϸ� 171 (��ϵ�)','043-201-4883',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP885','������������','��û�ϵ�-û�ֽ� ��籸 ���ϸ� ����� 509','043-237-3319',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP886','24��û�� ���������޵���','��û�ϵ�-û�ֽ� ��籸 1��ȯ�� 1233','043-716-1275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP887','�����̵����ǷἾ��','��û�ϵ�-û�ֽ� ��籸 �߰��� 191 (��ϵ�)','043-288-7599',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP888','����������','��û�ϵ�-û�ֽ� ������ 1��ȯ�� 1109 (����)','043-288-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP889','�׸���������','��û�ϵ�-û�ֽ� ������  ������� 255 (������)','043-275-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP890','�Ѻ���������','��û�ϵ�-û�ֽ� ������ ������� 147','043-277-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP891','�Ϳ͵�������','��û�ϵ�-û�ֽ� ������ ������� 247-1 (������)','043-273-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP892','�������յ�������','��û�ϵ�-û�ֽ� ������ ������ û���� 2013 (����)','043-288-8575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP893','�� ��������','��û�ϵ�-û�ֽ� ������  �����3���� 81 (���ŵ� ��������Ʈ �� 110ȣ)','043-275-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP894','�곲��������','��û�ϵ�-û�ֽ� ������  �곲�� 64 104ȣ (�곲��������ȣ�����)','043-294-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP895','��ϴ��б� �����ǷἾ��','��û�ϵ�-û�ֽ� ������ ���� 1 (���ŵ�)','043-261-2602',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP896','���̽���������','��û�ϵ�-û�ֽ� ������  ����� 11 (���ŵ�)','043-238-0055',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP897','���ֵ�������','��û�ϵ�-û�ֽ� ������ �곲�� 77 101ȣ (�곲��)','043-294-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP898','��������޵��ü���','��û�ϵ�-û�ֽ� ������ ������� 246 (������)','043-268-5677',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP899','û��24��������','��û�ϵ�-û�ֽ� ������  ������� 256 (������)','043-267-4119',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP900','������������','��û�ϵ�-û�ֽ� ����� ������ ���μ���540-1','043-233-2145',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP901','�츮��������','��û�ϵ�-û�ֽ� ����� ����� ����ó�1�� 29','043-260-1684',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP902','��ϵ�������','��û�ϵ�-û�ֽ� ����� ������� 18(���뵿)','043-271-7348',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP903','��絿�����պ���','��û�ϵ�-û�ֽ� ����� ǳ��� 33����4(���浿)','043-235-0094',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP904','������������','��û�ϵ�-û�ֽ� ����� ���μ��� 1358(���뵿)','043-231-6972',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP905','�����̳׵�������','��û�ϵ�-û�ֽ� ����� ǳ��� 82(���浿)','043-236-0175',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP906','�ູ�ѵ�������','��û�ϵ�-û�ֽ� ����� ����� 136(���뵿)','043-233-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP907','Ĺ�ص���������','��û�ϵ�-û�ֽ� ����� ǳ��� 59(���浿)','043-237-7852',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP908','���е�������','��û�ϵ�-û�ֽ� ����� 1��ȯ�� 539(����)','043-260-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP909','�������� �̾߱�','��û�ϵ�-û�ֽ� ����� ������� 622(����)','043-904-2606',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP910','���ε����ǷἾ��','��û�ϵ�-û�ֽ� ����� ����� 41(���뵿 ǳ�����)','043-232-7580',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP911','�߿�Ƽ��','��û�ϵ�-û�ֽ� ����� ������ ���ۻ���6�� 63','043-249-7500',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP912','������������','��û�ϵ�-û�ֽ� ����� ���Ϸ� 64(���ϵ�)','043-233-7512',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP913','�Ƶ�������','��û�ϵ�-û�ֽ� ����� ������ ������ 97','043-238-9969',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP914','û��������������','��û�ϵ�-û�ֽ� ����� ���� 70 104ȣ(���뵿 ��Ʈ��Ÿ��)','043-239-7575',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP915','����뵿������','��û�ϵ�-û�ֽ� ����� ������ ����2�� 8',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP916','û�ֽ� �ݷ�������ȣ����','��û�ϵ�-û�ֽ� ����� ������ ���η� 411-55','043-231-0047',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP917','�ѻ���������','��û�ϵ�-û�ֽ� ����� 2��ȯ�� 1261���� 4(���浿)','043-267-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP918','�ŵ�������','��û�ϵ�-û�ֽ� ����� ������ ����1��103-2',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP919','���泪����������','��û�ϵ�-û�ֽ� ����� ������90(���浿)','043-236-7975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP920','����������','��û�ϵ�-û�ֽ� û���� ��û��� 97 (������)','043-256-2551',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP921','��â��������','��û�ϵ�-û�ֽ� û���� ��â�� ��븮 294','043-217-2069',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP922','���ﵿ������','��û�ϵ�-û�ֽ� û���� ��â�� ��븮 294','043-217-9721',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP923','�Ҹ����յ�������','��û�ϵ�-û�ֽ� û���� ���׷� 100-1 (������)','043-212-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP924','û��������������','��û�ϵ�-û�ֽ� û���� ��ϵ� 378-7','043-255-7284',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP925','����ȯ��������','��û�ϵ�-û�ֽ� û���� ���� 297 (������)','043-216-8274',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP926','�������յ�������','��û�ϵ�-û�ֽ� û���� ���׷� 102 (������)','043-217-0078',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP927','��ϳ������������','��û�ϵ�-û�ֽ� û���� ���̸� ����2�� 66-10','043-215-9336',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP928','���ﵿ������(�����������)','��û�ϵ�-û�ֽ� û���� ������ ��û��� 424','043-212-9117',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP929','ưư��������','��û�ϵ�-û�ֽ� û���� ��â�� ���� 637���� 9ȣ ���ĭŸ������Ʈ �� 101ȣ','043-241-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP930','�ϳ���������','��û�ϵ�-û�ֽ� û���� ���ͷ� 22-1 (������)','043-223-5511',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP931','���Ͻ���������','��û�ϵ�-û�ֽ� û���� ��â�� �߽ɻ��1�� 8-11 (Ȩ�÷��� ��â��)','043-283-7305',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP932','��Ͼ߻���������','��û�ϵ�-û�ֽ� û���� ��â�� ��û4�� 45','043-216-3328',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP933','24��û��i��������','��û�ϵ�-û�ֽ� û���� ��û��� 103 (������)','043-214-9975',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP934','��Ÿ��������','��û�ϵ�-û�ֽ� û���� ��â�� ��û������ 119 (��Ʃ���)','043-211-9669',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP935','���ε�������','��û�ϵ�-û�ֽ� û���� ��â�� �߽ɻ��1�� 46-17','043-288-7533',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP936','û�ֿ´��������޵��ü���','��û�ϵ�-û�ֽ� û���� 1��ȯ�� 148 201ȣ(������)','043-716-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP937','�ٳ���������','��û�ϵ�-û�ֽ� û���� ��â�� ������ 82-1 101ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP938','������������','��û�ϵ�-û�ֽ� û���� ��â�� ��û1�� 21 ����Ÿ��','043-240-7654',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP939','���ֵ�������','��û�ϵ�-û�ֽ� û���� ��â�� ��â�ó�5�� 7',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP940','�Ǳ���������','��û�ϵ�-û�ֽ� û���� ������ ����5�� 24-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP941','�ڵ�������','��û�ϵ�-���ֽ� ������ 6-5 (�ݸ���)','043-842-4579',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP942','����������������','��û�ϵ�-���ֽ� ������ 256 (������)','043-850-7555',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP943','�����յ�������','��û�ϵ�-���ֽ� ����õ��1�� 57 (������)','043-854-8054',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP944','���뵿������','��û�ϵ�-���ֽ� ������� 144 (������)','043-851-3040',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP945','���ε�������','��û�ϵ�-���ֽ� ����� 155 (������)','043-844-2223',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP946','����̵�������','��û�ϵ�-���ֽ� ������� 108 (������)','043-843-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP947','������������','��û�ϵ�-���ֽ� �ݸ��� 78 (������)','043-857-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP948','�߾ӵ����ǷἾ��','��û�ϵ�-���ֽ� ������� 131 1�� (������)','043-852-8875',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP949','����������','��û�ϵ�-���ֽ� ��ҿ��� ����� 16 1��',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP950','ū��������','��û�ϵ�-���ֽ� �ִ��� �Ŵ��� 1364-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP951','���õ�������','��û�ϵ�-���ֽ� ����� 15(�ϳ����� 1��)','043-911-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP952','��굿������','��û�ϵ�-���ֽ� ������ 54-11','043-847-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP953','�߿���������','��û�ϵ�-���ֽ� õ���� 249(������)',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP954','���ֵ�������','��û�ϵ�-��õ�� �Ǹ����15��24','043-643-6100',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP955','��õ���յ�������','��û�ϵ�-��õ�� �Ǹ����155-2','043-652-0075',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP956','���ϵ�������','��û�ϵ�-��õ�� �Ǻ����55-3','043-643-3037',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP957','������������','��û�ϵ�-��õ�� �����34','043-645-8272',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP958','�׷��̽���������','��û�ϵ�-��õ�� ���Ϸ� 51��(�����)','043-652-7582',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP959','���󵿹�����','��û�ϵ�-��õ�� �Ǹ���� 285 2��(û����)','043-648-0750',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP960','�ٷε�������','��û�ϵ�-��õ�� ���õ�� 114-8',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP961','�������޵�������','��û�ϵ�-��õ�� �Ǹ���� 41 1��(��õ��)','043-653-7588',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP962','�ݰ���������','��û�ϵ�-��õ�� ���õ�� 73-13 2��',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP963','���ﵿ������','��û�ϵ�-������ ������ ������ 90-1','043-544-2342',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP964','�ֻ����������','��û�ϵ�-������ ������ ������ 119-1','043-543-0753',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP965','�ѱ���������','��û�ϵ�-������ ������ ��곲�� 34','043-543-3514',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP966','�߾ӵ�������','��û�ϵ�-������ ���θ� ��������� 106','043-543-7595',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP967','�����쵿������','��û�ϵ�-������ ������ ��곲�� 43-1','043-543-5237',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP968','E-�����Ƿ��','��û�ϵ�-������ ���θ� ��������� 95-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP969','������õ�������� ��������','��û�ϵ�-������ ������ ���� 57','043-540-6399',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP970','��õ��������','��û�ϵ�-��õ�� ��õ�� ��ݷ� 53','043-732-8844',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP971','�Ƹ���������','��û�ϵ�-��õ�� ��õ�� ���� 41-1','043-731-3935',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP972','û�굿������','��û�ϵ�-��õ�� û��� ����1�� 10-1','043-732-8173',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP973','��������������','��û�ϵ�-��õ�� ��õ�� ����� 23','043-733-1548',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP974','�����������','��û�ϵ�-��õ�� ��õ�� ����� 81-8','043-733-3478',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP975','���뵿������','��û�ϵ�-��õ�� ��õ�� ����2�� 42-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP976','�����յ���������','��û�ϵ�-������ ������ ����õ2�� 5','043-742-2055',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP977','�����ֵ�������','��û�ϵ�-������ ������ ���� 54','043-743-4797',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP978','�鵿������','��û�ϵ�-������ ������ ���� 27 (��ȭ���� 1��)','043-744-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP979','�츮��������','��û�ϵ�-���� ������ �ŵ��� 111����','043-836-4020',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP980','���򵿹�����','��û�ϵ�-���� ������ ������ 39����','043-836-2246',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP981','���ֵ�������','��û�ϵ�-���� ������ â���� 791����','043-838-4275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP982','�ϳ���������','��û�ϵ�-���� ������ ����� 100','043-838-4742',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP983','�ٷе�������','��û�ϵ�-���� ������ �ۻ�� 8�� 4-26',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP984','��õ������������ ��������','��û�ϵ�-��õ�� ��õ�� �߾Ӽ��� 53 (��õ���� ����)','043-533-8109',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP985','������ ��������','��û�ϵ�-��õ�� �������� ���2�� 12-5','043-535-2380',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP986','��õ ��������','��û�ϵ�-��õ�� ��õ�� ��ȭ6�ȱ� 14-1','043-533-7212',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP987','�����ǰ� ��������','��û�ϵ�-��õ�� ��õ�� ������ 342','043-534-1548',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP988','�׸��������� ��������','��û�ϵ�-��õ�� ��õ�� �߾ӵ��� 127-1','043-534-8275',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP989','�Ѹ��� ��������','��û�ϵ�-��õ�� ��õ�� ������ 386���� 4ȣ',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP990','�ټ� ��������','��û�ϵ�-��õ�� ��õ�� �߾ӵ��� 33','043-533-0435',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP991','����Ʈ�� ��������','��û�ϵ�-��õ�� ������ �ð��� 24 109ȣ 110ȣ','043-537-1722',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP992','CM��������','��û�ϵ�-��õ�� �������� ȭ��2�� 12-4 1��','043-533-8868',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP993','��������������������','��û�ϵ�-���걺 ���걺 ������ ������2�� 39 (������������)','043-833-8870',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP994','������ ��������','��û�ϵ�-���걺 ���걺 ������ ������2�� 45','043-832-2174',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP995','�� ��������','��û�ϵ�-���걺 ���걺 ������ �񵵷�3�� 1','043-833-7137',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP996','�赿������','��û�ϵ�-���걺 ���걺 �縮�� ��ȭ2�� 1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP997','���ϵ�������','��û�ϵ�-���걺 ���걺 ������ �Ӳ����� 159',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP998','�����������','��û�ϵ�-���걺 ������ ����1�� 41-1',null,1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HP999','�Ｚ���ິ��','��û�ϵ�-������ �Ｚ�� �뼺�� 613','043-878-5316',1);
Insert into HO (HO_CODE,HO_NAME,HO_ADDR,HO_TEL,HO_STATE) values ('HT003','ȣ�� īǪġ��','����Ư����-������ ������� 155','02-685-6726',1);
REM INSERTING into LOCALCITYCODE
SET DEFINE OFF;
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'����','11B10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'��õ','11B20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20605');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�Ⱦ�','11B20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B10103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11B10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20606');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�ǿ�','11B20609');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20612');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20610');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�ȼ�','11B20611');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','ȭ��','11B20604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','������','11B20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�ϳ�','11B20504');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11B20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20702');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','������','11B20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','���','11B20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20305');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����õ','11B20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11B20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11B20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��ȭ','11B20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11B20202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11B20204');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�Ȼ�','11B20203');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��ɵ�','11A00101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'�λ�','11H20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'���','11H20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11H20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','���','11H20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','â��','11H20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�о�','11H20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�Ծ�','11H20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','â��','11H20604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�Ƿ�','11H20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11H20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�ϵ�','11H20704');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��õ','11H20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��â','11H20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��õ','11H20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��û','11H20703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�Ծ�','11H20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�뿵','11H20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11H20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��','11H20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11H20405');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'�뱸','11H10701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11H10702');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','���','11H10703');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','û��','11H10704');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','ĥ��','11H10705');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11H10601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','���','11H10604');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10605');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�ȵ�','11H10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�Ǽ�','11H10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','û��','11H10503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11H10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��ȭ','11H10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11H10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�︪��','1.1E102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','1.1E103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'����','11F20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�强','11F20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���','11F20504');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','ȭ��','11F20505');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20801');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20804');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20802');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�ž�','21F20803');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��굵','11F20701');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��õ','11F20603');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�','11F20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�ϵ�','11F20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�س�','11F20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�ͻ�','11F10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10203');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','21F10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��â','21F10601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�ξ�','21F10602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��â','11F10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10204');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�ӽ�','11F10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���','11F10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11F10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'����','11C20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'����','11C20404');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11C20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','���','11C20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','���','11C20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�ݻ�','11C20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','õ��','11C20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�ƻ�','11C20302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11C20303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11C20101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�¾�','11C20102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11C20103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','ȫ��','11C20104');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','����','11C20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','��õ','11C20202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','û��','11C20502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('�泲','�ο�','11C20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','û��','11C10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10304');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10303');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11C10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10103');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11C10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','�ܾ�','11C10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��õ','11C10403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','����','11C10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('���','��ǳ��','11C10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','ö��','11D10101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','ȭõ','11D10102');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D10201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�籸','11D10202');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��õ','11D10301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','ȫõ','11D10302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D10401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','Ⱦ��','11D10402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D10501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D10502');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��â','11D10503');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�����','11D20201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D20401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��','11D20402');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���','11D20403');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D20501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11D20601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','��ô','11D20602');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�¹�','11D20301');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values (null,'����','11G00201');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','������','11G00401');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','����','11G00101');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���','11G00501');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���Ǿ�','11G00302');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','�̾','11G00601');
Insert into LOCALCITYCODE (LOCAL,CITY,CODE) values ('����','���ڵ�','11G00800');
REM INSERTING into LOCALCODE
SET DEFINE OFF;
Insert into LOCALCODE (LOCAL,CODE) values ('����, ��õ, ��⵵','11B00000');
Insert into LOCALCODE (LOCAL,CODE) values ('������ ����','11D10000');
Insert into LOCALCODE (LOCAL,CODE) values ('������ ����','11D20000');
Insert into LOCALCODE (LOCAL,CODE) values ('����, ����, ��û����','11C20000');
Insert into LOCALCODE (LOCAL,CODE) values ('��û�ϵ�','11C10000');
Insert into LOCALCODE (LOCAL,CODE) values ('����, ���󳲵�','11F20000');
Insert into LOCALCODE (LOCAL,CODE) values ('����ϵ�','11F10000');
Insert into LOCALCODE (LOCAL,CODE) values ('�뱸, ���ϵ�','11H10000');
Insert into LOCALCODE (LOCAL,CODE) values ('�λ�, ���, ��󳲵�','11H20000');
Insert into LOCALCODE (LOCAL,CODE) values ('���ֵ�','11G00000');
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree3','aaaa1111','ȫ�浿',to_date('2022-07-16 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','�λ� �ؿ�뱸 APEC�� 17_d_ (�쵿)_48060',null,'CR005',1,1,'��');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('ICIAadmin','ICIAadmin','������',to_date('2022-09-09 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-5555-5555','admin@amuna.com',null,null,null,1,1,'��');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree','aaaa1111','ȫ�浿',to_date('2022-07-29 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','��õ ��籸 ���̱� 18-3_3_ (������)_21002',null,'CR004',1,1,'��');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('preepree2','aaaa1111','ȫ�浿',to_date('2022-07-05 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','preepree@naver.com','���� ���ϱ� �Ƹ����� 3__ (���ҹ���6��)_02830','15a70cef-d0c6-44b7-98bc-400bc87462f6_adminforest.jpg','CR003',1,1,'��');
Insert into MEMBER (MEMBER_ID,MEMBER_PW,MEMBER_NAME,MEMBER_BIRTH,MEMBER_TEL,MEMBER_EMAIL,MEMBER_ADDRESS,MEMBER_PROFILE,MEMBER_CREWCODE,MEMBER_STATE,WALK_STATE,MEMBER_GENDER) values ('inchun1','aaaa1111','ȫ�浿',to_date('2022-07-28 00:00:00','YYYY-MM-DD HH24:MI:SS'),'010-1111-1111','gildong@naver.com','��õ ������ ������ 1_��_ (������)_21510',null,'CR004',1,1,'��');
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
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW003','preepree',to_date('2022-08-01 10:45:54','YYYY-MM-DD HH24:MI:SS'),'�ФФФ�','<p>��Ǫǻ��ǻ��</p>','CB001',6,5,1,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',5,0,1,'CR004','�����: ��õ �־ȵ�26-44','2/�µ�: 30��/���Ȯ��: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('WB001','preepree',to_date('2022-08-01 10:31:42','YYYY-MM-DD HH24:MI:SS'),'��������','����������������',null,0,1,0,'["{\"La\":126.7315502730827,\"Ma\":37.550699461463736}","{\"La\":126.73224922052525,\"Ma\":37.55144887494435}"]','preepree',to_date('2022-08-02 16:30:00','YYYY-MM-DD HH24:MI:SS'),'----/1025/----',0,0,0,null,'�����: ��õ ��籸 ���е���9-1','2/�µ�: 29��/���Ȯ��: 60%',5);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('WB002','preepree',to_date('2022-08-02 09:57:08','YYYY-MM-DD HH24:MI:SS'),'dfdsfdsf','dsfdsfsdfsdfsdfsdf',null,0,1,1,'["{\"La\":126.72599721520783,\"Ma\":37.549001843713604}","{\"La\":126.72757863492748,\"Ma\":37.54978936928118}"]','preepree',to_date('2022-08-03 03:30:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,null,'�����: ��õ ��籸 ��굿��10-3','2/�µ�: 26��/���Ȯ��: 60%',5);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW001','preepree',to_date('2022-07-31 22:57:28','YYYY-MM-DD HH24:MI:SS'),'ũ�� ��å �ı� �ۼ�2','<p>gggggggggggggddddddddddddddddddd</p>','CB001',3,0,0,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','�����: ��õ �־ȵ�26-44','2/�µ�: 30��/���Ȯ��: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW002','preepree',to_date('2022-07-31 23:05:19','YYYY-MM-DD HH24:MI:SS'),'GGG','<p>GGGGGGGGGGGGGGGGGGGGGGGGG</p>','CB001',14,0,1,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',1,1,0,'CR004','�����: ��õ �־ȵ�26-44','2/�µ�: 30��/���Ȯ��: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CB001','preepree',to_date('2022-07-31 22:56:24','YYYY-MM-DD HH24:MI:SS'),'dsd','ddddddddddddddd',null,0,1,0,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','�����: ��õ �־ȵ�26-44','2/�µ�: 30��/���Ȯ��: 30%',20);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CB002','preepree',to_date('2022-07-31 22:58:11','YYYY-MM-DD HH24:MI:SS'),'sdf','sdfsdfsdfsfsdfdsf',null,0,1,2,'["{\"La\":126.67597772531448,\"Ma\":37.466235347708086}","{\"La\":126.67731848893938,\"Ma\":37.46725715495081}"]','preepree',to_date('2022-07-30 14:20:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',0,0,0,'CR004','�����: ��õ �־ȵ�26-105','2/�µ�: 30��/���Ȯ��: 30%',14);
Insert into WALKBOARD (WALK_CODE,WALK_WRITER,WALK_DATE,WALK_TITLE,WALK_CONTENT,WALK_FILE,WALK_HITS,WALK_STATE,WALK_REPLYCOUNT,WALK_MAP,WALK_MID,WALK_TIME,WALK_BODYTYPE,WALK_REPORT,WALK_RECOMMEND,WALK_DECOMMEND,WALK_CREWCODE,WALK_STARTADDR,WALK_WEATHERINFO,WALK_PEOPLE) values ('CW004','preepree',to_date('2022-08-02 08:53:38','YYYY-MM-DD HH24:MI:SS'),'h�Ǥ�','<p>�ǤǤǤǤ�</p>','CB001',9,1,2,'["{\"La\":126.67631679726622,\"Ma\":37.46624528704434}","{\"La\":126.67786076438824,\"Ma\":37.46733071509757}"]','preepree',to_date('2022-07-30 14:10:00','YYYY-MM-DD HH24:MI:SS'),'0010/1025/2580',1,0,0,'CR004','�����: ��õ �־ȵ�26-44','2/�µ�: 30��/���Ȯ��: 30%',20);
REM INSERTING into WEATHERXY
SET DEFINE OFF;
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ﱺ',59,64);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',57,63);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','�س���',54,61);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ϱ�',56,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ȱ�',52,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','����',52,72);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',52,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','�强��',57,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','�ϵ���',57,56);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',48,59);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','�žȱ�',50,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�',null,89,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���׽ó���',102,94);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���׽úϱ�',102,95);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���ֽ�',100,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','��õ��',80,96);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','�ȵ���',91,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���̽�',84,96);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���ֽ�',89,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','��õ��',95,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���ֽ�',81,102);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','�����',81,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','����',91,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','������',88,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','�Ǽ���',90,101);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','û�۱�',96,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���籺',97,108);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','������',102,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','û����',91,86);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','��ɱ�',83,87);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','���ֱ�',83,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','ĥ�',85,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','��õ��',86,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','��ȭ��',90,113);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','������',102,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ϵ�','�︪��',127,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�',null,91,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â������â��',90,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â���ü��걸',91,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â���ø���������',89,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â���ø���ȸ����',89,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â�������ر�',91,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','���ֽ�',81,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�뿵��',87,68);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','��õ��',80,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','���ؽ�',95,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�о��',92,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','������',90,69);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','����',97,79);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�Ƿɱ�',83,78);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�Ծȱ�',86,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','â�籺',87,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','����',85,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','���ر�',77,68);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�ϵ���',74,73);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','��û��',76,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','�Ծ籺',74,82);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','��â��',77,86);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��󳲵�','��õ��',81,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����ġ��',null,52,38);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����ġ��','���ֽ�',53,38);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����ġ��','��������',52,33);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�̾',null,28,8);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�̾',null,28,8);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����',null,60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���α�',60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','�߱�',60,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','��걸',60,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���빮��',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','�߶���',62,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���ϱ�',61,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���ϱ�',61,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',61,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','�����',61,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','����',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���빮��',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',59,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','��õ��',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���α�',58,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','��õ��',59,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','��������',58,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���۱�',59,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���Ǳ�',59,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���ʱ�',61,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',61,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','���ı�',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����','������',62,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����',null,98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','�߱�',97,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','����',97,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','����',98,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',98,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','�λ�����',97,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','����',98,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','�ϱ�',96,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','�ؿ�뱸',99,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','���ϱ�',96,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',98,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',96,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',98,76);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','������',99,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','���',96,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�λ걤����','���屺',100,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������',null,89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','�߱�',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','����',90,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','����',88,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','����',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','�ϱ�',89,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','������',89,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','�޼���',88,90);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('�뱸������','�޼���',86,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������',null,55,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','�߱�',54,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','����',54,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','����Ȧ��',54,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','������',55,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','������',56,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','����',55,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','��籸',56,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','����',55,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','��ȭ��',51,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��õ������','������',54,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����',null,58,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����','����',60,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����','����',59,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����','����',59,73);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����','�ϱ�',59,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���ֱ�����','���걸',57,74);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������',null,67,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������','����',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������','�߱�',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������','����',67,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������','������',67,101);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����������','�����',68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����',null,102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����','�߱�',102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����','����',102,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����','����',104,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����','�ϱ�',103,85);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��걤����','���ֱ�',101,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����ġ��',null,66,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����Ư����ġ��','����Ư����ġ��',66,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵',null,60,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��������ȱ�',60,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ñǼ���',60,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�������ȴޱ�',61,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ÿ��뱸',61,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ü�����',63,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�������߿���',63,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����úд籸',62,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ν�',61,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�Ⱦ�ø��ȱ�',59,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�Ⱦ�õ��ȱ�',59,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��õ��',56,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����',58,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ý�',62,114);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','����õ��',61,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�Ȼ�û�ϱ�',58,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�Ȼ�ôܿ���',57,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ô��籸',57,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ϻ굿��',56,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ϻ꼭��',56,129);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��õ��',60,124);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','������',62,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����ֽ�',64,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����',62,118);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�����',57,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','������',59,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�ǿս�',60,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�ϳ���',64,126);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ν�ó�α�',64,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���νñ��ﱸ',62,120);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���νü�����',62,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ֽ�',56,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��õ��',68,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','�ȼ���',65,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','������',55,128);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','ȭ����',57,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ֽ�',65,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ֽ�',61,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��õ��',64,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','���ֽ�',71,121);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','��õ��',61,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','����',69,133);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��⵵','����',69,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������',null,73,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','��õ��',73,134);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','���ֽ�',76,122);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','������',92,131);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','���ؽ�',97,127);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','�¹��',95,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','���ʽ�',87,141);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','��ô��',98,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','ȫõ��',75,130);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','Ⱦ����',77,125);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','������',86,119);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','��â��',84,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','������',89,123);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','ö����',65,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','ȭõ��',72,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','�籸��',77,139);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','������',80,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','����',85,145);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('������','��籺',88,138);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�',null,69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','û�ֽû�籸',69,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','û�ֽü�����',69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','û�ֽ������',67,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','û�ֽ�û����',69,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','���ֽ�',76,114);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','��õ��',81,118);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','������',73,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','��õ��',71,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','������',74,97);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','����',71,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','��õ��',68,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','���걺',74,111);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','������',72,113);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û�ϵ�','�ܾ籺',84,115);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����',null,68,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','õ�Ƚõ�����',63,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','õ�Ƚü��ϱ�',63,112);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','���ֽ�',63,102);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','���ɽ�',54,100);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','�ƻ��',60,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','�����',51,110);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','����',62,97);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','����',65,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','������',54,112);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','�ݻ걺',69,95);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','�ο���',59,99);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','��õ��',55,94);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','û�籺',57,103);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','ȫ����',55,106);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','���걺',58,107);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('��û����','�¾ȱ�',48,109);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�',null,63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','���ֽÿϻ걸',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','���ֽô�����',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','�����',56,92);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','�ͻ��',60,91);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','������',58,83);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','������',68,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','������',59,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','���ֱ�',63,89);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','���ȱ�',68,88);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','���ֱ�',72,93);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','�����',70,85);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','�ӽǱ�',66,84);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','��â��',63,79);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','��â��',56,80);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('����ϵ�','�ξȱ�',56,87);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�',null,51,67);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',50,67);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',73,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','��õ��',70,70);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ֽ�',56,71);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','�����',73,70);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','��籺',61,78);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���',66,77);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ʱ�',69,75);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','���ﱺ',66,62);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','������',62,66);
Insert into WEATHERXY (ADDR,DADDR,X,Y) values ('���󳲵�','ȭ����',61,72);
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
