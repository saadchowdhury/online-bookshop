set serveroutput on;

declare
	keys book.bname %type; 
	bid  book.bid %type; 
	name book.bname %type;
	price book_publish.price %type;
	author book.author %type;
	pid publish.pid %type;
	pname publish.pname %type;
	edition book_publish.edition %type;
	c varchar2(30);

cursor Hello(keys book.bname %type) is 
select B.bname,B.author,P.pname,BP.edition,bp.price from book B
inner join book_publish BP 
on B.bid = BP.bid inner join publish P
on BP.pid = P.pid
where B.bname = keys and B.city=c;

cursor H(keys book.bname %type) is
select B.bname,B.author,P.pname,BP.edition,bp.price from book@site_link B
inner join book_publish@site_link BP 
on B.bid = BP.bid inner join publish@site_link P
on BP.pid = P.pid
where B.bname = keys and B.city=c;

begin
	keys:='&book_name';
	c:='&City';
	if c='Dhaka' then
	OPEN Hello(keys);
	LOOP
	FETCH Hello INTO name,author,pname,edition,price;
	EXIT WHEN Hello%notfound;
	if(name=keys) then
		DBMS_OUTPUT.PUT_LINE(name||' '||author||' '||pname||' '||edition||' '||price);
	end if;
	END LOOP;
	close Hello;
	end if;

	if c='rangpur' then
	OPEN H(keys);
	LOOP
	FETCH H INTO name,author,pname,edition,price;
	EXIT WHEN H%notfound;
	if(name=keys) then
		DBMS_OUTPUT.PUT_LINE(name||' '||author||' '||pname||' '||edition||' '||price);
	end if;
	END LOOP;
	close H;
	end if;
end;

/