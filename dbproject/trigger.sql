
CREATE OR REPLACE TRIGGER user_id
before INSERT ON users  
FOR EACH ROW
 
BEGIN
	select users_seq.NEXTVAL
	into :new.u_id
	from dual;
	dbms_output.put_line('');
	dbms_output.put_line('User inserted');
  END;
/


CREATE OR REPLACE TRIGGER order_id
before INSERT ON orders  
FOR EACH ROW
 
BEGIN
	select orders_seq.NEXTVAL
	into :new.oid
	from dual;
	dbms_output.put_line('');
	dbms_output.put_line('Order inserted');
  END;
/


CREATE OR REPLACE TRIGGER book_id
before INSERT ON book  
FOR EACH ROW
 
BEGIN
	select book_seq.NEXTVAL
	into :new.bid
	from dual;
	dbms_output.put_line('');
	dbms_output.put_line('Book inserted');
  END;
/


CREATE OR REPLACE TRIGGER op
before UPDATE ON   orders
FOR EACH ROW
 
BEGIN

	
	dbms_output.put_line('One order confirmed!');
  END;
/


