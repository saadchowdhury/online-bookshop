set serveroutput on;

declare
	keys book.bname %type; 
	id  book.bid %type; 
	name book.bname %type;
	author book.author %type;
	city book.city %type;

cursor Hello(keys book.bname %type) is 
select * FROM book where bname = keys;

begin
	keys:='&book_name';
	OPEN Hello(keys);
	LOOP
	FETCH Hello INTO id,name,author,city;
	EXIT WHEN Hello%notfound;
	DBMS_OUTPUT.PUT_LINE(id||' '||name||'       '||author||'    '||city);
	END LOOP;
	close Hello;
end;

/