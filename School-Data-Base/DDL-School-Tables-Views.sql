//-------------------------------------CREATE VIEW STUDENT (SELECT * FROM)----------------------------------------------


CREATE VIEW student_info AS (SELECT * FROM school.student);


//-------------------------------------CREATE VIEW CLASS (SELECT * FROM)----------------------------------------------


CREATE VIEW class_info AS (SELECT * FROM school.class);


//-------------------------------------CREATE VIEW TEACHER (SELECT * FROM)----------------------------------------------


CREATE VIEW teacher_info AS (SELECT * FROM school.teacher);


//-------------------------------------CREATE VIEW SCHOOL (SELECT * FROM)----------------------------------------------


CREATE VIEW school_info AS (SELECT * FROM school.school);