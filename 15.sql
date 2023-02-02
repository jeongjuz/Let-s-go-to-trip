-- out mode가 있는 프로시져
create or replace procedure p_sawon_name
	(v_bun         sawon.sabun%type,
	 v_name out sawon.saname%type)
is
begin
	select saname into v_name from sawon where sabun=v_bun;
end;
/

--호출형태
variable name varchar2(100)
exec p_sawon_name(16, :name)
print name

NAME
-----------------------------------------
김유신