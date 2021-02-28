set serveroutput on;
create or replace function search_book(keys in varchar2)
	return number
	is
	
	abid int;
	abname varchar2(30);
	aauthor varchar2(30);
	acity varchar2(30);
	
	cursor sb is
	select * from book;
begin
	
		open sb;

		loop
		fetch sb into abid,abname,aauthor,acity;
		
			if (keys=abname)then
				dbms_output.put_line('paisi');
				return 1;
			else 
				dbms_output.put_line('not found');
				return 0;
			exit when sb%notfound;
			end if;
		end loop;
		close sb;
end;
/