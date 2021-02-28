create or replace function isbook(bn in varchar) 
	return number 
	is 
x number := 0;
begin 
	select bid into x FROM book where bname = bn;
	return x;
end	isbook; 
/

create or replace function retcid(cn in varchar) 
	return number 
	is 
x number := 0;
begin 
	select cid into x FROM category where cname = cn;
	return x;
end	retcid; 
/

create or replace function retpid(pn in varchar) 
	return number 
	is 
x number := 0;
begin 
	select pid into x FROM publish where pname = pn;
	return x;
end	retpid; 
/


create or replace function isAdmin(mail in varchar2,pass in varchar2,id out int)
    return number
    is
x number := 0; 
begin
    select count(aid) into x from admins where aemail = mail and apassword = pass; 
    if x > 0 then
        select aid into id from admins where aemail = mail and apassword = pass;
        return 1;
    else
        return 0;
    end if; 
end;
/