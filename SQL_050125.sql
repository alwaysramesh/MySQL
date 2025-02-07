USE cybrom;

CREATE TABLE members (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    birthdate DATE,
    PRIMARY KEY (id)
);

CREATE TABLE reminders (
    id INT AUTO_INCREMENT,
    memberid INT,
    message VARCHAR(255) NOT NULL,
    PRIMARY KEY (id, memberid)
);


SELECT * FROM reminders;

DELIMITER $$

CREATE TRIGGER at
AFTER INSERT
ON members FOR EACH ROW
BEGIN
    IF NEW.birthdate IS NULL THEN
        INSERT INTO reminders (memberid, message)
        VALUES (NEW.id, CONCAT('Hi ', NEW.name, ', please update your date of birth.'));
    END IF;
END$$

DELIMITER ;

INSERT INTO members(name, email, birthdate)  
VALUES  
    ('John', 'john.doe@example.com', NULL),  
    ('Mary', 'mary@example.com', '2000-01-01');
select*from members;

select*from reminders;
 ALTER TABLE members;
 select*from members;

