CREATE OR REPLACE TRIGGER insertclientmaster
AFTER INSERT ON client_master1
FOR EACH ROW
BEGIN
  INSERT INTO insert_backup (srno, name)
  VALUES (:NEW.srno, :NEW.name);
END;
/
