CREATE TABLE cs_courses(
    Subject CHAR(250),
    CourseNum INTEGER NOT NULL, 
	CourseName CHAR(250) DEFAULT NULL,
    Component CHAR(250) NOT NULL,
    Section CHAR(250) NOT NULL,
    Days CHAR(250) NOT NULL,
    StartTime CHAR(250) NOT NULL,
    EndTime CHAR(250) NOT NULL,
    StartDate CHAR(250) NOT NULL,
	EndDate CHAR(250) NOT NULL,
    Duration INTEGER NOT NULL,
    InstructionMode CHAR(250) NOT NULL,
    Building	CHAR(250) NOT NULL,
    Room	CHAR(250) NOT NULL,
    Instructor	CHAR(250) DEFAULT NULL,
    EnrollCap	INTEGER NOT NULL,
    WaitCap	INTEGER NOT NULL,
    CombDesc CHAR(250) DEFAULT NULL,
	CombEnrollCap CHAR(250) NOT NULL DEFAULT 'n/a'
);

alter table cs_courses add Id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT;
alter table cs_courses change Id Id INTEGER NOT NULL first;

CREATE TABLE saved(
id INTEGER NOT NULL AUTO_INCREMENT,
savedId INTEGER, 
Subject CHAR(250),
CourseNum INTEGER, 
CourseName CHAR(250),
Section CHAR(250),
Days CHAR(250),
StartTime CHAR(250),
PRIMARY KEY (id),
FOREIGN KEY (savedId) REFERENCES cs_courses(Id)
);
