//----------------------------------INSERT INTO SCHOOL.STUDENT WITH TRANSACTION----------------------------------------


Use school;

SET autocommit = OFF;

-- ALTER TABLE student AUTO_INCREMENT = 0;

Start Transaction ;
	DELETE FROM student
    WHERE first_name LIKE ('%Cobb%');
    INSERT INTO student (FIRST_NAME, LAST_NAME, SCHOOL_ID, CLASS_ID, TEACHER_ID)
    VALUES('Dixon', 'Lexi', 1, 3, 3),
          ('Docu', 'Nicholas', 1, 3, 3),
          ('Evans', 'Colton', 1, 3, 3),
          ('Fetner', 'Ellie', 1, 3, 3),
          ('Fisher', 'Connor', 1, 3, 3);
COMMIT;