﻿CREATE TABLE "DIMDATE"(
	"DATEKEY" NUMBER NOT NULL ENABLE,
	"FULLDATE" DATE NOT NULL ENABLE,
	"DAYNAMEABREV" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"WEEKMONSUN" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"WEEKMONSUNNUMBER" NUMBER NOT NULL ENABLE,
	"WEEKMONSUNDATE" DATE NOT NULL ENABLE,
	"WEEKSUNSAT" VARCHAR2(50 BYTE) NULL,
	"WEEKSUNSATNUMBER" NUMBER NULL,
	"WEEKSUNSATDATE" DATE NULL,
	"CALENDARMONTH" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"CALENDARMONTHNUMBER" NUMBER NOT NULL ENABLE,
	"CALENDARQUARTER" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"CALENDARQUARTERNUMBER" NUMBER NOT NULL ENABLE,
	"CALENDARYEAR" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"CALENDARYEARNUMBER" NUMBER NOT NULL ENABLE,
	"FISCALMONTH" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"FISCALMONTHNUMBER" NUMBER NOT NULL ENABLE,
	"FISCALQUARTER" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"FISCALQUARTERNUMBER" NUMBER NOT NULL ENABLE,
	"FISCALYEAR" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	"FISCALYEARNUMBER" NUMBER NOT NULL ENABLE,
	"ISLASTDAYOFMONTH" NUMBER NOT NULL ENABLE,
	"ISWORKDAY" NUMBER NOT NULL ENABLE,
	CONSTRAINT dimdate_pk PRIMARY KEY (DATEKEY)
);

CREATE TABLE "DIMDEVICE"(
	"DEVICEKEY" NUMBER NOT NULL ENABLE,
	"DEVICEID" VARCHAR2(200 BYTE) NOT NULL ENABLE,
	"DEVICENAME" VARCHAR2(100 BYTE) NOT NULL ENABLE,
	"DEVICETYPE" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	CONSTRAINT dimdevice_pk PRIMARY KEY (DEVICEKEY)
);

CREATE TABLE "DIMLEDGER"(
	"LEDGERKEY" NUMBER NOT NULL ENABLE,
	"LEDGERNAME" VARCHAR2(50 BYTE) NOT NULL ENABLE,
	CONSTRAINT dimledger_pk PRIMARY KEY (LEDGERKEY)
);


CREATE TABLE "DIMPRODUCT"(
	"PRODUCTKEY" NUMBER NOT NULL ENABLE,
	"PRODUCTID" VARCHAR2(500 BYTE) NOT NULL ENABLE,
	"PRODUCTNAME" VARCHAR2(500 BYTE) NOT NULL ENABLE,
	"EDITORIALLEVEL1" VARCHAR2(200 BYTE) NOT NULL ENABLE,
	"EDITORIALLEVEL2" VARCHAR2(200 BYTE) NOT NULL ENABLE,
	CONSTRAINT dimproduct_pk PRIMARY KEY (PRODUCTKEY)
);

CREATE TABLE "FACTPAGEPERFORMANCE"(
	"DATEKEY" NUMBER NOT NULL ENABLE,
	"PRODUCTKEY" NUMBER NOT NULL ENABLE,
	"DEVICEKEY" NUMBER NOT NULL ENABLE,
	"LEDGERKEY" NUMBER NOT NULL ENABLE,
	"PAGEVIEWS" NUMBER NOT NULL ENABLE,
	"VISITS" NUMBER NOT NULL ENABLE,
	"UNIQUEVISITORS" NUMBER NOT NULL ENABLE
);