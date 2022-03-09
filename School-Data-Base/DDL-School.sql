//----------------------------------------CREATE TABLE SCHOOL.STUDENT---------------------------------------------------


CREATE TABLE school.student (
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(100) NOT NULL,
LAST_NAME VARCHAR(100) NOT NULL,
SCHOOL_ID INT NOT NULL,
CLASS_ID INT NOT NULL,
TEACHER_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (SCHOOL_ID) REFERENCES school.school(ID),
FOREIGN KEY (CLASS_ID) REFERENCES school.class(ID),
FOREIGN KEY (TEACHER_ID) REFERENCES school.teacher(ID)
);


//----------------------------------------CREATE TABLE SCHOOL.CLASS---------------------------------------------------


CREATE TABLE school.class (
ID INT NOT NULL AUTO_INCREMENT,
CLASS_NUMBER INT NOT NULL,
AVAILABLE_SEATS INT NOT NULL,
SCHOOL_ID INT NOT NULL,
PRIMARY KEY (ID ),
FOREIGN KEY (SCHOOL_ID) REFERENCES school.school(ID)
);


//----------------------------------------CREATE TABLE SCHOOL.TEACHER---------------------------------------------------


CREATE TABLE school.teacher(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(100) NOT NULL,
LAST_NAME VARCHAR(100) NOT NULL,
SCHOOL_ID INT NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (SCHOOL_ID) REFERENCES school.school(ID)
);


//----------------------------------------CREATE TABLE SCHOOL.SCHOOL---------------------------------------------------


CREATE TABLE school.school(
ID INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL,
ADDRESS VARCHAR(100) NOT NULL,
PRIMARY KEY (ID)
);