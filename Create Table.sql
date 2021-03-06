--Create Table for Library Management System LMS

drop table  LMS_ADMIN                      cascade constraints;
drop table  LMS_BOOK_DETAIL                cascade constraints;
drop table  LMS_BOOK_ISSUE                 cascade constraints;
drop table  LMS_BOOK_RETURN                cascade constraints;
drop table  LMS_BORROWER                   cascade constraints;
drop table  LMS_ENTITY_TYPE                cascade constraints;
drop table  LMS_LOGIN                      cascade constraints;
drop table  LMS_SHELF_DETAIL               cascade constraints;
drop table  LMS_STAFF_DETAIL               cascade constraints;
drop table  LMS_STUDENT_DETAILS            cascade constraints;

CREATE TABLE  "LMS_ADMIN" 
   (	"ADMIN_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"NAME" VARCHAR2(30) NOT NULL ENABLE, 
	"DESIGNATION" VARCHAR2(30) NOT NULL ENABLE, 
	"GENDER" VARCHAR2(10) NOT NULL ENABLE, 
	"CONTACT_NUMBER" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "LMS_ADMIN_PK" PRIMARY KEY ("ADMIN_ID") ENABLE
   )
/



CREATE TABLE  "LMS_BOOK_DETAIL" 
   (	"BOOK_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BOOK_TITLE" VARCHAR2(50) NOT NULL ENABLE, 
	"BOOK_EDITION" VARCHAR2(20) NOT NULL ENABLE, 
	"BOOK_AUTHOR" VARCHAR2(50) NOT NULL ENABLE, 
	"BOOK_PUBLISHER" VARCHAR2(50) NOT NULL ENABLE, 
	"BOOK_COPIES" NUMBER(5,0) NOT NULL ENABLE, 
	"BOOK_COST" NUMBER(5,0) NOT NULL ENABLE, 
	"BOOK_PUBLICATION_YEAR" NUMBER(4,0) NOT NULL ENABLE, 
	"BOOK_NO_OF_COPIES_ACTUAL" NUMBER(4,0) NOT NULL ENABLE, 
	"BOOK_NO_OF_COPIES_CURRENT" NUMBER(4,0) NOT NULL ENABLE, 
	"BOOK_SOURCE" VARCHAR2(30), 
	"BOOK_REMARKS" VARCHAR2(50), 
	 CONSTRAINT "LMS_BOOK_DETAIL_PK" PRIMARY KEY ("BOOK_ID") ENABLE, 
	 CONSTRAINT "LMS_BOOK_DETAIL_UK1" UNIQUE ("BOOK_TITLE") ENABLE
   )
/



CREATE TABLE  "LMS_BOOK_ISSUE" 
   (	"BOOK_ISSUE_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BOOK_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BORROWER_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"ISSUED_BY" NUMBER(7,0) NOT NULL ENABLE, 
	"BORROWED_FROM_DATE" DATE, 
	"BORROWED_TO_DATE" DATE, 
	"BORROWER_TYPE" VARCHAR2(20), 
	"BOOK_RT_STATUS" NUMBER(2,0), 
	 CONSTRAINT "LMS_BOOK_ISSUE_PK" PRIMARY KEY ("BOOK_ISSUE_ID") ENABLE
   )
/



CREATE TABLE  "LMS_BOOK_RETURN" 
   (	"BOOK_RETURN_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BOOK_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BORROWER_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BOOK_ISSUE_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"RETURN_DATE" DATE NOT NULL ENABLE, 
	"FINE" NUMBER(4,0), 
	 CONSTRAINT "LMS_BOOK_RETURN_PK" PRIMARY KEY ("BOOK_RETURN_ID") ENABLE
   )
/

CREATE TABLE  "LMS_BORROWER" 
   (	"BORROWER_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"ENTITY_OWNER_FK" NUMBER(7,0) NOT NULL ENABLE, 
	"ENTITY_TYPE" VARCHAR2(10) NOT NULL ENABLE, 
	 CONSTRAINT "LMS_BORROWER_PK" PRIMARY KEY ("BORROWER_ID") ENABLE
   )
/



CREATE TABLE  "LMS_ENTITY_TYPE" 
   (	"ENTITY_PK" NUMBER(7,0) NOT NULL ENABLE, 
	"ENTITY_TYPE" VARCHAR2(30) NOT NULL ENABLE, 
	"REMARKS" VARCHAR2(20) NOT NULL ENABLE, 
	 CONSTRAINT "LMS_ENTITY_TYPE_PK" PRIMARY KEY ("ENTITY_PK") ENABLE
   )
/



CREATE TABLE  "LMS_LOGIN" 
   (	"LOGIN_PK" NUMBER(7,0) NOT NULL ENABLE, 
	"ENTITY_OWNER_FK" NUMBER(7,0) NOT NULL ENABLE, 
	"ENTITY_FK" NUMBER(7,0) NOT NULL ENABLE, 
	"USERNAME" VARCHAR2(16) NOT NULL ENABLE, 
	"PASSWORD" VARCHAR2(15) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(30) NOT NULL ENABLE, 
	"HINT_QUESTION" VARCHAR2(50), 
	"HINT_ANSWER" VARCHAR2(20), 
	 CONSTRAINT "LMS_LOGIN_PK" PRIMARY KEY ("LOGIN_PK") ENABLE, 
	 CONSTRAINT "LMS_LOGIN_CON" UNIQUE ("USERNAME") ENABLE
   )
/



CREATE TABLE  "LMS_SHELF_DETAIL" 
   (	"SHELF_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"BOOK_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"FLOOR" VARCHAR2(10) NOT NULL ENABLE, 
	"RACK" VARCHAR2(10), 
	 CONSTRAINT "LMS_SHELF_DETAIL_PK" PRIMARY KEY ("SHELF_ID") ENABLE
   )
/




CREATE TABLE  "LMS_STAFF_DETAIL" 
   (	"STAFF_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"STAFF_NAME" VARCHAR2(40) NOT NULL ENABLE, 
	"DESIGNATION" VARCHAR2(30) NOT NULL ENABLE, 
	"GENDER" VARCHAR2(8) NOT NULL ENABLE, 
	"DEPARTMENT" VARCHAR2(30) NOT NULL ENABLE, 
	"CONTACT_NUMBER" NUMBER(10,0) NOT NULL ENABLE, 
	 CONSTRAINT "LMS_STAFF_DETAIL_PK" PRIMARY KEY ("STAFF_ID") ENABLE
   )
/




CREATE TABLE  "LMS_STUDENT_DETAILS" 
   (	"STUDENT_ID" NUMBER(7,0) NOT NULL ENABLE, 
	"STUDENT_NAME" VARCHAR2(40) NOT NULL ENABLE, 
	"GENDER" VARCHAR2(10) NOT NULL ENABLE, 
	"DATE_OF_BIRTH" DATE, 
	"COURSE" VARCHAR2(30) NOT NULL ENABLE, 
	"CONTACT_NUMBER" NUMBER(10,0) NOT NULL ENABLE, 
	"DEPARTMENT" VARCHAR2(45) NOT NULL ENABLE, 
	 CONSTRAINT "LMS_STUDENT_DETAILS_PK" PRIMARY KEY ("STUDENT_ID") ENABLE
   )
/
