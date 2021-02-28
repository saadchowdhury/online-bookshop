set serveroutput on;

declare
	keys book.bname %type; 
	id  book.bid %type; 
	name book.bname %type;
	author book.author %type;
	city book.city %type;
	email varchar2(30);
	password varchar2(30);
	z int;
	x number;
	y number;

begin
	
	keys:='&book_name';
	email:='&Email';
	password:='&Password';
	select u_id into z from users where uemail=email and upassword=password;
	x := isbook(keys);
	if(x>0) then
		dbms_output.put_line('book exists. enter 1 to buy');
		y := &enter_1_to_order;
		if y=1 then
			insert into orders@site_link(u_id,bid,aid) values (z,x,NULL);
		end if;
	else
		dbms_output.put_line('book does not exist');

	end if;
	
end;

/