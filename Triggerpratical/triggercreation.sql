CREATE OR REPLACE TRIGGER updateclientmaster01
BEFORE UPDATE OR DELETE ON client_master1
FOR EACH ROW
BEGIN
  INSERT INTO audit_s (srno, name)
  VALUES (:OLD.srno, :OLD.name);
END;
/
