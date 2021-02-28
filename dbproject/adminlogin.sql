set serveroutput on;
 
declare
    id int ;
    mail admins.aemail%type;
    pass admins.apassword%type;
 
begin  
        
    mail := '&enter_your_email';
    pass := '&enter_your_password';
     
    if isAdmin(mail,pass,id) > 0 then
        dbms_output.put_line('Admin Login Successful with admin id: '||id);
    else
        dbms_output.put_line('Wrong email and password');
         
    end if;
 
end;
/