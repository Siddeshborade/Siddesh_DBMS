declare
r int;
total int;
nm varchar2(20);
gr varchar2(20);
begin
r:=&r;
select rollno,name,total_mark into r,nm,total from studentmark1 where rollno =r;
proc_grade(r,total,gr);
dbms_output.put_line(r||nm||gr);
insert into studentresult1 (rollno,name,grade)values(r,nm,gr);
dbms_output.put_line('one record inserted');
end;
/