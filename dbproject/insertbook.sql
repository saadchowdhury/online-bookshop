
set serveroutput on;

declare
	bid int;
	bname varchar2(30);
	author varchar2(30);
	city varchar2(30);
	pid int; 
	pname varchar2(30);
	paddress varchar2(30); 
	pyear varchar2(30);
	edition varchar2(30);
	price number;
	cid int; 
	cname varchar2(30); 
	x number;
	y number;
	z number;
begin
	bname := '&bname';
	author := '&author';
	city := '&city';
	cname := '&cname';
	pname := '&pname';
	paddress := '&paddress';
	pyear := '&pyear';
	edition := '&edition';
	price := '&price';
	
	insert into book (bname,author,city) values (bname,author,city);
	x := isbook(bname);	
	y := retcid(cname);
	z := retpid(pname);
	insert into book_category(bid,cid) values (x,y);	
	insert into book_publish (bid,pid,pyear,edition,price) values (x,z,pyear,edition,price);

end;

/