set serveroutput on;

declare
	name varchar2(30); 
	x number;
	
begin
	name := '&bname';
	x := isbook(name);	
	
	delete from book_category bc where bc.bid=x;
	delete from book_publish bp where bp.bid=x;
	delete from book where book.bname=name;

end;

/