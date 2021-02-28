clear screen;

DROP TABLE users CASCADE CONSTRAINTS;
drop sequence users_seq;

DROP TABLE book CASCADE CONSTRAINTS;
drop sequence book_seq;

DROP TABLE admins CASCADE CONSTRAINTS;
drop sequence admins_seq;

DROP TABLE category CASCADE CONSTRAINTS;
drop sequence category_seq;

DROP TABLE publish CASCADE CONSTRAINTS;
drop sequence publish_seq;

DROP TABLE orders CASCADE CONSTRAINTS;
drop sequence orders_seq;

DROP TABLE book_category CASCADE CONSTRAINTS;

DROP TABLE book_publish CASCADE CONSTRAINTS;




CREATE TABLE users (
	u_id int not null , 
	uname varchar2(30),
	uemail varchar2(30),
	upassword varchar2(30),
	uaddress varchar2(30),
	ucontact varchar2(30),
		PRIMARY KEY(u_id)
	);
CREATE SEQUENCE users_seq START WITH 1;
	
CREATE TABLE book (
	bid int not null, 
	bname varchar2(30),
	author varchar2(30),
	city varchar2(30),
		PRIMARY KEY(bid)
	);
CREATE SEQUENCE book_seq START WITH 1;
	
CREATE TABLE admins (
	aid int not null, 
	aname varchar2(30), 
	aemail varchar2(30), 
	apassword varchar2(30), 
        PRIMARY KEY(aid)
	);
CREATE SEQUENCE admins_seq START WITH 1;

CREATE TABLE category (
	cid int not null, 
	cname varchar2(30), 
        PRIMARY KEY(cid)
	);
CREATE SEQUENCE category_seq START WITH 1;
CREATE TABLE publish (
	pid int not null, 
	pname varchar2(30), 
	paddress varchar2(30),  
        PRIMARY KEY(pid)
	);
CREATE SEQUENCE publish_seq START WITH 1;
CREATE TABLE orders (
	oid int not null, 
	u_id int ,
	aid int,
	bid int,
	 PRIMARY KEY(oid),
	FOREIGN KEY(u_id) REFERENCES users(u_id),
	FOREIGN KEY(bid) REFERENCES book(bid),
	FOREIGN KEY(aid) REFERENCES admins(aid)
    );
CREATE SEQUENCE orders_seq START WITH 1;
	
	
CREATE TABLE book_category (
	bid int,
	cid int,
	FOREIGN KEY(bid) REFERENCES book(bid),
	FOREIGN KEY(cid) REFERENCES category(cid),    
	PRIMARY KEY(bid,cid)
	);
	
	
	
CREATE TABLE book_publish (
	bid int,
	pid int,
	pyear varchar2(30),
	edition varchar2(30),
	price number,
	PRIMARY KEY(bid,pid),
	FOREIGN KEY(bid) REFERENCES book(bid),
	FOREIGN KEY(pid) REFERENCES publish(pid)
	);
	
commit;