
SQL*Plus: Release 21.0.0.0.0 - Production on Wed Sep 24 19:51:19 2025
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Sep 19 2025 00:40:13 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE borrowerbook1 (Roll_no NUMBER(3) PRIMARY KEY, Name VARCHAR2(50), Date_of_Issue DATE, NameOfBook VARCHAR2(100), Status CHAR(1) CHECK (Status IN ('I','R')));

Table created.

SQL> CREATE TABLE finebook (
  2    Roll_no NUMBER(3),
  3    FineDate DATE,
  4    Amt NUMBER(6,2),
  5    CONSTRAINT fk_roll_finebook FOREIGN KEY (Roll_no) REFERENCES borrowerbook1(Roll_no)
  6  );

Table created.

SQL> INSERT INTO borrowerbook1 (Roll_no, Name, Date_of_Issue, NameOfBook, Status)
  2  VALUES (101, 'Mauli Dagade', TO_DATE('05-AUG-2025','DD-MON-YYYY'), 'Oracle SQL Guide', 'I');

1 row created.

SQL> INSERT INTO borrowerbook1 (Roll_no, Name, Date_of_Issue, NameOfBook, Status)
  2  VALUES (102, 'Rahul Sharma', TO_DATE('12-AUG-2025','DD-MON-YYYY'), 'Java Programming', 'R');

1 row created.

SQL> INSERT INTO borrowerbook1 (Roll_no, Name, Date_of_Issue, NameOfBook, Status)
  2  VALUES (103, 'Sneha Patil', TO_DATE('20-AUG-2025','DD-MON-YYYY'), 'Data Structures', 'I');

1 row created.

SQL> select * from borrowerbook1;

   ROLL_NO NAME                                               DATE_OF_I
---------- -------------------------------------------------- ---------
NAMEOFBOOK
--------------------------------------------------------------------------------
S
-
       101 Mauli Dagade                                       05-AUG-25
Oracle SQL Guide
I

       102 Rahul Sharma                                       12-AUG-25
Java Programming
R

   ROLL_NO NAME                                               DATE_OF_I
---------- -------------------------------------------------- ---------
NAMEOFBOOK
--------------------------------------------------------------------------------
S
-

       103 Sneha Patil                                        20-AUG-25
Data Structures
I


SQL> set serveroutput on
SQL> @C:\Users\DNYANESHWAR\Desktop\Siddeshsql\fineresult.sql
SP2-0310: unable to open file "C:\Users\DNYANESHWAR\Desktop\Siddeshsql\fineresult.sql"
SQL> @C:\Users\DNYANESHWAR\Desktop\Siddeshsql\fineoutput.sql
Enter value for r: 101
old   9:     R := &R;
new   9:     R := 101;
Enter value for bn: Oracle SQL Guide
old  10:     Bn := '&Bn';
new  10:     Bn := 'Oracle SQL Guide';
Fine: 2541.8

PL/SQL procedure successfully completed.

SQL> @C:\Users\DNYANESHWAR\Desktop\Siddeshsql\fineoutput.sql
Enter value for r: 102
old   9:     R := &R;
new   9:     R := 102;
Enter value for bn: Java Programming
old  10:     Bn := '&Bn';
new  10:     Bn := 'Java Programming';
No matching issued book found.

PL/SQL procedure successfully completed.

SQL> @C:\Users\DNYANESHWAR\Desktop\Siddeshsql\fineoutput.sql
Enter value for r: 103
old   9:     R := &R;
new   9:     R := 103;
Enter value for bn: Data Structures
old  10:     Bn := '&Bn';
new  10:     Bn := 'Data Structures';
Fine: 1791.83

PL/SQL procedure successfully completed.

SQL> select * from fineresult;
select * from fineresult
              *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from finebook;

   ROLL_NO FINEDATE         AMT
---------- --------- ----------
       101 24-SEP-25     2541.8
       103 24-SEP-25    1791.83

SQL>
