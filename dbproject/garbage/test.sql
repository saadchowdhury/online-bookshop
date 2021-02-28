set serveroutput on;

declare
	keys book.bname %type; 
	id  book.bid %type; 
	name book.bname %type;
	author book.author %type;
	city book.city %type;

cursor Hello is 
select * FROM book;

begin
	keys:='&book_name';
	OPEN Hello;
	LOOP
	FETCH Hello INTO id,name,author,city;
	EXIT WHEN Hello%notfound;
	if(name=keys) then
		DBMS_OUTPUT.PUT_LINE(id||' '||name||'       '||author||'    '||city);
	end if;
	END LOOP;
	close Hello;
end;

/