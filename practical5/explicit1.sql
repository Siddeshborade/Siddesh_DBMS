DECLARE
CURSOR prod_cursor IS SELECT pid, pname, price FROM product;
        
p_pid   product.pid%TYPE;
p_pname product.pname%TYPE;
p_pr    product.price%TYPE;
BEGIN
OPEN prod_cursor;
LOOP
FETCH prod_cursor INTO p_pid, p_pname, p_pr;
EXIT WHEN prod_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(p_pid || ',' || p_pname || ',' || p_pr);
END LOOP;
CLOSE prod_cursor;
END;
/
