
/*insert table users) */
insert into users (uname,uemail,upassword,uaddress,ucontact) values ('shuvo','s@gmail.com','123456','Dhaka','01558958022');
insert into users (uname,uemail,upassword,uaddress,ucontact) values ('sad','a@gmail.com','123456','Dhaka','01558958023');
insert into users (uname,uemail,upassword,uaddress,ucontact) values ('jhony','j@gmail.com','123456','Dhaka','01831998720');

/*insert table book */
insert into book (bname,author,city) values ('lal nil dipaboli','humayun azad','Dhaka');
insert into book (bname,author,city) values ('himu','humayun ahmed','Dhaka');
insert into book (bname,author,city) values ('me before you','jojo moyes','Dhaka');
insert into book (bname,author,city) values ('haker','Quazi Anwar Hossain','Dhaka');
insert into book (bname,author,city) values ('mechine learning','rokibul islam','Dhaka');
insert into book (bname,author,city) values ('twilight 2','stafine mayer','Dhaka');

/*insert table category) */
insert into category(cid,cname) values (category_seq.nextval,'arts and music');
insert into category(cid,cname) values (category_seq.nextval,'biography');
insert into category(cid,cname) values (category_seq.nextval,'business');
insert into category(cid,cname) values (category_seq.nextval,'comics');
insert into category(cid,cname) values (category_seq.nextval,'kids');
insert into category(cid,cname) values (category_seq.nextval,'novel');
insert into category(cid,cname) values (category_seq.nextval,'kids');
insert into category(cid,cname) values (category_seq.nextval,'education');
insert into category(cid,cname) values (category_seq.nextval,'thriller');
insert into category(cid,cname) values (category_seq.nextval,'computers and tech');
insert into category(cid,cname) values (category_seq.nextval,'romance');


/*admin table insert*/

insert into admins(aid, aname, aemail, apassword) values (admins_seq.nextval,'shuvo','shuvo30@gmail.com','123456');
insert into admins(aid, aname, aemail, apassword) values (admins_seq.nextval,'sad','sad@gmail.com','123456');

/*publish table insert*/


insert into publish(pid, pname, paddress) values (publish_seq.nextval,'prothoma','tejgaon ,dhaka');
insert into publish(pid, pname, paddress) values (publish_seq.nextval,'rokomari','shahbag ,dhaka');
insert into publish(pid, pname, paddress) values (publish_seq.nextval,'agami','paltan, dhaka');
insert into publish(pid, pname, paddress) values (publish_seq.nextval,'adarsha','banglamotor, dhaka');
insert into publish(pid, pname, paddress) values (publish_seq.nextval,'sheba prokashoni','banglamotor, dhaka');

/*book_category*/

insert into book_category(bid,cid) values (1,8);	
insert into book_category(bid,cid) values (2,6);
insert into book_category(bid,cid) values (3,11);	
insert into book_category(bid,cid) values (4,9);
insert into book_category(bid,cid) values (5,8);
insert into book_category(bid,cid) values (5,11);

/*book_publish*/

insert into book_publish (bid,pid,pyear,edition,price) values (1,1,'1998','5th',200);
insert into book_publish (bid,pid,pyear,edition,price) values (2,3,'2006','3rd',150);
insert into book_publish (bid,pid,pyear,edition,price) values (3,2,'2005','5th',2000);
insert into book_publish (bid,pid,pyear,edition,price) values (4,5,'2006','5th',150);
insert into book_publish (bid,pid,pyear,edition,price) values (5,4,'2010','5th',300);
insert into book_publish (bid,pid,pyear,edition,price) values (6,2,'2006','5th',150);

/* orders */

insert into orders (u_id,bid,aid) values (1,2,NULL);
insert into orders (u_id,bid,aid) values (2,3,NULL);

