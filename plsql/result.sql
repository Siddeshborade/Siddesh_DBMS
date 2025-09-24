DECLARE
gr VARCHAR2(20);
BEGIN
FOR rec IN (SELECT rollno, name, total_mark FROM studentmark1) 
LOOP
proc_grade(rec.rollno, rec.total_mark, gr);
INSERT INTO studentresult1 (rollno, name, grade)
VALUES (rec.rollno, rec.name, gr);
DBMS_OUTPUT.PUT_LINE(rec.rollno || ' ' || rec.name || ' ' || gr);
END LOOP;
DBMS_OUTPUT.PUT_LINE('All records processed and inserted.');
END;
/
