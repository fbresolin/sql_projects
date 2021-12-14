-- initialize table
CREATE TABLE trigger_test (
    message VARCHAR(100)
);

-- queries list
-- triggers can be created for INSERT, UPDATE and DELETE

DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);
SELECT * FROM trigger_test;



DELIMITER $$
CREATE
    TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(110, 'Kevin', 'Malone', '1968-02-19', 'M', 69000, 106, 3);
SELECT * FROM trigger_test;

DELIMITER $$
CREATE
    TRIGGER my_trigger3 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;
    END$$
DELIMITER ;

INSERT INTO employee
VALUES(111, 'Kevina', 'Malone', '1968-02-19', 'F', 69000, 106, 3);
SELECT * FROM trigger_test;