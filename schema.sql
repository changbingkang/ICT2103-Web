create table users( id integer AUTO_INCREMENT PRIMARY KEY, name text not null, password text not null, admin boolean not null DEFAULT '0');

create table emp (empid integer AUTO_INCREMENT PRIMARY KEY, name text not null, email text, phone integer, address text, joining_date timestamp DEFAULT CURRENT_TIMESTAMP, total_projects integer DEFAULT 1, total_test_case integer DEFAULT 1, total_defects_found integer DEFAULT 1, total_defects_pending integer DEFAULT 1);

CREATE TABLE "population" (
	"financial_year"	INTEGER,
	"town"	TEXT,
	"population"	INTEGER,
	PRIMARY KEY("town")
);

CREATE TABLE "resaleflat" (
	"id"	INTEGER,
	"month"	TEXT,
	"town"	TEXT,
	"flat_type"	TEXT,
	"block"	TEXT,
	"street_name"	TEXT,
	"storey_range"	TEXT,
	"sq_size"	TEXT,
	"flat_model"	TEXT,
	"lease_commence_date"	TEXT,
	"resale_price"	TEXT,
	FOREIGN KEY("town") REFERENCES "population"("town"),
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "pharmacy" (
	"id"	INTEGER,
	"town"	TEXT,
	"pharmacy_name"	TEXT,
	"incharge"	TEXT,
	"address"	TEXT,
	FOREIGN KEY("town") REFERENCES "population"("town"),
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "rental" (
	"id"	INTEGER,
	"town"	TEXT,
	"rent_approve_date"	TEXT,
	"block"	TEXT,
	"street"	TEXT,
	"type"	TEXT,
	"monthly_rent"	TEXT,
	FOREIGN KEY("town") REFERENCES "population"("town"),
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "supermarkets" (
	"id"	INTEGER,
	"town"	TEXT,
	"name"	TEXT,
	"company_name"	TEXT,
	"address"	TEXT,
	FOREIGN KEY("town") REFERENCES "population"("town"),
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "school" (
	"name"	TEXT,
	"url_address"	TEXT,
	"address"	TEXT,
	"postal"	TEXT,
	"phone"	TEXT,
	"email"	TEXT,
	"mrt"	TEXT,
	"bus"	TEXT,
	"town"	TEXT,
	"zone"	TEXT,
	"type"	TEXT,
	"nature"	TEXT,
	"mainlvl"	TEXT,
	FOREIGN KEY("town") REFERENCES "population"("town"),
	PRIMARY KEY("name")
);

CREATE TABLE "subject" (
	"id"	INTEGER,
	"name"	TEXT,
	"subject"	TEXT,
	FOREIGN KEY("name") REFERENCES "school"("name"),
	PRIMARY KEY("id" AUTOINCREMENT)
);

CREATE TABLE "cca" (
	"id"	INTEGER,
	"name"	TEXT,
	"type"	TEXT,
	"group"	TEXT,
	"cca_name"	TEXT,
	"special_name"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);