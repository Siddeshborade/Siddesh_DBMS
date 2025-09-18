CREATE OR REPLACE TRIGGER insert_audit_s
BEFORE DELETE OR INSERT ON audit_s
BEGIN
  IF UPPER(TO_CHAR(SYSDATE, 'MON')) = 'SEP' THEN
    RAISE_APPLICATION_ERROR(-20001, 'Cannot delete or insert in September');
  END IF;
END;
/
