set serveroutput on;
declare
    id int ;
    x int;
    mail admins.aemail%type;
    pass admins.apassword%type;
	d orders.oid %type;	

begin
	mail := '&enter_your_email';
    pass := '&enter_your_password';
	d  :=  &Enter_The_Order_Id;
	select aid into x from admins where aemail=mail and apassword=pass;
	 	
	 	dbms_output.put_line(x);
	 	dbms_output.put_line(d);
		UPDATE orders
		SET aid=x
		WHERE orders.oid=d;


end;
/