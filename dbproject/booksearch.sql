set serveroutput on;

declare
	keys book.bname %type; 
	bid  book.bid %type; 
	name book.bname %type;
	author book.author %type;
	pid publish.pid %type;
	pname publish.pname %type;
	edition book_publish.edition %type;
	price book_publish.price %type;

cursor Hello(keys book.bname %type) is 
select B.bname,B.author,P.pname,BP.edition,BP.price from book B
inner join book_publish BP 
on B.bid = BP.bid inner join publish P
on BP.pid = P.pid
where B.bname = keys;

begin
	keys:='&book_name';
	OPEN Hello(keys);
	LOOP
	FETCH Hello INTO name,author,pname,edition,price;
	EXIT WHEN Hello%notfound;
	if(name=keys) then
		DBMS_OUTPUT.PUT_LINE(name||' '||author||' '||pname||' '||edition||' '||price);
	end if;
	END LOOP;
	close Hello;
end;

/