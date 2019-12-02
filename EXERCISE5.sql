DROP TABLE SPJ
DROP TABLE S;
DROP TABLE P;
DROP TABLE J;



USE SPJ

CREATE TABLE S(
	s# varchar(50) NOT NULL,
	sname varchar(50) NOT NULL,
	sStatus varchar(50) NOT NULL,
	city varchar(50)NOT NULL,
	CONSTRAINT S_PK PRIMARY KEY (s#)
)


CREATE TABLE P (
	p# varchar(50) NOT NULL,
	pname varchar(50) NOT NULL,
	color varchar(50) NOT NULL,
	pWeight varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	CONSTRAINT P_PK PRIMARY KEY (p#)

)

CREATE TABLE J(
	j# varchar(50) NOT NULL,
	jname varchar(50) NOT NULL,
	city varchar(50)NOT NULL,
	CONSTRAINT J_PK PRIMARY KEY (j#)
)


CREATE TABLE SPJ(
	s# varchar(50) NOT NULL,
	p# varchar(50) NOT NULL,
	j# varchar(50) NOT NULL,
	qty varchar(50) NOT NULL,
	CONSTRAINT S_FK FOREIGN KEY (s#) REFERENCES S(s#),
	CONSTRAINT P_FK FOREIGN KEY (p#) REFERENCES P(p#),
	CONSTRAINT J_FK FOREIGN KEY (j#) REFERENCES J(j#)
);


/* INSERT VALUES TO S TABLE */
insert into S values ('s1','Smith',20,'London');
insert into S values ('s2','Jones',10,'Paris');
insert into S values ('s3','Blake',30,'Paris');
insert into S values ('s4','Clark',20,'London');
insert into S values ('s5','Adams',30,'Athens');
/* INSERT VALUES TO P TABLE */
insert into P values ('p1','Nut','Red',12,'London');
insert into P values ('p2','Bolt','Green',17,'Paris');
insert into P values ('p3','Screw','Blue',17,'Rome');
insert into P values ('p4','Screw','Red',14,'London');
insert into P values ('p5','Cam','Blue',12,'Paris');
insert into P values ('p6','Cog','Red',19,'London');
/* INSERT VALUES TO J TABLE */
insert into J values ('j1','Sorter','Paris');
insert into J values ('j2','Punch','Rome');
insert into J values ('j3','Reader','Athens');
insert into J values ('j4','Console','Athens');
insert into J values ('j5','Collator','London');
insert into J values ('j6','Terminal','Oslo');
insert into J values ('j7','Tape','London');

insert into SPJ values ('s1', 'p1', 'j1',200);

SELECT * FROM S
SELECT * FROM P
SELECT * FROM J
SELECT * FROM SPJ
GO

