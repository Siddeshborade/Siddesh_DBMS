DECLARE
  CURSOR product_cursor(p_price_1 NUMBER) IS 
    SELECT pid, pname, price 
    FROM product 
    WHERE price > p_price_1;

  p_pid   product.pid%TYPE;
  p_pname product.pname%TYPE;
  p_price product.price%TYPE;

  v_input NUMBER;  
BEGIN
  -- Prompt user to enter price
  v_input := &enter_price;

  DBMS_OUTPUT.PUT_LINE('Products with price above ' || v_input || ':');

  OPEN product_cursor(v_input);
  LOOP
    FETCH product_cursor INTO p_pid, p_pname, p_price;
    EXIT WHEN product_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(p_pid || ',' || p_pname || ',' || p_price);
  END LOOP;
  CLOSE product_cursor;

  DBMS_OUTPUT.PUT_LINE('Done fetching products.');
END;
/
