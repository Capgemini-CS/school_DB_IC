//----------------------------------------INSERT INTO SCHOOL.STUDENT----------------------------------------------------


INSERT INTO school.student(FIRST_NAME, LAST_NAME, SCHOOL_ID, CLASS_ID, TEACHER_ID)
VALUES('Camerino', 'Carballo', 1, 1, 1),
('Camilo', 'Carda', 1, 1, 1),
('Canez', 'Carreras', 1, 1, 1),
('Jose', 'Laurel', 1, 2, 2),
('Juarez', 'Lavin', 1, 2, 2),
('Justo', 'Leanos', 1, 2, 2),
('Villafana', 'Zacarrias', 1, 3, 3),
('Villaflor', 'Zapata', 1, 3, 3),
('Villar', 'Zorrilla', 1, 3, 3);

INSERT INTO school.student(FIRST_NAME, LAST_NAME, SCHOOL_ID, CLASS_ID, TEACHER_ID)
VALUES('Bui', 'Vivian', 1, 1, 1),
('Buno', 'Michael', 1, 2, 2),
('Burdick', 'Tyler', 1, 1, 1),
('Campbell', 'Lyrik', 1, 1, 1),
('Cherry', 'Devin', 1, 1, 1),
('Cobb', 'Kyle', 1, 1, 1),
('DeAngelis', 'Leland', 1, 1, 1),
('Deffert', 'Halle', 1, 1, 1);


//----------------------------------------INSERT INTO SCHOOL.CLASS----------------------------------------------------


INSERT INTO school.class(CLASS_NUMBER, AVAILABLE_SEATS, SCHOOL_ID)
VALUES(1, 15, 1),
(2, 17, 1 ),
(3, 20, 1 );


//----------------------------------------INSERT INTO SCHOOL.TEACHER----------------------------------------------------


INSERT INTO school.teacher(FIRST_NAME, LAST_NAME, SCHOOL_ID)
VALUES('Abad', 'Alocer', 1),
	  ('Abalos', 'Alcon', 1),
	  ('Abeyta', 'Aldrete', 1);


 //----------------------------------------INSERT INTO SCHOOL.SCHOOL----------------------------------------------------


	  INSERT INTO school.school(NAME, ADDRESS)
      VALUES('Scoala 87', 'Strada Ramnicul Sarat');


 //------------- Display all students, all teachers, all classes from all schools, ordered by class_number--------------


      SELECT  ss.FIRST_NAME AS STUDENT_FIRST_NAME, ss.LAST_NAME AS STUDENT_LAST_NAME,
      sc.CLASS_NUMBER, sc.AVAILABLE_SEATS,
      st.FIRST_NAME AS TEACHER_FIRST_NAME, st.LAST_NAME AS TEACHER_LAST_NAME,
      ssc.NAME AS SCHOOL_NAME, ssc.ADDRESS AS SCHOOL_ADDRESS
      FROM school.student ss
      INNER JOIN school.class sc ON sc.id = ss.class_id
      INNER JOIN school.teacher st ON st.id = ss.teacher_id
      INNER JOIN school.school ssc ON ssc.id = ss.school_id
      ORDER BY sc.class_number ASC;


//-------------------------- Display all school's available seats-------------------------------------------------------


      SELECT SUM(AVAILABLE_SEATS) AS ALL_SCHOOL_SEATS
      FROM school.class;


//------------------------------------- Display all students per class--------------------------------------------------


      SELECT COUNT(ss.ID) AS STUDENT_NUMBER_PER_CLASS
      FROM school.student ss
      INNER JOIN school.class sc ON sc.id = ss.class_id
      GROUP BY sc.id;


//----------------------------------------- Display all students per school---------------------------------------------


      SELECT COUNT(ss.ID)
      FROM school.student ss
      INNER JOIN school.school ssc ON ssc.id = ss.school_id
      GROUP BY ssc.id;


//----------------------------------- Display avg seats per school------------------------------------------------------


      SELECT AVG(AVAILABLE_SEATS)
      FROM school.class;


//------------------------- Display all students first_names which starts with "C" or "J"-------------------------------


      SELECT first_name, last_name
      FROM school.student
      WHERE first_name LIKE ('C%')
      OR first_name LIKE ('J%');


//---- Display all students In first or third class who's first_name starts with "J" and last_name starts with "L"------


      SELECT *
      FROM school.student ss
      INNER JOIN school.class sc ON sc.id = ss.class_id
      WHERE sc.class_number IN (2, 3)
      AND ss.first_name LIKE ('J%')
      AND ss.last_name LIKE ('L%');


//-------------- Display all students in third class where the teacher's last_name contains "ldr"-----------------------


      SELECT ss.FIRST_NAME AS STUDENT_FIRST_NAME, ss.LAST_NAME AS STUDENT_LAST_NAME,
      sc.CLASS_NUMBER, sc.AVAILABLE_SEATS,
      st.FIRST_NAME AS TEACHER_FIRST_NAME, st.LAST_NAME AS TEACHER_LAST_NAME
      FROM school.student ss
      INNER JOIN school.class sc ON sc.id = ss.class_id
      INNER JOIN school.teacher st ON st.id = ss.teacher_id
      WHERE sc.class_number = 3
      AND st.last_name LIKE ('%ldr%')
      ORDER BY ss.first_name DESC;
