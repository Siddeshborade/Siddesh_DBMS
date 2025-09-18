DECLARE
  v_increase NUMBER := 2.00; 
BEGIN
  FOR rec IN (SELECT pid, price FROM product) LOOP
    UPDATE product
    SET price = rec.price * v_increase
    WHERE pid = rec.pid;
  END LOOP;

  COMMIT;

  DBMS_OUTPUT.PUT_LINE('Prices updated for all products.');
END;
/
