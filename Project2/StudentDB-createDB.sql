-- Group 04
-- Damian Franco & Trey Sampson
CREATE TABLE COURSE (
	courseid        varchar(10) NOT NULL PRIMARY KEY,
	department      varchar(20)
	);

CREATE TABLE ACCOUNTS (
	acct       char(8) NOT NULL PRIMARY KEY
	);

CREATE TABLE STUDENT (
	sid        varchar(9) NOT NULL PRIMARY KEY,
	name       varchar(20),
	login      char(8),
	age        int,
	gpa        real,
	CHECK (gpa >= 0.0),
	FOREIGN KEY(login) REFERENCES ACCOUNTS(acct)
	);

    
CREATE TABLE takes (
	sid        varchar(9) NOT NULL,
	courseid   varchar(10) NOT NULL,
	FOREIGN KEY(sid) REFERENCES STUDENT(sid),
	FOREIGN KEY(courseid) REFERENCES COURSE(courseid),
	CONSTRAINT PK_takes PRIMARY KEY (sid, courseid)    
	);