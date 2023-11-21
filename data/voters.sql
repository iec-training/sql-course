IF EXISTS (SELECT name
FROM master.dbo.sysdatabases
WHERE name = N'voters')
BEGIN
    ALTER DATABASE [voters] SET OFFLINE WITH ROLLBACK IMMEDIATE;
    ALTER DATABASE [voters] SET ONLINE;
    DROP DATABASE [voters];
END
GO

/*******************************************************************************
   Create database
********************************************************************************/
CREATE DATABASE [voters];
GO

USE [voters];
GO

create table [dbo].[voters]
(
    customer_id tinyint not null
        constraint PK_voters
            primary key,
    first_name nvarchar(50),
    last_name nvarchar(50),
    birthdate date,
    gender nvarchar(50),
    email nvarchar(50),
    country nvarchar(50),
    first_vote_date date,
    total_votes tinyint
)
go

create table [dbo].[ratings]
(
    company nvarchar(50),
    bean_origin nvarchar(50),
    cocoa_percent float,
    company_location nvarchar(50),
    rating float,
    bean_type nvarchar(50),
    broad_bean_origin nvarchar(50)
)
go

INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (1, N'Carol', N'Rai', N'1989-01-15', N'F ', N'carol8@yahoo.com', N'Denmark', N'2015-03-09', 136);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (2, N'Ana', N'Price', N'1987-02-17', N'F ', N'ana0@gmail.com', N'France', N'2015-01-17', 124);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (3, N'Melissa', N'Richardson', N'1989-04-25', N'F ', N'melissa31@yahoo.com', N'Denmark', N'2015-04-09', 145);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (4, N'Angela', N'Griffin', N'1993-03-08', N'F ', N'angela23@gmail.com', N'Belgium', N'2015-12-30', 52);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (5, N'Grace', N'Henderson', N'1968-01-30', N'F ', N'grace52@yahoo.com', N'USA', N'2015-06-02', 147);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (6, N'Melody', N'Ramos', N'1969-01-30', N'F ', N'melody17@yahoo.com', N'USA', N'2013-01-08', 90);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (7, N'Clinton', N'Moreno', N'1990-05-05', N'M ', N'clinton3@yahoo.com', N'Denmark', N'2013-01-19', 63);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (8, N'Kaylee', N'Cook', N'1991-05-05', N'F ', N'kaylee18@yahoo.com', N'Switzerland', N'2013-09-17', 58);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (9, N'Dennis', N'Huang', N'1972-03-11', N'M ', N'dennis7@yahoo.com', N'USA', N'2013-10-29', 110);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (10, N'Julia', N'Brooks', N'1972-05-05', N'F ', N'julia63@yahoo.com', N'United Kingdom', N'2015-07-16', 72);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (11, N'Devin', N'Henderson', N'1970-01-30', N'M ', N'devin43@yahoo.com', N'USA', N'2013-10-29', 126);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (12, N'Gabrielle', N'Cox', N'1979-05-13', N'F ', N'gabrielle10@yahoo.com', N'Germany', N'2015-09-25', 55);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (13, N'Jose', N'Wright', N'1986-05-22', N'M ', N'jose56@yahoo.com', N'Austria', N'2015-08-16', 109);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (14, N'Seth', N'Martin', N'1987-06-03', N'M ', N'seth15@yahoo.com', N'Mexico', N'2013-11-09', 162);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (15, N'Clayton', N'Sharma', N'1986-06-03', N'M ', N'clayton27@yahoo.com', N'Austria', N'2013-12-28', 76);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (16, N'Amy', N'Huang', N'1986-05-22', N'F ', N'amy13@gmail.com', N'Austria', N'2015-02-16', 101);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (17, N'Michele', N'Suarez', N'1986-05-15', N'F ', N'michele53@yahoo.com', N'Austria', N'2014-07-10', 20);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (18, N'Kurt', N'Jai', N'1972-05-13', N'M ', N'kurt11@yahoo.com', N'United Kingdom', N'2015-02-27', 28);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (19, N'Sebastian', N'Rogers', N'1995-04-21', N'M ', N'sebastian18@yahoo.com', N'Belgium', N'2016-01-06', 94);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (20, N'Trisha', N'Ma', N'1989-02-17', N'F ', N'trisha10@yahoo.com', N'Denmark', N'2013-12-31', 48);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (21, N'Eugene', N'Zhu', N'1987-06-05', N'M ', N'eugene18@gmail.com', N'China', N'2014-01-04', 176);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (22, N'Cedric', N'Lin', N'1990-02-20', N'M ', N'cedric8@yahoo.com', N'Belgium', N'2015-06-06', 39);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (23, N'Julie', N'Becker', N'1996-04-21', N'F ', N'julie22@yahoo.com', N'Belgium', N'2015-04-26', 189);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (24, N'Sandra', N'He', N'1986-05-13', N'F ', N'sandra26@yahoo.com', N'Austria', N'2015-11-17', 169);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (25, N'George', N'Kapoor', N'1986-01-14', N'M ', N'george7@yahoo.com', N'Austria', N'2015-03-27', 92);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (26, N'Alyssa', N'Bryant', N'1986-05-22', N'F ', N'alyssa63@gmail.com', N'Austria', N'2015-07-24', 138);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (27, N'Richard', N'Baker', N'1988-04-06', N'M ', N'richard27@yahoo.com', N'Denmark', N'2014-10-19', 95);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (28, N'Cameron', N'Jones', N'1977-02-10', N'M ', N'cameron44@yahoo.com', N'United Kingdom', N'2015-04-13', 90);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (29, N'Chloe', N'Rodriguez', N'1986-05-22', N'F ', N'chloe30@yahoo.com', N'Austria', N'2014-01-29', 60);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (30, N'Nathan', N'Lopez', N'1988-05-03', N'M ', N'nathan49@yahoo.com', N'Denmark', N'2014-03-12', 126);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (31, N'Justin', N'Li', N'1987-03-11', N'M ', N'justin23@yahoo.com', N'China', N'2015-04-28', 76);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (32, N'Emma', N'Bradley', N'1973-03-11', N'F ', N'emma31@gmail.com', N'United Kingdom', N'2014-08-07', 53);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (33, N'Isabella', N'Roberts', N'1989-02-13', N'F ', N'isabella43@gmail.com', N'Denmark', N'2014-06-27', 153);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (34, N'Patrick', N'Murphy', N'1965-01-22', N'M ', N'patrick20@yahoo.com', N'USA', N'2014-07-24', 48);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (35, N'Melissa', N'Butler', N'1974-03-14', N'F ', N'melissa9@yahoo.com', N'United Kingdom', N'2015-07-10', 99);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (36, N'Mathew', N'Sanz', N'1989-03-22', N'M ', N'mathew16@yahoo.com', N'Denmark', N'2015-01-29', 129);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (37, N'Tabitha', N'Carlson', N'1991-04-12', N'F ', N'tabitha39@yahoo.com', N'Switzerland', N'2015-02-23', 29);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (38, N'Lloyd', N'Saunders', N'1986-05-26', N'F ', N'lloyd0@yahoo.com', N'Austria', N'2015-12-29', 94);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (39, N'Blake', N'Miller', N'1991-02-25', N'M ', N'blake5@yahoo.com', N'Switzerland', N'2015-10-15', 92);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (40, N'Amanda', N'Ramirez', N'1972-04-21', N'F ', N'amanda16@gmail.com', N'United Kingdom', N'2013-12-21', 86);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (41, N'Jeffery', N'Zheng', N'1986-01-09', N'M ', N'jeffery19@yahoo.com', N'Spain', N'2014-10-24', 130);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (42, N'Evelyn', N'Chandra', N'1992-05-05', N'F ', N'evelyn2@gmail.com', N'Switzerland', N'2013-12-28', 91);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (43, N'Wesley', N'Yang', N'1978-02-10', N'M ', N'wesley5@yahoo.com', N'Germany', N'2014-10-13', 112);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (44, N'Alexandra', N'Hill', N'1979-02-10', N'F ', N'alexandra63@gmail.com', N'Germany', N'2015-02-03', 184);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (45, N'Jose', N'Scott', N'1981-05-13', N'M ', N'jose50@yahoo.com', N'Spain', N'2015-05-05', 106);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (46, N'Jacquelyn', N'Navarro', N'1991-03-03', N'F ', N'jacquelyn10@yahoo.com', N'Switzerland', N'2015-03-02', 87);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (47, N'Jessica', N'Gonzales', N'1993-04-11', N'F ', N'jessica41@yahoo.com', N'Belgium', N'2015-09-18', 171);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (48, N'Savannah', N'Cox', N'1959-03-15', N'F ', N'savannah9@yahoo.com', N'USA', N'2015-09-10', 91);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (49, N'Chase', N'Ward', N'1989-04-01', N'M ', N'chase12@yahoo.com', N'Denmark', N'2015-02-02', 153);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (50, N'Logan', N'Anderson', N'1986-06-25', N'M ', N'logan61@yahoo.com', N'France', N'2015-02-03', 182);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (51, N'Louis', N'Hu', N'1986-02-14', N'M ', N'louis15@yahoo.com', N'Austria', N'2015-08-08', 181);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (52, N'Juan', N'Romero', N'1978-03-15', N'M ', N'juan1@yahoo.com', N'Germany', N'2014-02-27', 123);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (53, N'Sean', N'Mitchell', N'1991-06-23', N'M ', N'sean43@yahoo.com', N'Switzerland', N'2015-03-28', 93);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (54, N'Melvin', N'She', N'1966-01-24', N'M ', N'melvin0@yahoo.com', N'USA', N'2013-01-18', 104);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (55, N'Morgan', N'Perry', N'1986-05-17', N'F ', N'morgan77@yahoo.com', N'Austria', N'2015-07-01', 118);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (56, N'Xavier', N'Sanders', N'1992-03-03', N'M ', N'xavier69@yahoo.com', N'Switzerland', N'2015-04-08', 78);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (57, N'Barbara', N'Zhao', N'1975-03-14', N'F ', N'barbara20@yahoo.com', N'United Kingdom', N'2016-01-21', 89);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (58, N'Charles', N'Johnston', N'1959-05-17', N'M ', N'charles4@yahoo.com', N'USA', N'2015-05-31', 30);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (59, N'Natasha', N'Gutierrez', N'1976-03-14', N'F ', N'natasha10@yahoo.com', N'United Kingdom', N'2013-02-20', 173);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (60, N'Willie', N'She', N'1991-05-05', N'M ', N'willie20@yahoo.com', N'Switzerland', N'2013-03-04', 125);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (61, N'Byron', N'Serrano', N'1986-05-14', N'M ', N'byron10@yahoo.com', N'Austria', N'2015-10-08', 130);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (62, N'Isabella', N'Price', N'1993-05-05', N'F ', N'isabella11@gmail.com', N'Belgium', N'2013-03-23', 22);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (63, N'Andy', N'Alonso', N'1986-05-15', N'M ', N'andy12@gmail.com', N'Austria', N'2015-09-04', 33);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (64, N'Daniel', N'Martin', N'1959-02-16', N'M ', N'daniel17@yahoo.com', N'USA', N'2015-06-16', 148);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (65, N'Daniel', N'Martinez', N'1989-05-03', N'M ', N'daniel15@yahoo.com', N'Denmark', N'2013-04-19', 104);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (66, N'Caroline', N'Griffin', N'1981-03-20', N'F ', N'caroline22@yahoo.com', N'Spain', N'2013-04-29', 102);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (67, N'Christine', N'Chander', N'1987-02-13', N'F ', N'christine11@yahoo.com', N'France', N'2015-04-04', 90);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (68, N'Roger', N'Rai', N'1986-06-25', N'M ', N'roger45@yahoo.com', N'France', N'2015-09-14', 49);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (69, N'Calvin', N'Yuan', N'1986-01-17', N'M ', N'calvin7@yahoo.com', N'Austria', N'2015-11-09', 137);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (70, N'Eric', N'Perry', N'1991-05-15', N'M ', N'eric16@gmail.com', N'Switzerland', N'2015-03-21', 38);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (71, N'Justin', N'Kumar', N'1986-05-26', N'M ', N'justin25@yahoo.com', N'Austria', N'2015-10-25', 156);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (72, N'Benjamin', N'Hughes', N'1987-02-22', N'M ', N'benjamin12@yahoo.com', N'France', N'2015-10-01', 140);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (73, N'Paige', N'Stewart', N'1988-02-13', N'F ', N'paige47@yahoo.com', N'Denmark', N'2015-07-18', 96);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (74, N'James', N'Moore', N'1959-05-15', N'M ', N'james73@yahoo.com', N'USA', N'2015-07-09', 138);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (75, N'Emma', N'Thomas', N'1992-04-12', N'F ', N'emma10@gmail.com', N'Switzerland', N'2015-09-17', 122);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (76, N'Kaitlyn', N'Coleman', N'1986-05-22', N'F ', N'kaitlyn73@yahoo.com', N'Austria', N'2015-12-18', 54);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (77, N'Maria', N'Bailey', N'1989-02-13', N'F ', N'maria9@yahoo.com', N'Denmark', N'2015-09-24', 91);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (78, N'Melissa', N'Brooks', N'1994-05-05', N'F ', N'melissa24@yahoo.com', N'Belgium', N'2015-01-16', 46);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (79, N'Kristopher', N'Gonzalez', N'1988-03-21', N'M ', N'kristopher17@yahoo.com', N'Spain', N'2013-08-11', 52);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (80, N'Priscilla', N'Andersen', N'1992-04-06', N'F ', N'priscilla11@yahoo.com', N'Switzerland', N'2014-11-27', 78);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (81, N'Alberto', N'Martin', N'1985-01-24', N'M ', N'alberto1@gmail.com', N'Spain', N'2015-04-17', 100);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (82, N'Nancy', N'Garcia', N'1982-02-13', N'F ', N'nancy18@yahoo.com', N'Spain', N'2015-03-28', 34);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (83, N'Kimberly', N'Peterson', N'1988-04-25', N'F ', N'kimberly8@yahoo.com', N'Denmark', N'2015-12-26', 47);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (84, N'Richard', N'Walker', N'1980-03-17', N'M ', N'richard17@yahoo.com', N'Germany', N'2015-06-27', 109);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (85, N'Christopher', N'Jackson', N'1981-04-15', N'M ', N'christopher12@yahoo.com', N'Spain', N'2015-04-21', 125);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (86, N'Andrea', N'Peterson', N'1972-01-24', N'F ', N'andrea5@gmail.com', N'USA', N'2015-10-15', 142);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (87, N'Jonathan', N'Thomas', N'1991-05-15', N'M ', N'jonathan64@yahoo.com', N'Switzerland', N'2015-07-28', 114);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (88, N'Darryl', N'Liu', N'1986-05-22', N'M ', N'darryl4@yahoo.com', N'Austria', N'2013-09-16', 52);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (89, N'Jamie', N'Guo', N'1989-04-05', N'F ', N'jamie21@yahoo.com', N'Denmark', N'2013-10-01', 155);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (90, N'Rafael', N'She', N'1992-01-05', N'M ', N'rafael23@yahoo.com', N'Switzerland', N'2013-10-13', 36);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (91, N'Antonio', N'Alexander', N'1984-06-05', N'M ', N'antonio19@gmail.com', N'Spain', N'2015-10-01', 31);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (92, N'Kelvin', N'Li', N'1995-05-05', N'M ', N'kelvin23@yahoo.com', N'China', N'2015-06-11', 123);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (93, N'Haley', N'Sanchez', N'1979-03-26', N'F ', N'haley1@yahoo.com', N'Germany', N'2016-01-05', 132);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (94, N'Victoria', N'Alexander', N'1986-01-15', N'F ', N'victoria65@yahoo.com', N'Austria', N'2015-05-09', 65);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (95, N'Maria', N'Brooks', N'1964-02-14', N'F ', N'maria20@yahoo.com', N'USA', N'2015-07-08', 107);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (96, N'Dennis', N'Hu', N'1984-01-24', N'M ', N'dennis22@yahoo.com', N'Spain', N'2013-11-01', 30);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (97, N'Kevin', N'Yang', N'1971-01-30', N'M ', N'kevin30@yahoo.com', N'USA', N'2015-04-25', 74);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (98, N'Joshua', N'Walker', N'1982-03-21', N'M ', N'joshua25@yahoo.com', N'Spain', N'2015-03-05', 80);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (99, N'Connor', N'Ross', N'1972-01-09', N'M ', N'connor0@yahoo.com', N'USA', N'2013-12-18', 57);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (100, N'Tasha', N'Sharma', N'1991-03-22', N'F ', N'tasha10@yahoo.com', N'Switzerland', N'2015-03-25', 145);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (101, N'Dawn', N'Pal', N'1994-03-08', N'F ', N'dawn36@yahoo.com', N'Belgium', N'2015-12-03', 85);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (102, N'Meredith', N'Vance', N'1986-06-22', N'F ', N'meredith2@yahoo.com', N'France', N'2013-12-15', 56);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (103, N'Raul', N'Raji', N'1981-04-25', N'M ', N'raul19@yahoo.com', N'Spain', N'2015-04-20', 73);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (104, N'Steve', N'Li', N'1986-05-15', N'M ', N'steve7@yahoo.com', N'China', N'2015-10-18', 98);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (105, N'Kara', N'Becker', N'1992-04-06', N'F ', N'kara18@yahoo.com', N'Switzerland', N'2014-01-21', 92);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (106, N'Carl', N'Tang', N'1984-03-25', N'M ', N'carl4@yahoo.com', N'Spain', N'2015-04-03', 73);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (107, N'Abigail', N'Wood', N'1979-03-10', N'F ', N'abigail27@gmail.com', N'Germany', N'2015-12-26', 128);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (108, N'Mason', N'Howard', N'1986-06-05', N'M ', N'mason11@yahoo.com', N'Austria', N'2015-07-17', 111);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (109, N'Ethan', N'Diaz', N'1989-03-21', N'M ', N'ethan18@gmail.com', N'Denmark', N'2015-11-25', 98);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (110, N'Mariah', N'Brooks', N'1972-01-30', N'F ', N'mariah1@yahoo.com', N'USA', N'2014-10-28', 119);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (111, N'Joan', N'Ross', N'1992-06-22', N'F ', N'joan8@yahoo.com', N'Switzerland', N'2015-07-08', 138);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (112, N'Jada', N'Rivera', N'1983-02-13', N'F ', N'jada8@yahoo.com', N'Spain', N'2015-11-15', 92);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (113, N'Whitney', N'Suri', N'1972-01-30', N'F ', N'whitney0@yahoo.com', N'USA', N'2014-04-28', 125);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (114, N'Richard', N'Patterson', N'1986-05-13', N'M ', N'richard65@yahoo.com', N'Austria', N'2015-11-29', 174);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (115, N'Marcus', N'Jenkins', N'1983-05-01', N'M ', N'marcus56@yahoo.com', N'Spain', N'2015-12-14', 16);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (116, N'Mary', N'Turner', N'1988-04-14', N'F ', N'mary18@yahoo.com', N'Denmark', N'2015-07-08', 96);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (117, N'Terrence', N'Andersen', N'1986-04-21', N'M ', N'terrence13@yahoo.com', N'Austria', N'2015-12-25', 117);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (118, N'Clarence', N'Xie', N'1979-03-10', N'M ', N'clarence18@yahoo.com', N'Germany', N'2014-05-10', 103);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (119, N'Margaret', N'Xu', N'1996-05-06', N'F ', N'margaret18@yahoo.com', N'China', N'2014-05-28', 131);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (120, N'Rachael', N'Prasad', N'1995-02-10', N'F ', N'rachael9@yahoo.com', N'Belgium', N'2015-11-16', 154);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (121, N'Karen', N'Cai', N'1981-05-03', N'F ', N'karen30@yahoo.com', N'Spain', N'2014-05-25', 66);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (122, N'Orlando', N'Blanco', N'1988-02-16', N'M ', N'orlando15@gmail.com', N'Denmark', N'2014-05-01', 117);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (123, N'Tony', N'Xu', N'1977-06-23', N'M ', N'tony8@yahoo.com', N'United Kingdom', N'2014-05-01', 147);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (124, N'Andres', N'Nath', N'1987-02-13', N'M ', N'andres15@gmail.com', N'France', N'2015-12-16', 148);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (125, N'Gina', N'Serrano', N'1986-06-03', N'F ', N'gina17@yahoo.com', N'Austria', N'2015-07-18', 84);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (126, N'Brandy', N'Mehta', N'1972-05-15', N'F ', N'brandy10@yahoo.com', N'United Kingdom', N'2015-02-05', 103);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (127, N'Max', N'Ruiz', N'1986-06-05', N'M ', N'max3@yahoo.com', N'France', N'2015-07-31', 73);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (128, N'Rafael', N'Lu', N'1979-04-12', N'M ', N'rafael12@yahoo.com', N'Germany', N'2015-09-19', 47);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (129, N'Morgan', N'Howard', N'1978-05-06', N'F ', N'morgan59@yahoo.com', N'Germany', N'2013-07-09', 109);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (130, N'Tiffany', N'Ye', N'1983-01-19', N'F ', N'tiffany9@yahoo.com', N'Spain', N'2015-08-18', 99);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (131, N'Victoria', N'Washington', N'1964-04-05', N'F ', N'victoria60@yahoo.com', N'USA', N'2015-05-14', 155);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (132, N'Dana', N'Vazquez', N'1979-01-30', N'F ', N'dana7@yahoo.com', N'Germany', N'2015-04-30', 113);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (133, N'Lane', N'Sacksteder', N'1994-04-15', N'F ', N'lane1@yahoo.com', N'Belgium', N'2015-09-30', 169);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (134, N'Theodore', N'Romero', N'1986-05-22', N'M ', N'theodore9@yahoo.com', N'Austria', N'2015-04-25', 122);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (135, N'Raymond', N'Subram', N'1974-04-08', N'M ', N'raymond15@yahoo.com', N'United Kingdom', N'2014-09-25', 137);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (136, N'Carl', N'Yuan', N'1975-05-03', N'M ', N'carl6@yahoo.com', N'United Kingdom', N'2014-09-26', 159);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (137, N'Grant', N'Raje', N'1985-01-14', N'M ', N'grant16@yahoo.com', N'Spain', N'2014-10-12', 130);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (138, N'Lucas', N'Rivera', N'1979-01-14', N'M ', N'lucas80@yahoo.com', N'Germany', N'2015-02-26', 102);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (139, N'Danny', N'Ruiz', N'1984-02-13', N'M ', N'danny2@yahoo.com', N'Spain', N'2015-07-23', 127);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (140, N'Bailey', N'Young', N'1983-05-01', N'F ', N'bailey37@yahoo.com', N'Spain', N'2015-05-05', 27);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (141, N'Victoria', N'Richardson', N'1989-04-06', N'F ', N'victoria36@yahoo.com', N'Denmark', N'2014-01-17', 72);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (142, N'Vincent', N'Zhao', N'1980-02-10', N'M ', N'vincent10@yahoo.com', N'Germany', N'2016-01-18', 109);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (143, N'Micah', N'Sun', N'1984-05-01', N'M ', N'micah0@yahoo.com', N'Spain', N'2014-03-01', 147);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (144, N'Micah', N'Gao', N'1986-05-22', N'M ', N'micah2@yahoo.com', N'Austria', N'2014-09-16', 110);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (145, N'Harold', N'Sanchez', N'1987-04-01', N'M ', N'harold17@yahoo.com', N'Mexico', N'2015-07-06', 139);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (146, N'Micheal', N'Vazquez', N'1981-02-10', N'M ', N'micheal10@yahoo.com', N'Germany', N'2015-08-21', 18);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (147, N'Hector', N'Romero', N'1982-04-25', N'M ', N'hector7@yahoo.com', N'Spain', N'2015-04-06', 66);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (148, N'Joan', N'Martin', N'1985-03-26', N'F ', N'joan19@yahoo.com', N'Spain', N'2013-03-23', 122);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (149, N'Tyrone', N'Navarro', N'1981-01-30', N'M ', N'tyrone9@yahoo.com', N'Germany', N'2013-03-27', 160);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (150, N'Troy', N'Sanchez', N'1970-03-10', N'M ', N'troy22@yahoo.com', N'USA', N'2013-03-27', 50);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (151, N'Kendra', N'Ortega', N'1977-03-14', N'F ', N'kendra22@yahoo.com', N'United Kingdom', N'2015-05-04', 153);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (152, N'Ashlee', N'Moyer', N'1973-01-30', N'F ', N'ashlee2@gmail.com', N'United Kingdom', N'2015-01-31', 142);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (153, N'Jimmy', N'Sanz', N'1979-03-10', N'M ', N'jimmy24@yahoo.com', N'Germany', N'2015-06-12', 65);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (154, N'Jacquelyn', N'Romero', N'1983-03-21', N'F ', N'jacquelyn9@yahoo.com', N'Spain', N'2015-02-14', 139);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (155, N'Anthony', N'Anderson', N'1979-03-15', N'M ', N'anthony19@gmail.com', N'Germany', N'2013-06-12', 157);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (156, N'Jose', N'Hughes', N'1987-02-14', N'M ', N'jose34@yahoo.com', N'France', N'2015-03-17', 105);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (157, N'Jason', N'Hayes', N'1972-02-13', N'M ', N'jason20@yahoo.com', N'USA', N'2015-10-02', 104);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (158, N'Nicole', N'Simmons', N'1990-04-06', N'F ', N'nicole64@yahoo.com', N'Denmark', N'2015-09-07', 155);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (159, N'Jan', N'Cox', N'1967-01-24', N'F ', N'jan7@yahoo.com', N'USA', N'2015-09-09', 151);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (160, N'Clinton', N'Gill', N'1995-03-08', N'M ', N'clinton10@yahoo.com', N'Belgium', N'2015-04-02', 53);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (161, N'Bridget', N'Yuan', N'1981-02-14', N'F ', N'bridget8@yahoo.com', N'Germany', N'2015-04-10', 120);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (162, N'Isabella', N'Evans', N'1985-05-01', N'F ', N'isabella33@gmail.com', N'Spain', N'2016-01-16', 53);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (163, N'Gregory', N'Nara', N'1964-03-14', N'M ', N'gregory20@yahoo.com', N'USA', N'2014-07-22', 65);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (164, N'Bruce', N'Moreno', N'1971-03-10', N'M ', N'bruce29@yahoo.com', N'USA', N'2014-07-07', 153);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (165, N'Kaylee', N'Allen', N'1956-03-10', N'F ', N'kaylee46@yahoo.com', N'USA', N'2014-07-12', 105);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (166, N'Andrew', N'Clark', N'1954-02-13', N'M ', N'andrew26@gmail.com', N'USA', N'2015-06-25', 99);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (167, N'Seth', N'Lewis', N'1973-03-25', N'M ', N'seth20@yahoo.com', N'United Kingdom', N'2013-07-01', 123);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (168, N'Bryan', N'Rogers', N'1975-03-08', N'M ', N'bryan20@yahoo.com', N'United Kingdom', N'2015-06-23', 128);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (169, N'Mackenzie', N'King', N'1975-02-05', N'F ', N'mackenzie40@yahoo.com', N'United Kingdom', N'2014-10-01', 130);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (170, N'Philip', N'Suarez', N'1986-05-13', N'M ', N'philip18@yahoo.com', N'Austria', N'2015-07-21', 32);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (171, N'Derek', N'Sharma', N'1991-04-06', N'M ', N'derek8@yahoo.com', N'Switzerland', N'2015-02-26', 108);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (172, N'Mindy', N'Tang', N'1980-04-21', N'F ', N'mindy8@yahoo.com', N'Germany', N'2015-05-04', 90);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (173, N'Makayla', N'Morgan', N'1981-02-20', N'F ', N'makayla17@yahoo.com', N'Germany', N'2015-05-23', 94);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (174, N'Dale', N'Nath', N'1992-04-06', N'M ', N'dale16@yahoo.com', N'Switzerland', N'2015-07-06', 88);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (175, N'Darrell', N'Shan', N'1985-02-13', N'M ', N'darrell18@yahoo.com', N'Spain', N'2015-10-27', 121);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (176, N'Samuel', N'Sharma', N'1976-02-09', N'M ', N'samuel27@yahoo.com', N'United Kingdom', N'2015-10-24', 110);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (177, N'Carolyn', N'Ruiz', N'1964-01-22', N'F ', N'carolyn24@yahoo.com', N'USA', N'2015-12-18', 116);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (178, N'Savannah', N'Evans', N'1964-01-19', N'F ', N'savannah21@yahoo.com', N'USA', N'2013-03-07', 78);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (179, N'Marco', N'Tanara', N'1994-05-17', N'F ', N'marco21@yahoo.com', N'Belgium', N'2015-09-07', 119);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (180, N'Rebekah', N'Srini', N'1978-03-22', N'F ', N'rebekah8@yahoo.com', N'Germany', N'2015-10-07', 21);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (181, N'Melissa', N'Bennett', N'1987-05-15', N'F ', N'melissa20@yahoo.com', N'Mexico', N'2015-12-08', 109);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (182, N'Arthur', N'Vazquez', N'1985-02-25', N'M ', N'arthur39@gmail.com', N'Spain', N'2015-05-13', 128);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (183, N'Micheal', N'Ramos', N'1994-03-17', N'M ', N'micheal13@yahoo.com', N'Belgium', N'2015-06-23', 135);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (184, N'Alisha', N'Xu', N'1973-02-23', N'F ', N'alisha12@gmail.com', N'United Kingdom', N'2015-06-29', 37);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (185, N'April', N'Shen', N'1969-01-09', N'F ', N'april2@gmail.com', N'USA', N'2014-02-08', 112);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (186, N'Krista', N'Ortega', N'1960-05-17', N'F ', N'krista20@yahoo.com', N'USA', N'2015-09-01', 70);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (187, N'Leah', N'Lu', N'1961-03-10', N'F ', N'leah8@yahoo.com', N'USA', N'2015-09-30', 60);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (188, N'Danny', N'Martin', N'1993-01-30', N'M ', N'danny0@yahoo.com', N'Switzerland', N'2015-11-18', 81);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (189, N'Brett', N'Madan', N'1987-05-01', N'M ', N'brett7@yahoo.com', N'Mexico', N'2014-05-28', 102);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (190, N'Heather', N'Sun', N'1979-02-13', N'F ', N'heather12@yahoo.com', N'Germany', N'2015-04-07', 97);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (191, N'Joe', N'Alonso', N'1974-01-30', N'M ', N'joe31@yahoo.com', N'United Kingdom', N'2014-01-05', 62);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (192, N'Xavier', N'Hayes', N'1964-04-21', N'M ', N'xavier63@yahoo.com', N'USA', N'2015-10-29', 165);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (193, N'Allen', N'Chandra', N'1992-02-09', N'M ', N'allen2@gmail.com', N'Switzerland', N'2015-07-09', 104);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (194, N'Alexa', N'Ward', N'1986-01-09', N'F ', N'alexa10@gmail.com', N'Austria', N'2015-09-09', 57);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (195, N'Thomas', N'King', N'1981-02-10', N'M ', N'thomas55@yahoo.com', N'Germany', N'2015-04-05', 77);
INSERT INTO [voters]
    (customer_id, first_name, last_name, birthdate, gender, email, country, first_vote_date, total_votes)
VALUES
    (196, N'Victor', N'Vazquez', N'1964-02-22', N'M ', N'victor15@yahoo.com', N'USA', N'2015-09-03', 168);


INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Toscano Black', 0.7, N'Italy', 2.75, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Toscano Black', 0.66, N'Italy', 2.75, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Trinite', 0.75, N'France', 2.75, N'Trinitario', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Ocumare- Puerto Cabello', 0.75, N'France', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Maracaibo- El Rosario', 0.75, N'France', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Madagascar', 0.75, N'France', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'One Hundred', 1, N'France', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Ceylan', 0.75, N'France', 3.25, N'Unknown', N'Sri Lanka');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Chuao', 0.75, N'France', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cote d'' Or (Kraft)', N'Sensations Intense', 0.7, N'Belgium', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dolfin (Belcolade)', N'Noir', 0.7, N'Belgium', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Sur del Lago Classificado', 0.7, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Apurimac', 0.7, N'Italy', 3.5, N'Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Carenero Superior', 0.7, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Carenero Superior- Gran Saman', 0.7, N'Venezuela', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Supremo- SF', 0.62, N'Switzerland', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Elvesia P.', 0.74, N'Switzerland', 3.75, N'Trinitario- Criollo', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Madagascar- Grand Cru', 0.64, N'Switzerland', 3.75, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Maracaibo Clasificado', 0.65, N'Switzerland', 3.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Arriba', 0.72, N'Switzerland', 3.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Alto Beni- Cru Savage', 0.68, N'Switzerland', 4, N'Criollo (Wild)', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Green & Black''s (ICAM)', N'Dark', 0.7, N'U.K.', 4, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Chucuri', 0.65, N'U.S.A.', 4, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Sur del Lago', 0.65, N'U.S.A.', 3.75, N'Trinitario- Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Sambirano- Ambanja', 0.65, N'U.S.A.', 3.75, N'Criollo- +', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Los Rios- Quevedo', 0.65, N'U.S.A.', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Tsaranta', 0.61, N'U.S.A.', 3.25, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Semisweet', 0.61, N'U.S.A.', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Jacque Torres', N'Trinatario Treasure', 0.71, N'U.S.A.', 3.5, N'Trinitario', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Carre Amer', 0.6, N'France', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Carre Grand Noir', 0.85, N'France', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Tamarina', 0.7, N'France', 3, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Los Ancones P.', 0.67, N'France', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Mangaro P.', 0.65, N'France', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Maralumi P.', 0.64, N'France', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Noir Infini', 0.99, N'France', 2.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'West Africa', 0.73, N'Belgium', 2.5, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'Sao Tome', 0.75, N'Belgium', 2.75, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'Ocumare', 0.71, N'Belgium', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Hawaiin Chocolate Factory', N'Hawai''i- Kona Estate Grown', 0.6, N'U.S.A.', 3, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Porcelana- Tabasco- Limited Ed.', 0.72, N'Belgium', 3.5, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Kendem Lembu- Java', 0.72, N'Belgium', 3.5, N'Criollo', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Ocumare- Puerto Cabello- Venezuela', 0.72, N'Belgium', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Monte Alegre (Itacare)- Brazil', 0.75, N'France', 3.5, N'Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Tanzania', 0.75, N'France', 2.5, N'Criollo', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Sao Tome & Principe', 0.75, N'France', 2.5, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Trinidad', 0.75, N'France', 2.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Madagascar- Nosy Be Isle.', 0.75, N'France', 2.75, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Java- Indonesie', 0.75, N'France', 2.75, N'Criollo', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Barlovento- Venezuela', 0.75, N'France', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Jamaique', 0.75, N'France', 3, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Equateur', 0.75, N'France', 3, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Vanuatu', 0.75, N'France', 3.25, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Ghana', 0.75, N'France', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Colombie', 0.75, N'France', 2.75, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Fortissima', 0.8, N'France', 3, N'Criollo- Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Cuba', 0.75, N'France', 3, N'Trinitario', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Caracas- Venezuela and Ghana', 0.75, N'France', 3, N'Trinitario- Forastero', N'Venezuela- Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Djakarta- Java and Ghana', 0.75, N'France', 3.5, N'Criollo- Forastero', N'Indonesia- Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santander (Compania Nacional)', N'Colombian Semi Dark', 0.53, N'Colombia', 3.75, N'Forastero (Nacional)', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santander (Compania Nacional)', N'Colombian', 0.65, N'Colombia', 3.75, N'Forastero (Nacional)', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santander (Compania Nacional)', N'Colombian Dark', 0.7, N'Colombia', 4, N'Forastero (Nacional)', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Extra Dark', 0.82, N'U.S.A.', 4, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Bittersweet', 0.7, N'U.S.A.', 2.75, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Kumasi Sambirano', 0.68, N'U.S.A.', 2.75, N'Blend', N'Ghana & Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Jamaica a l''ancienne', 0.7, N'U.S.A.', 3, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Semisweet', 0.62, N'U.S.A.', 3, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Caraibe', 0.66, N'France', 3.25, N'Trinitario', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Guanaja', 0.7, N'France', 3.5, N'Criollo- Trinitario', N'South America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Gran Couva 2005 P.', 0.64, N'France', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Porcelana- Maracaibo- Palmira P. 2005', 0.64, N'France', 3.25, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Sambirano- Ampamakia 2005- Millot P.', 0.64, N'France', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Madagascar', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Cuyagua', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Ocumare', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Porcelana', 0.7, N'Italy', 3, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Nine', 0.75, N'Italy', 3, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Chuao', 0.7, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Ecuador', 0.7, N'Italy', 3.5, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Jamaica', 0.7, N'Italy', 3.5, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Grenada', 0.7, N'Italy', 3.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Venezuela', 0.7, N'Italy', 3.75, N'Trinitario (85% Criollo)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Madagascar', 0.7, N'Italy', 4, N'Trinitario (85% Criollo)', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Trinidad', 0.7, N'Italy', 4, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Toscano Black', 0.63, N'Italy', 4, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'Xoconusco', 0.75, N'U.S.A.', 4, N'Trinitario', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'San Jose del Tambo', 0.7, N'U.S.A.', 5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Equateur', 0.75, N'France', 5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Barry', N'Venezuela', 0.72, N'France', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Barry', N'Mexico', 0.66, N'France', 3.25, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Callebaut', N'Baking', 0.7, N'Belgium', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Bolivar- Guaranda', 0.71, N'Spain', 3.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Guyave', 0.71, N'Spain', 4, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Maragda', 0.7, N'Spain', 3, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Sambirano- Menava P.', 0.72, N'Germany', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Madagascar', 0.66, N'U.S.A.', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Costa Rica', 0.64, N'U.S.A.', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Ecuador', 0.71, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Ghana', 0.6, N'U.S.A.', 3, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Papua New Guinea', 0.64, N'U.S.A.', 2.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dean and Deluca (Belcolade)', N'Peru', 0.64, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DeVries', N'Costa Rica', 0.77, N'U.S.A.', 3.25, N'Trinitario', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DeVries', N'Dominican Republic', 0.77, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Porcelana', 0.7, N'Italy', 3.25, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Ocumare 61- Puertomar', 0.75, N'Italy', 3.25, N'Criollo (Ocumare 61)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Granella', 0.6, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Madagascar', 0.7, N'Italy', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Madagared', 0.7, N'Italy', 3.5, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Java- Javablond', 0.7, N'Italy', 3.5, N'Criollo', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Ecuador', 0.7, N'Italy', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Ocumare 67- Puertofino', 0.7, N'Italy', 3.5, N'Criollo (Ocumare 67)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Quetzalcoatl', 0.72, N'U.S.A.', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hachez', N'Arriba', 0.77, N'Germany', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lindt & Sprungli', N'Excellence (US Version)', 0.85, N'Switzerland', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malagasy (Chocolaterie Robert)', N'Sambirano 2006', 0.75, N'Madagascar', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malagasy (Chocolaterie Robert)', N'Mora Mora 2006', 0.73, N'Madagascar', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Carenero Superior- Concepcion', 0.66, N'France', 3.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Vila Gracinda', 0.67, N'France', 3.75, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'Dark', 0.73, N'Belgium', 4, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Madagascar', 0.7, N'U.S.A.', 4, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Cabosse', 0.7, N'Belgium', 4, N'Blend', N'Venezuela- Java');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Los Rios- Puerto Romero- Equateur', 0.72, N'Belgium', 1.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Sambirano- Ambanja- Madagascar', 0.72, N'Belgium', 1.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Fleur de Cacao', 0.85, N'Belgium', 2.5, N'Blend', N'Venezuela/ Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Claudio Corallo w/ nibs', 0.75, N'France', 2.75, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Republica del Cacao (aka Confecta)', N'Manabi', 0.75, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Republica del Cacao (aka Confecta)', N'El Oro', 0.67, N'Ecuador', 3, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Republica del Cacao (aka Confecta)', N'Los Rios', 0.75, N'Ecuador', 3, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Las Islas', 0.72, N'U.S.A.', 3.25, N'Blend', N'Carribean(DR/Jam/Tri)');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Nibby', 0.62, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Cuyagua', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Antilles (Trin/Gren/DR/Ven)', 0.75, N'U.S.A.', 3.25, N'Blend', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Taza', N'Dark- Stone Ground', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theo', N'Madagascar', 0.65, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theo', N'Ivory Coast', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Ivory Coast');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theo', N'Ghana- Kumasi', 0.84, N'U.S.A.', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theo', N'Ghana- Panama- Ecuador', 0.75, N'U.S.A.', 4, N'Blend', N'Ghana- Panama- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Araguani', 0.72, N'France', 2.75, N'Blend', N'Venezuela- Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Chuao 2002 P.', 0.65, N'France', 2.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Manjari', 0.64, N'France', 3, N'Criollo- Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Le Noir Extra Amer', 0.85, N'France', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Abinao', 0.85, N'France', 3.75, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Le Noir Amer', 0.71, N'France', 3.75, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Porcelana- Maracaibo- Palmira P. 2006', 0.64, N'France', 3.75, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vintage Plantations (Tulicorp)', N'Los Rios- Rancho Grande 2004/2007', 1, N'U.S.A.', 2.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vintage Plantations (Tulicorp)', N'Los Rios- Rancho Grande 2004/2007', 0.9, N'U.S.A.', 2.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vintage Plantations (Tulicorp)', N'Los Rios- Rancho Grande 2004/2007', 0.75, N'U.S.A.', 3, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vintage Plantations (Tulicorp)', N'Los Rios- Rancho Grande 2007', 0.65, N'U.S.A.', 3.25, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Bali- Jembrana', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Congo', 0.72, N'U.K.', 2.75, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Sambirano', 0.71, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Bocas del Toro', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Puerto Plata', 0.68, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Ankasa', 0.7, N'U.S.A.', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Black Mountain', N'La Red', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Black Mountain', N'Carenero Superior', 0.7, N'U.S.A.', 4, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Black Mountain', N'Matiguas', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Porcelana- Venezuela', 0.75, N'France', 3.25, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Barry', N'Tanzania', 0.75, N'France', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacaoyere (Ecuatoriana)', N'Amazonia', 0.63, N'Ecuador', 3.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacaoyere (Ecuatoriana)', N'Esmeraldas', 0.71, N'Ecuador', 3, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacaoyere (Ecuatoriana)', N'Bolivar', 0.82, N'Ecuador', 3.25, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacaoyere (Ecuatoriana)', N'Pichincha', 0.91, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Callebaut', N'Grenade', 0.6, N'Belgium', 2.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Esmeraldas', 0.77, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Manabi', 0.77, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Los Rios', 0.77, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Manabi', 0.55, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Los Rios', 0.55, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caoni (Tulicorp)', N'Esmeraldas', 0.55, N'Ecuador', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chchukululu (Tulicorp)', N'Los Rios', 0.75, N'Ecuador', 3.25, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Ocumare', 0.71, N'Spain', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Claudio Corallo', N'Terreiro Velho P. w/ sugar crystals', 0.8, N'Sao Tome', 3.5, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Claudio Corallo', N'Terreiro Velho P.', 0.75, N'Sao Tome', 2.75, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Claudio Corallo', N'Principe', 1, N'Sao Tome', 3, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Compania de Chocolate (Salgado)', N'Carenero Superior', 0.8, N'Argentina', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Compania de Chocolate (Salgado)', N'Moxos', 0.72, N'Argentina', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Compania de Chocolate (Salgado)', N'Ocumare', 0.7, N'Argentina', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Compania de Chocolate (Salgado)', N'Esmeraldas', 0.88, N'Argentina', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Porcelana- Tabasco- Mexico', 0.72, N'Germany', 3.75, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Porcelana- Venezuela', 0.72, N'Germany', 4, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Debauve & Gallais (Michel Cluizel)', N'Venezuela', 0.66, N'France', 4, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DeVries', N'Bolivian', 0.8, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dolfin (Belcolade)', N'Africa', 0.88, N'Belgium', 3, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Carupano- H. San Jose', 0.7, N'Italy', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Teyuna', 0.7, N'Italy', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Blend No. 1', 0.78, N'Italy', 3.25, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Ilblend', 0.7, N'Italy', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Ceibo', N'Alto Beni', 0.71, N'Bolivia', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Carenero Superior- Apamate', 0.74, N'Venezuela', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Carenero Superior- Bucare', 0.58, N'Venezuela', 4, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Carenero Superior- Mijao', 0.61, N'Venezuela', 2.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Escazu', N'Ocumare', 0.72, N'U.S.A.', 2.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Grenada Chocolate Co.', N'Grenada', 0.71, N'Grenada', 2.5, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Machu Pichu', 0.65, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Special Maker Reserve', 0.64, N'U.S.A.', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Ocumare', 0.65, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'St. Lucia', 0.72, N'U.K.', 3, N'Unknown', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Uganda', 0.8, N'U.K.', 3, N'Forastero', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Tanzania', 0.75, N'U.K.', 3, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Uba Budo', 0.72, N'U.K.', 3, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Sisa 36hr/ W. F. blend prototype', 0.7, N'Ecuador', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Sisa''s Secret/ original micro', 0.7, N'Ecuador', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Roberto', 0.75, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Diego/ original micro', 0.85, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Diego 48hr/ W.F. blend prototype', 0.85, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Diego 60hr/ W.F. blend prototype', 0.85, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Cacao Nacional W.F.', 0.75, N'Ecuador', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kallari (Ecuatoriana)', N'Cacao Nacional W.F.', 0.85, N'Ecuador', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Cuana- 2008', 0.74, N'France', 2.75, N'Blend', N'Ven.- Indonesia- Ecuad.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madecasse (Cinagra)', N'Madagascar', 0.67, N'Madagascar', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madecasse (Cinagra)', N'Madagascar', 0.7, N'Madagascar', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madecasse (Cinagra)', N'Madagascar', 0.63, N'Madagascar', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madecasse (Cinagra)', N'Madagascar', 0.75, N'Madagascar', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maglio', N'Africa', 0.75, N'Italy', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maglio', N'Ecuador', 0.7, N'Italy', 2.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maglio', N'Cuba', 0.7, N'Italy', 3, N'Criollo', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maglio', N'Santo Domingo', 0.7, N'Italy', 3.5, N'Blend-Forastero-Criollo', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'Manickchand Estate', 0.67, N'Belgium', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Esmeraldas', 0.6, N'Ecuador', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Manabi', 0.65, N'Ecuador', 3.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Los Rios', 0.72, N'Ecuador', 1.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Raw', 1, N'Ecuador', 2.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Raw', 0.7, N'Ecuador', 2.75, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Papouasie', 0.75, N'France', 3, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Sambirano Valley- Le 100%', 1, N'France', 3, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Dominican Republic-Organic', 0.75, N'France', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Monte Alegre- Diego Badero', 0.75, N'France', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Hispaniola- 2008', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Jamaica', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Sambirano- 2008', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Trinidad', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Salgado', N'Bahia Superior', 0.7, N'Argentina', 3.5, N'Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Salgado', N'Esmeraldas', 0.7, N'Argentina', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Salgado', N'Carenero Superior', 0.7, N'Argentina', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Salgado', N'Rio Arriba', 0.7, N'Argentina', 3.5, N'Forastero (Arriba) ASSS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Finisterra', 0.72, N'U.S.A.', 3.5, N'Blend', N'Ven.- Trinidad- Mad.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'Chocolatey-beta', 0.7, N'U.S.A.', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'Fruity-beta', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'Citrus-beta', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'Nutty-beta', 0.7, N'U.S.A.', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Aequare (Gianduja)', N'Los Rios- Quevedo- Arriba', 0.55, N'Ecuador', 4, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Aequare (Gianduja)', N'Los Rios- Quevedo- Arriba', 0.7, N'Ecuador', 4, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ah Cacao', N'Tabasco', 0.7, N'Mexico', 4, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Montanya', 0.7, N'U.S.A.', 4, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amatller (Simon Coll)', N'Ghana', 0.7, N'Spain', 4, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amatller (Simon Coll)', N'Ecuador', 0.7, N'Spain', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amatller (Simon Coll)', N'Ecuador', 0.85, N'Spain', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amatller (Simon Coll)', N'Ghana', 0.85, N'Spain', 1.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Ocumare- Venezuela', 0.75, N'U.K.', 3.25, N'Criollo- Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Java', 0.72, N'U.K.', 2.75, N'Trinitario', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Brazil Rio Doce', 0.72, N'U.K.', 2.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Madagascar', 0.8, N'U.K.', 3, N'Criollo- Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Peru', 0.75, N'U.K.', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Dominican Republic', 0.72, N'U.K.', 3.5, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'Davao', 0.77, N'U.S.A.', 3.5, N'Trinitario', N'Philippines');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Puerto Plata', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Puerto Plata', 0.65, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Sambirano', 0.75, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Sambirano', 0.65, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blanxart', N'Organic Dark', 0.72, N'Spain', 4, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Ivory Coast', 0.75, N'France', 2.75, N'Unknown', N'Ivory Coast');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Porcelana- Apotequil', 0.75, N'France', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Porcelana- Tabasco- Marfil de Blanco', 0.75, N'France', 3.25, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Xoconusco- cacao Real', 0.75, N'France', 3.25, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bouga Cacao (Tulicorp)', N'El Oro- Hacienda de Oro', 0.77, N'Ecuador', 3.25, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bouga Cacao (Tulicorp)', N'El Oro- Hacienda de Oro', 1, N'Ecuador', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Porcelana- Tabasco- La Joya', 0.7, N'Spain', 3, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Xoconusco- Chiapas', 0.7, N'Spain', 2.75, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cemoi', N'Equateur', 0.72, N'France', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Kendari', 0.6, N'Spain', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Tarakan', 0.75, N'Spain', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choklat', N'Ocumare', 0.8, N'Canada', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choklat', N'Porcelana- Tabasco', 0.7, N'Canada', 2.75, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choklat', N'Brazilian', 0.7, N'Canada', 2.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choklat', N'Brazilian', 0.8, N'Canada', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choklat', N'Ocumare', 0.7, N'Canada', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chuao Chocolatier', N'Choroni', 0.61, N'U.S.A.', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Porcelana- Apotequil', 0.72, N'Germany', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Porcelana- Apotequil', 0.62, N'Germany', 2.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Chuao 100hr', 0.7, N'Germany', 2.25, N'Criollo- Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Chuao 70hr', 0.7, N'Germany', 2.5, N'Criollo- Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Las Acacias E.', 0.75, N'Guatemala', 2.5, N'Criollo', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Las Acacias E.', 0.6, N'Guatemala', 2.75, N'Criollo', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Debauve & Gallais (Michel Cluizel)', N'Papua New Guinea', 0.64, N'France', 2, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dole (Guittard)', N'O''ahu- N. Shore- Waialua Estate', 0.7, N'U.S.A.', 2, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Rio Caribe- Cariaco', 0.65, N'Venezuela', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'Rio Caribe- Macuro', 0.7, N'Venezuela', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Escazu', N'Guapiles', 0.65, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Escazu', N'Carenero Superior', 0.81, N'U.S.A.', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Escazu', N'Carenero- Guapiles- Ocumare blend', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Cost Rica- Ven');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Jamaica- #204- DR- SC', 0.8, N'U.S.A.', 3.5, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Jamaica- #206- DR- LC', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Jamaica- #205- DR- MC', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Carenero Superior- #203- MR- SC', 0.65, N'U.S.A.', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Grenada Chocolate Co.', N'Grenada', 0.6, N'Grenada', 3.25, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guido Castagna', N'Arriba', 0.64, N'Italy', 3.5, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guido Castagna', N'Ghana', 0.64, N'Italy', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guido Castagna', N'Trinidad & Tobago', 0.64, N'Italy', 3.75, N'Unknown', N'Trinidad- Tobago');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guido Castagna', N'Lacri Blend', 0.76, N'Italy', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guido Castagna', N'Blend', 0.64, N'Italy', 3.75, N'Unknown', N'Ven- Trinidad- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'O''ahu- N. Shore- Waialua E.- Kakoleka', 0.55, N'U.S.A.', 3.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Nocturne', 0.91, N'U.S.A.', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Complexite', 0.7, N'U.S.A.', 3.25, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hoja Verde (Tulicorp)', N'Arriba', 0.8, N'Ecuador', 3.75, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hoja Verde (Tulicorp)', N'Manabi', 0.8, N'Ecuador', 3.75, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hoja Verde (Tulicorp)', N'Arriba', 0.72, N'Ecuador', 3.25, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hoja Verde (Tulicorp)', N'Arriba', 0.58, N'Ecuador', 3.5, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hoja Verde (Tulicorp)', N'Manabi', 0.58, N'Ecuador', 3.5, N'Forastero (Arriba) ASS', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Ivory Coast', 0.7, N'Israel', 3.5, N'Unknown', N'Ivory Coast');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Hispaniola', 0.7, N'Israel', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'San Martin', 0.7, N'Israel', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Hispaniola w/ nibs', 0.75, N'Israel', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kakao', N'Vanuatu', 0.65, N'Germany', 4, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kaoka (Cemoi)', N'Noir', 0.7, N'France', 4, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kaoka (Cemoi)', N'Ecuador', 0.8, N'France', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ki'' Xocolatl', N'Dark', 0.72, N'Mexico', 3.25, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Madagascar', 0.64, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Bolivian', 0.68, N'U.S.A.', 3.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Akosombo', 0.68, N'France', 1.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Porcelana- Pariguan', 0.69, N'France', 2.5, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Kuruba', 0.6, N'France', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Orinoco', 0.6, N'France', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lake Champlain (Callebaut)', N'Tanzania', 0.75, N'U.S.A.', 1, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malie Kai (Guittard)', N'O''ahu- N. Shore- Waialua Estate', 0.55, N'U.S.A.', 2.75, N'Blend', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olive and Sinclair', N'Dark 67', 0.67, N'U.S.A.', 2.25, N'Unknown', N'Ghana- Domin. Rep');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olive and Sinclair', N'Dark 75', 0.75, N'U.S.A.', 2.5, N'Unknown', N'Ghana- Domin. Rep');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'D.R. Congo- Cru Virunga', 0.7, N'Switzerland', 2.5, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'Piura- Apotequil- Porcelana 72hr c.', 0.75, N'Switzerland', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'Alto Beni- Wild Harvest- Itenez R.- 60hr c.', 0.68, N'Switzerland', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Hawaiin Chocolate Factory', N'Hawai''i- Kona Grand Cru E.', 0.6, N'U.S.A.', 3.5, N'Criollo', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Madagascar', 0.75, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Madagascar', 0.67, N'U.S.A.', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Rio Caribe- Paria Penninsula', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Bahia Brazil- Fazenda Sao Pedro', 0.72, N'Belgium', 3, N'Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Porcelana- Tabasco- Finca La Joya', 0.72, N'Belgium', 3, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Cuyagua', 0.75, N'France', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Republica del Cacao (aka Confecta)', N'Los Rios- Vinces', 0.75, N'Ecuador', 2, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Rio Caribe', 0.7, N'U.S.A.', 2.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santander (Compania Nacional)', N'Colombian 2008', 0.75, N'Colombia', 2.75, N'Forastero (Nacional)', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santander (Compania Nacional)', N'Colombian w/ nibs', 0.7, N'Colombia', 3, N'Forastero (Nacional)', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Tome Acu', 0.68, N'U.S.A.', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Asante', 0.65, N'U.S.A.', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Ben Tre', 0.72, N'U.S.A.', 3.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Hispaniola', 0.7, N'Canada', 3.75, N'Forastero', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Africa', 0.7, N'Canada', 2.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Conacado', 0.7, N'Canada', 3, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Papua New Guinea', 0.7, N'Canada', 3.25, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Madagascar', 0.7, N'Canada', 3.5, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Ocumare', 0.7, N'Canada', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Taza', N'Chiapan', 0.75, N'U.S.A.', 3, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'TCHOPro 60.5', 0.6, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'TCHOPro 68', 0.68, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Tainori', 0.64, N'France', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Alpaco', 0.66, N'France', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Nyangbo', 0.68, N'France', 2.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar', 0.72, N'Madagascar', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar', 0.76, N'Madagascar', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar', 0.8, N'Madagascar', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar', 0.7, N'Madagascar', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar w/ nibs', 0.68, N'Madagascar', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vao Vao (Chocolaterie Robert)', N'Madagascar', 0.64, N'Madagascar', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'San Martin', 0.7, N'U.K.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Rio Caribe', 0.72, N'U.K.', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Akesson''s (Pralus)', N'Madagascar- Ambolikapiky P.', 0.75, N'Switzerland', 3.5, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Akesson''s (Pralus)', N'Monte Alegre- D. Badero', 0.75, N'Switzerland', 3.5, N'Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Dos Rios', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Guayas', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Chuao', 0.7, N'U.S.A.', 4, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'AMMA', N'Monte Alegre- 3 diff. plantations', 0.85, N'Brazil', 2.5, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'AMMA', N'Monte Alegre- 3 diff. plantations', 0.5, N'Brazil', 2.75, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'AMMA', N'Monte Alegre- 3 diff. plantations', 0.75, N'Brazil', 2.75, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'AMMA', N'Monte Alegre- 3 diff. plantations', 0.6, N'Brazil', 3, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Venezuela', 1, N'U.K.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Jamaica', 0.72, N'U.K.', 2.75, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Costa Rica', 0.72, N'U.K.', 3.25, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Ba Ria Vung Tau Province', 0.72, N'U.K.', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Bali', 0.72, N'U.K.', 3, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belcolade', N'Costa Rica', 0.64, N'Belgium', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belcolade', N'Papua New Guinea', 0.64, N'Belgium', 3.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belcolade', N'Peru', 0.64, N'Belgium', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belcolade', N'Ecuador', 0.71, N'Belgium', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Carenero S.- Barlovento- Grand Cru', 0.7, N'Switzerland', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Porcelana- Premier Cru- Quizas No. 1', 0.74, N'Switzerland', 2.75, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Java- Grand Cru', 0.64, N'Switzerland', 3.5, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Ocumare- Premier Cru- Quizas No. 2', 0.72, N'Switzerland', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Bali- Singaraja', 0.75, N'U.S.A.', 2.5, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'2009 Hapa Nibby', 0.7, N'U.S.A.', 2.75, N'Blend', N'Dominican Rep.- Bali');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Bali- Singaraja', 0.65, N'U.S.A.', 3.75, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Sambirano- 2009', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Ocumare- prototype', 0.78, N'U.S.A.', 2.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Atlanta', N'Dominican Republic- Love Bar', 0.75, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Atlanta', N'Dominican Republic w/ nibs', 0.75, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Atlanta', N'Patanemo', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Barry', N'Santo Domingo', 0.7, N'France', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Madagascar', 0.71, N'Spain', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Ecuador', 0.71, N'Spain', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Papua', 0.71, N'Spain', 3, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Grenada', 0.71, N'Spain', 3.25, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Venezuela', 0.71, N'Spain', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Venezuela', 0.77, N'Spain', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chchukululu (Tulicorp)', N'Arriba', 0.55, N'Ecuador', 3.5, N'Forastero (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Xoconusco', 0.71, N'Spain', 3.75, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovic', N'Sambirano', 0.71, N'Spain', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chuao Chocolatier (Pralus)', N'Chuao', 0.77, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Claudio Corallo', N'Terreiro Velho P.', 0.73, N'Sao Tome', 3.25, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Compania de Chocolate (Salgado)', N'Sur del Lago', 0.7, N'Argentina', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Grenada', 0.72, N'Germany', 2.5, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Chuao', 0.7, N'Germany', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Los Rios- H. Iara', 0.72, N'Germany', 3.25, N'Nacional', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Trinidad', 0.72, N'Germany', 3.25, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Jamaica', 0.72, N'Germany', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Ocumare 61', 0.72, N'Germany', 3.5, N'Criollo (Ocumare 61)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Chuao- Hacienda San Jose', 0.7, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Panama', 0.7, N'U.K.', 2.5, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Corazon del Ecuador- Calceta beans', 0.72, N'U.K.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Star of Ecuador', 0.7, N'U.K.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Star of Peru', 0.7, N'U.K.', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Enric Rovira (Claudio Corallo)', N'Terreiro Velho P.', 0.8, N'Spain', 3, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fearless (AMMA)', N'Monte Alegre- D. Badaro- Raw- Organic', 0.75, N'U.S.A.', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Felchlin', N'Grenada', 0.58, N'Switzerland', 3, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Grenada Chocolate Co.', N'Grenada', 0.82, N'Grenada', 2.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Trinidad', 0.65, N'U.S.A.', 3.25, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Ecuador', 0.7, N'U.K.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Santo Domingo', 0.7, N'U.K.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Chuao', 0.7, N'U.K.', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Grenada', 0.75, N'U.S.A.', 1, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Dominican Republic', 0.74, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Venzuela', 0.71, N'U.S.A.', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Luker', N'Selva', 0.46, N'Colombia', 4, N'Unknown', N'Colombia- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Luker', N'Macondo', 0.6, N'Colombia', 3.5, N'Unknown', N'Colombia- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Luker', N'Misterio', 0.58, N'Colombia', 3, N'Unknown', N'Colombia- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Luker', N'Santander', 0.65, N'Colombia', 2.75, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Machu Picchu Trading Co.', N'Peru', 0.55, N'Peru', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Chiapas- Triple Cacao', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Majani', N'Ecuador', 0.7, N'Italy', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malie Kai (Guittard)', N'O''ahu- N. Shore- Waialua Estate w/ nibs', 0.55, N'U.S.A.', 3.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mars', N'Matina 1-6- prototype', 0.65, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mars', N'Ivory Coast', 0.65, N'U.S.A.', 2.75, N'Unknown', N'Ivory Coast');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mars', N'Nigeria', 0.65, N'U.S.A.', 1.5, N'Unknown', N'Nigeria');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mars', N'Ghana- prototype', 0.65, N'U.S.A.', 2.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Patanemo', 0.81, N'U.S.A.', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Ocumare de la Costa', 0.75, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Dominican Republic- Coop', 0.7, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mindo', N'Ecuador', 0.67, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mindo', N'Ecuador', 0.77, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Moho', N'Umoho R.- Toledo District- San Felipe', 0.67, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Neuhaus (Callebaut)', N'Papua New Guinea', 0.7, N'Belgium', 3.25, N'Criollo', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Oakland Chocolate Co.', N'Jamaica', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olive and Sinclair', N'Dominican Republic prototype', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olive and Sinclair', N'Ghana prototype', 0.72, N'U.S.A.', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Chuao', 0.75, N'Belgium', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Trinite', 0.75, N'Belgium', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Baracoa- Cuba', 0.78, N'Belgium', 3.5, N'Criollo- Forastero', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Peru- Las Pampas P.', 0.85, N'Belgium', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Upala- Batch 12', 0.82, N'U.S.A.', 3.75, N'Matina', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Chuao', 0.75, N'France', 3.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rain Republic', N'Suchitepequez E.', 0.7, N'Guatemala', 1, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rancho San Jacinto', N'Ecuador', 0.75, N'Eucador', 2.5, N'Forastero(Arriba- CCN)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Republica del Cacao (aka Confecta)', N'Esmeraldas', 0.75, N'Ecuador', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Piura', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'S.A.I.D.', N'Malgascio', 0.64, N'Italy', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'S.A.I.D.', N'100 percent', 1, N'Italy', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'S.A.I.D.', N'Samana', 0.7, N'Italy', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'S.A.I.D.', N'Arawak', 0.72, N'Italy', 3.5, N'Unknown', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'S.A.I.D.', N'Latino', 0.72, N'Italy', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Camahogne', 0.68, N'U.S.A.', 3.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Amina', 0.65, N'U.S.A.', 2.75, N'Trinitario- Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Snake & Butterfly', N'Madagascar', 0.68, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Snake & Butterfly', N'Ecuador', 0.68, N'U.S.A.', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Black Science Blend 1', 0.7, N'Canada', 2.25, N'Trinitario- Nacional', N'DR- Ecuador- Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Sambirano', 0.71, N'U.K.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Hacienda Las Trincheras', 0.72, N'U.K.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Java', 0.69, N'U.K.', 3.5, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Brazil- Mitzi Blue', 0.65, N'Austria', 2.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Adi', N'Vanua Levu', 0.6, N'Fiji', 2.75, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Adi', N'Vanua Levu- Toto-A', 0.8, N'Fiji', 3, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Adi', N'Vanua Levu', 0.88, N'Fiji', 3, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Adi', N'Vanua Levu- Ami-Ami-CA', 0.72, N'Fiji', 3.25, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Akesson''s (Pralus)', N'Bali (west)- Sukrama Family- Melaya area', 0.75, N'Switzerland', 3.25, N'Trinitario', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amano', N'Morobe', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Haiti', 0.72, N'U.K.', 3.25, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Panama', 0.72, N'U.K.', 3.25, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'Tenende- Uwate', 0.72, N'U.S.A.', 3.5, N'Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'Cortes', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Bali- Sukrama Bros. Farm- Melaya- 62hr C', 0.72, N'Belgium', 3.5, N'Trinitario', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Somia Plantation- Sambirano- 70hr C', 0.72, N'Belgium', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Madagascar', 0.64, N'Switzerland', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Maracaibo', 0.88, N'Switzerland', 3.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Indigena Amazonia- Grand Cru- Quizas', 0.72, N'Switzerland', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beschle (Felchlin)', N'Ecuador', 0.72, N'Switzerland', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Cuba', 0.75, N'France', 3, N'Trinitario', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Cusco- Cacao Cusco', 0.75, N'France', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Piura Blanco', 0.75, N'France', 3.25, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Libanio', 0.75, N'France', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Haiti', 0.75, N'France', 3.5, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Madagascar- 100% criollo', 0.75, N'France', 3.75, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Juliana', 0.75, N'France', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Jamaique', 0.75, N'France', 4, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Prieto', N'Dominican Republicm- rustic', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Prieto', N'Dominican Republic', 0.66, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Prieto', N'Dominican Republic- rustic', 0.65, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Sao Tome', 0.78, N'Italy', 3, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Trinidad', 0.7, N'Italy', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chloe Chocolat', N'Blend No. 1', 0.7, N'France', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocola''te', N'Madagascar', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocola''te', N'Venezuela', 0.68, N'U.S.A.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocosol', N'Chiapas- Lacandon Jungle- Oaxacom Mtn', 0.65, N'Canada', 2.5, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Christopher Morel (Felchlin)', N'Maranon Canyon- Fortunato No. 4', 0.68, N'Canada', 2.75, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Daintree', N'Daintree Estates- N. Queensland', 0.7, N'Australia', 2.75, N'Unknown', N'Australia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Dominican Republic', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Madagascar', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Tanzania', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Los Ujuxtes', 0.6, N'Guatemala', 2.5, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Sambirano', 0.8, N'U.S.A.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Sambirano', 0.72, N'U.S.A.', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Mantuano', 0.75, N'U.S.A.', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'La Red', 0.74, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Ecuador', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Canoabo- Hacienda San Jose', 0.7, N'Italy', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Indio Rojo- Xoco', 0.72, N'U.K.', 3, N'Criollo', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Dominican Republic', 0.65, N'U.K.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Bocas del Toro- Tierra Oscura', 0.72, N'U.K.', 3.75, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Nicaliso- Xoco', 0.71, N'U.K.', 2.5, N'Criollo', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Ocumare', 0.71, N'U.K.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Ceibo', N'Alto Beni- Covendo Region', 0.75, N'Bolivia', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethel''s Artisan (Mars)', N'Peru- Madagascar', 0.55, N'U.S.A.', 3.5, N'Unknown', N'Peru- Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethel''s Artisan (Mars)', N'Trinidad', 0.55, N'U.S.A.', 2.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethel''s Artisan (Mars)', N'Porcelana', 0.7, N'U.S.A.', 2.75, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethel''s Artisan (Mars)', N'Red Vanilla', 0.62, N'U.S.A.', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethel''s Artisan (Mars)', N'Venezuela- Trinidad', 0.62, N'U.S.A.', 2.75, N'Unknown', N'Venezuela- Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Maranon Canyon- Fortunato No. 4', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'La Red', 0.65, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Ghana- #211- MR- MC', 0.74, N'U.S.A.', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Jamaica- #209- DR- SC', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Conacado- #212- LR- SC', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Jamaica- #210- DR- MC', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Sambirano Valley- #214- LR- MC', 0.74, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Conacado- #213- DR- -C', 0.72, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Sambirano Valley- #215- MR- MC', 0.74, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Chuao- #218- MR- MC', 0.76, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Chuao- #217- DR- MC', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Johe- Xoco', 0.7, N'Denmark', 3.25, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Chuno- Xoco', 0.7, N'Denmark', 3.5, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Nicaliso- Xoco', 0.7, N'Denmark', 3.75, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Signature Blend', 0.66, N'U.S.A.', 1.5, N'Trinitario', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Costa Rica', 0.7, N'U.S.A.', 3, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Grand Place', N'Ben Tre- Dong Nai', 0.72, N'Vietnam', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Coucher du Soleil', 0.72, N'U.S.A.', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Lever du Soleil', 0.61, N'U.S.A.', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Onyx', 0.72, N'U.S.A.', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Haigh', N'South America and Africa', 0.7, N'Australia', 3, N'Unknown', N'South America- Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Los Rios- H. Iara- 96hr c.', 0.8, N'U.K.', 3.25, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Island Growers- 120hr c.', 0.65, N'U.K.', 3.25, N'Trinitario', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Island Growers- 96hr c.', 0.65, N'U.K.', 3.25, N'Trinitario', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Coopertiva Amazona', 0.72, N'Switzerland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Sur del Lago- Amiari Meridena- Zulia- 48hr c.', 0.72, N'Switzerland', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Choroni- Finca Torres- 48hr c.', 0.72, N'Switzerland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Ocumare- H. Cata- 48hr c.', 0.72, N'Switzerland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Porcelana- Zulia', 0.74, N'Switzerland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Ocumare- H. Cata- w/ nibs', 0.72, N'Switzerland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Carenero Superior- Urrutia- Barlovento', 0.7, N'Switzerland', 3.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Coopertiva Amazona w/ nibs', 0.72, N'Switzerland', 3.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Sur del Lago- Amiari Meridena- Zulia- w/ nibs', 0.72, N'Switzerland', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Quito', 0.74, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Grenada', 0.68, N'France', 3.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Oroquidea', N'Peruvian Amazon', 0.72, N'Peru', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Pepa de Oro', N'Vinces', 0.6, N'Ecuador', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Machu Picchu Trading Co.', N'Peru', 0.7, N'Peru', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Dominican', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Upala', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Brooklyn Blend', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Chuao- Med. Roast', 0.76, N'U.S.A.', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Chuao- Dark Roast', 0.7, N'U.S.A.', 2.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Chuao- Light Roast', 0.81, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Moho River', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Papua New Guinea', 0.71, N'U.S.A.', 3.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'San Martin', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Conacado', 0.73, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'La Red de Guanconejo- N. Highlands coop', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Momotombo', N'Matagalpa', 0.7, N'Nicaragua', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Momotombo', N'Mombacho', 0.7, N'Nicaragua', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Momotombo', N'Oscuro', 0.7, N'Nicaragua', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Oialla by Bojessen (Malmo)', N'Sylvestre- Oialla', 0.7, N'Germany', 3.75, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olivia', N'Carribean-Raw', 0.76, N'Canada', 3.75, N'Unknown', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olivia', N'Carribean', 0.76, N'Canada', 4, N'Unknown', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olivia', N'Carribean', 0.85, N'Canada', 3.25, N'Unknown', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Olivia', N'Carribean-Raw', 0.85, N'Canada', 2.75, N'Unknown', N'Carribean');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Omanhene', N'Ghana', 0.8, N'Ghana', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'Alto Beni- Wild Harvest- Itenez R. 24hr c.', 0.66, N'Switzerland', 3.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Nube- prototype', 0.7, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Signature Blend', 0.7, N'U.S.A.', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Upala w/ nibs', 0.7, N'U.S.A.', 4, N'Matina', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Upala- Batch 18', 0.7, N'U.S.A.', 3.25, N'Matina', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'San Martin- Amazonian Highlands', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Bahia', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Porcelana- S. of Lake Maracaibo', 0.75, N'France', 3.25, N'Criollo (Porcelana)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raaka', N'La Red', 0.85, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Costa Rica', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Silvestre- Batch 1- 2011', 0.75, N'U.S.A.', 3, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Carenero Superior', 0.73, N'Hungary', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Porcelana', 0.71, N'Hungary', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Aragua- Trincheras', 0.7, N'Hungary', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Principe', 0.77, N'Hungary', 2.5, N'Forastero', N'Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Santome', N'Sao Tome', 0.7, N'France', 2.75, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'Markham Valley', 0.68, N'U.S.A.', 2.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark''s', N'Hilo', 0.73, N'U.S.A.', 3, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark''s', N'Hilo- w/ added cocoa butter', 0.73, N'U.S.A.', 3, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shattell', N'Porcelana', 0.75, N'Peru', 3.75, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Silvio Bessone', N'Maya Belize', 0.67, N'Italy', 2.75, N'Criollo', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Silvio Bessone', N'Trintade- Sao Tome', 0.65, N'Italy', 3.25, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Silvio Bessone', N'Bahia- Scavina', 0.6, N'Italy', 3, N'Trinitario', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Silvio Bessone', N'Porcelana- Colombia- Amazonas', 0.68, N'Italy', 3.5, N'Criollo- Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Snake & Butterfly', N'Ghana', 0.67, N'U.S.A.', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Grenada- Black Science', 0.7, N'Canada', 3.25, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Alto Beni- Wild Bolivian', 0.7, N'Canada', 3, N'Nacional', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Peruvian', 0.64, N'Canada', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Three Amigos(Chuao- Wild Bolivia- D.R.)', 0.7, N'Canada', 3.25, null, N'Ven- Bolivia- D.R.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Elvesia P.- Black Science', 0.7, N'Canada', 2, N'Forastero', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Chuao', 0.7, N'Canada', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Stella (aka Bernrain)', N'India', 0.72, N'Switzerland', 2.75, N'Unknown', N'India');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Crudo', 0.7, N'Hungary', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Taza', N'Alto Beni', 0.87, N'U.S.A.', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tocoti', N'Venezuela', 0.72, N'U.S.A.', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tocoti', N'Dominican Republic', 0.74, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tsara (Cinagra)', N'Ambanja- Tsara Valley', 0.72, N'Madagascar', 2.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Dominican Republic', 0.73, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Un Dimanche A Paris', N'Dominican Republic', 0.63, N'France', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Caraque', 0.56, N'France', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Porcelana- Pedegral', 0.64, N'France', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Whittakers', N'Ghana', 0.72, N'New Zealand', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Ocumare', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'La Red', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zokoko', N'Alto Beni', 0.68, N'Australia', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zokoko', N'Tokiala', 0.66, N'Australia', 3, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zokoko', N'Tranquilidad- Baures', 0.72, N'Australia', 2, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Peru', 0.7, N'Austria', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Congo', 0.65, N'Austria', 3, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Kerala State', 0.65, N'Austria', 3, N'Forastero', N'India');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Kerala State', 0.62, N'Austria', 3.5, N'Unknown', N'India');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Bolivia', 0.7, N'France', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Peru', 0.63, N'France', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amedei', N'Piura- Blanco de Criollo', 0.7, N'Italy', 2.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Colombia- Casa Luker', 0.72, N'U.K.', 2.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bahen & Co.', N'Sambirano', 0.7, N'Australia', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bahen & Co.', N'Bahia', 0.7, N'Australia', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bahen & Co.', N'Houseblend', 0.7, N'Australia', 2.75, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bar Au Chocolat', N'Duarte Province', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bar Au Chocolat', N'Chiapas', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bar Au Chocolat', N'Sambirano', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Baravelli''s', N'single estate', 0.8, N'Wales', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bernachon', N'Nature', 0.55, N'France', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bittersweet Origins', N'Ghana', 0.72, N'U.S.A.', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Guatemala', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Madagascar', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Prieto', N'Criollo- Dominican Republic', 0.72, N'U.S.A.', 3.75, N'Criollo', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Venezuela', 0.8, N'Italy', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caribeans', N'Costa Rica', 0.72, N'Costa Rica', 3.5, N'Forastero', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caribeans', N'Costa Rica', 0.8, N'Costa Rica', 3.5, N'Forastero', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Ghana Puristique', 0.85, N'Germany', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Ecuador Puristique', 1, N'Germany', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Uba Budo', 0.72, N'Germany', 2, N'Forastero', N'Sao Tome & Principe');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Madagascar', 0.7, N'Germany', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Tanzania- batch a1', 0.75, N'Australia', 3, N'Forastero', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Bahia- batch a1213', 0.65, N'Australia', 3.25, N'Trinitario', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Namau Village- N. Taileva P.- batch a2812', 0.67, N'Australia', 3.5, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Vanuatu', 0.64, N'Australia', 3.5, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Djual Island', 0.75, N'Australia', 3.5, N'Forastero', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Upala', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Colombian', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Elvesia- 2011', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Chuao', 0.75, N'Guatemala', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Los Ujuxtes', 0.7, N'Guatemala', 2.75, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Sambirano', 0.7, N'Guatemala', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Las Acacias E.', 0.7, N'Guatemala', 3, N'Criollo', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Oscuro- Finca Chimelb', 0.7, N'Guatemala', 3, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Davis', N'West Africa', 0.58, N'U.S.A.', 3, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Bolivia', 0.75, N'U.S.A.', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Belize', 0.72, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Morogoro', 0.7, N'Italy', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Guasare', 0.7, N'Italy', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Ocumare', 0.72, N'U.K.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durand', N'Madagascar', 0.82, N'France', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Eclat (Felchlin)', N'Maranon- Good & Evil- w/ nibs', 0.72, N'U.S.A.', 3.5, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Escazu', N'Rio Caribe', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Franceschi', N'Canoabo', 0.7, N'Venezuela', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Franceschi', N'Sur del Lago', 0.6, N'Venezuela', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Tumbes Coop', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Palo Blanco- Chulucanas', 0.61, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Palo Blanco w/ panela- Chulucanas', 0.81, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Markham Valley- #219- LR- MC', 0.69, N'U.S.A.', 3.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Markham Valley- #221- DR- MC', 0.69, N'U.S.A.', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Sambirano Valley- #216- MR- LC', 0.74, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Markham Valley- #220- MR- MC', 0.69, N'U.S.A.', 4, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Markham Valley- #222- LR- 0C', 0.69, N'U.S.A.', 4, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Chuno- triple turned- Xoco', 0.7, N'Denmark', 4, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Red Mayan- Xoco', 0.7, N'Denmark', 4, N'Criollo- Trinitario', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Chuno- double turned- Xoco', 0.7, N'Denmark', 3.5, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Rugoso- Xoco', 0.7, N'Denmark', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Peru', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Sambirano', 0.66, N'U.K.', 3.25, N'Trinitario- Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Indaphoria', N'La Red', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Indaphoria', N'Conacado- Manifesto', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'iQ Chocolate', N'Satipo region- white label', 0.72, N'Scotland', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'iQ Chocolate', N'black label', 0.72, N'Scotland', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kakao', N'Peru', 0.64, N'Germany', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Peru', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Brazil', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L.A. Burdick (Felchlin)', N'Chuao', 0.68, N'U.S.A.', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Loma Sotavento', 0.66, N'France', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lajedo do Ouro', N'Catongo', 0.7, N'Brazil', 2.5, N'Forastero (Catongo)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L''Amourette', N'Carenero Superior', 0.75, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L''Amourette', N'Rio Caribe', 0.75, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L''Amourette', N'Blend', 0.72, N'U.S.A.', 3, N'Criollo', N'Peru- Ecuador- Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'Perfect Illusion', 0.65, N'U.S.A.', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'Bolivia- Wild Thing', 0.68, N'U.S.A.', 3.75, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'La Selva', 0.68, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'Purple Haze', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Venezuela- Dom. Rep.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'The Other One- Grand Cru', 0.74, N'U.S.A.', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lillie Belle', N'Wild Thing', 0.68, N'U.S.A.', 2.5, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Hamakua Coast- Kokoleka', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Criollo- Hawaii', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Kaua''i', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mana', N'Conacado', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Liberia- #174', 0.72, N'U.S.A.', 4, N'Unknown', N'Liberia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Hamakua- Hawaiian Crown- #176', 0.72, N'U.S.A.', 3, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Piura', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Oahu- Winward- #151- Maunawili district', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Grand Cru Dominican Republic', 0.7, N'Poland', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Grand Cru Ghana', 0.7, N'Poland', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Grand Cru Ecuador', 0.7, N'Poland', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Ba Ria', 0.76, N'Vietnam', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Dong Nai', 0.72, N'Vietnam', 3.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Tien Giang- Gao Co-op', 0.7, N'Vietnam', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Ben Tre', 0.78, N'Vietnam', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Tien Giang', 0.8, N'Vietnam', 3.25, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Lam Dong', 0.74, N'Vietnam', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Shake Shack', 0.73, N'U.S.A.', 3, N'Blend', N'Peru- Mad.- Dom. Rep.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Madagascar', 0.72, N'U.S.A.', 3, N'Trinitario', null);
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Chuao', 0.73, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Menakao (aka Cinagra)', N'Madagascar', 0.8, N'Madagascar', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Menakao (aka Cinagra)', N'Madagascar', 0.72, N'Madagascar', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Michel Cluizel', N'Chiapas- Mokaya P.', 0.66, N'France', 2.75, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Houseblend', 0.65, N'U.S.A.', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Alto Beni', 0.75, N'U.S.A.', 2.75, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Balinese- Java', 0.7, N'U.S.A.', 3, N'Criollo', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Millcreek Cacao Roasters', N'Ecuador', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mita', N'Tumaco', 0.65, N'Colombia', 3, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Naive', N'Grenada', 0.71, N'Lithuania', 3, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Noir d'' Ebine', N'Venezuela', 0.7, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Noir d'' Ebine', N'Ecuador', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nova Monda', N'La Patriota- cacao Indio- purple label', 0.7, N'Nicaragua', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nova Monda', N'La Dalia- Matagalpa-cacao Bisesto-green label', 0.75, N'Niacragua', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nova Monda', N'Punta Galera- cacao Nacional- gold label', 0.8, N'Nicaragua', 3.25, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Orquidea', N'Peru', 0.65, N'Peru', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Orquidea', N'Peru', 0.72, N'Peru', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Ecuador- raw', 0.85, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Piura', 0.7, N'Ecuador', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pomm (aka Dead Dog)', N'La Red- 2011', 0.76, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pomm (aka Dead Dog)', N'Peru', 0.82, N'U.S.A.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pura Delizia', N'Venezuela', 0.73, N'Italy', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.6, N'Brazil', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.65, N'Brazil', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raaka', N'Madagascar', 0.75, N'U.S.A.', 2, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raw Cocoa', N'Raw', 0.7, N'Poland', 2.75, N'Criollo', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Sambirano', 0.75, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Camino Verde P.- 2012- Balao- Guayas', 0.75, N'U.S.A.', 2.75, N'Nacional (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Gran Couva', 0.75, N'U.S.A.', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rococo (Grenada Chocolate Co.)', N'Gru Grococo- St. Andrews', 0.66, N'U.K.', 3, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Camino Verde P.- Balao- Guayas', 0.75, N'U.S.A.', 3.25, N'Nacional (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Sur del Lago', 0.84, N'Hungary', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Rio Caribe Superior- Paria Penninsula', 0.76, N'Hungary', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rozsavolgyi', N'Sambirano- Akesson Estate', 0.72, N'Hungary', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sacred', N'Midnight', 0.83, N'U.S.A.', 2.75, N'Unknown', N'Central and S. America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sacred', N'Twilight', 0.69, N'U.S.A.', 3, N'Unknown', N'Central and S. America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Scharffen Berger', N'San Juan de Cheni', 0.78, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sibu Sura', N'Peru', 0.7, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Noula Coop', 0.7, N'Canada', 3.25, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'O''ahu', 0.7, N'Canada', 3.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Dual Origins- Sambirano- Elvesia', 0.7, N'Canada', 3.5, N'Blend', N'Dom. Rep.- Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Dancing in Your Head- 5 bean blend', 0.7, N'Canada', 2.75, N'Blend', N'Gre.- PNG- Haw.- Haiti- Mad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Cahabon Region', 0.7, N'Canada', 3.25, N'Trinitario', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Carenero Superior', 0.7, N'Canada', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Eastern Promises', 0.7, N'Canada', 3, N'Blend', N'Mad.- Java- PNG');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Papua New Guinea', 0.85, N'Canada', 3.5, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spagnvola', N'AgroCriso Plantation', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spagnvola', N'AgroCriso Plantation', 0.8, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spagnvola', N'AgroCriso Plantation', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Stella (aka Bernrain)', N'Bahia- Agri-Forestal Plantation- 2010', 0.68, N'Switzerland', 3.5, N'Trinitario', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'StRita Supreme', N'Samar- East Visayas region', 0.65, N'U.S.A.', 3.5, N'Unknown', N'Philippines');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'StRita Supreme', N'Samar- East Visayas region', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Philippines');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'StRita Supreme', N'Samar- East Visayas region', 0.75, N'U.S.A.', 4, N'Unknown', N'Philippines');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Santo Domingo', 0.7, N'Hungary', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Millot Plantation', 0.7, N'Hungary', 3.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Ayacucho- El Guinacho', 0.7, N'Hungary', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'Peru- Ecuador', 0.99, N'U.S.A.', 3, N'Unknown', N'Peru- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Concepcion', 0.7, N'U.S.A.', 3, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Bayou Blend', 0.7, N'U.S.A.', 3.25, N'Blend', N'Ecuador- Mad.- PNG');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Aranama', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Presidio', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'La Bahia- w/ cane juice', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Capistrano', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'La Bahia- w/ cane sugar', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'San Jose', 0.7, N'U.S.A.', 2, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Capistrano*', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Espada', 0.7, N'U.S.A.', 3, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Espada', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Concepcion*', 0.8, N'U.S.A.', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'San Jose', 0.67, N'U.S.A.', 2.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tejas', N'Bahia- Floresta Azul-Good Friends Reserve#3', 0.7, N'U.S.A.', 2.75, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theo', N'Congo w/ nibs', 0.65, N'U.S.A.', 2.75, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tobago Estate (Pralus)', N'Roxborough- Tobago', 0.7, N'France', 3.5, N'Trinitario', N'Tobago');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tocoti', N'Wild Bolivian- Jungle Love', 0.77, N'U.S.A.', 3.5, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Otucan- Grand Cru', 0.69, N'France', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vanleer (Barry Callebaut)', N'Manhattan', 0.72, N'U.S.A.', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vanleer (Barry Callebaut)', N'Napa', 0.65, N'U.S.A.', 3.5, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Videri', N'Classic', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Central and S. America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vietcacao (A. Morin)', N'Ben Tre- Mekong Delta- MoCay', 0.7, N'France', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Ecuador', 0.7, N'U.S.A.', 1.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Costa Rica', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Sambirano', 0.7, N'U.S.A.', 4, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Bocas del Toro- Cocabo Co-op', 0.72, N'Austria', 2.5, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Amazonas Frucht', 0.65, N'Austria', 2.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Satipo Pangoa region- 16hr conche', 0.7, N'Austria', 2.75, N'Criollo (Amarru)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Satipo Pangoa region- 20hr conche', 0.7, N'Austria', 2.75, N'Criollo (Amarru)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Loma Los Pinos- Yacao region- D.R.', 0.62, N'Austria', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'El Oro', 0.75, N'Austria', 2.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Huiwani Coop', 0.75, N'Austria', 2.75, N'Criollo- Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'El Ceibo Coop', 0.9, N'Austria', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Santo Domingo', 0.7, N'Austria', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Kongo- Highlands', 0.68, N'Austria', 3, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Indianer- Raw', 0.58, N'Austria', 3, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Panama', 0.7, N'France', 3, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Madagascar', 0.7, N'France', 3, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Brazil', 0.7, N'France', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Equateur', 0.7, N'France', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Colombie', 0.7, N'France', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Birmanie', 0.7, N'France', 3.5, N'Unknown', N'Burma');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Papua New Guinea', 0.7, N'France', 3.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Chuao', 0.7, N'France', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Piura', 0.7, N'France', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Chanchamayo Province', 0.7, N'France', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Chanchamayo Province', 0.63, N'France', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alain Ducasse', N'Chuao', 0.75, N'France', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alain Ducasse', N'Piura- Perou', 0.75, N'France', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Sur del Lago', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Conacado', 0.6, N'U.S.A.', 3.75, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Bolivia', 0.8, N'U.S.A.', 3.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Bolivia', 0.6, N'U.S.A.', 3.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Peru', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amazona', N'LamasdelChanka- San Martin- Oro Verde coop', 0.72, N'Peru', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Amazona', N'Bellavista Gran Pajeten- San Martin', 0.73, N'Peru', 3.75, N'Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'AMMA', N'Catongo', 0.75, N'Brazil', 3.75, N'Forastero (Catongo)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat', N'Trinidad- Heritage- Limited ed.', 0.72, N'U.K.', 3.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Artisan du Chocolat (Casa Luker)', N'Orinoqua Region- Arauca', 0.72, N'U.K.', 4, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Baracoa', 0.74, N'Belgium', 4, N'Trinitario', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Chuao', 0.74, N'Belgium', 4, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Cuyagua Village', 0.74, N'Belgium', 4, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Benoit Nihant', N'Rio Peripa H.', 0.73, N'Belgium', 2.5, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blanxart', N'Congo- Grand Cru', 0.82, N'Spain', 2.75, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Maragnam', 0.75, N'France', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Gabon', 0.75, N'France', 3, N'Unknown', N'Gabon');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Cooproagro', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Camino Verde- Guayas', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Ghana', 0.75, N'U.S.A.', 2.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Chuao- Mantuano blend', 0.85, N'U.S.A.', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Breeze Mill', N'Jamaica', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bronx Grrl Chocolate', N'Dominican Republic', 0.68, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacaosuyo (Theobroma Inversiones)', N'Piura', 0.7, N'Peru', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Ecuador', 1, N'Italy', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Bolivia', 0.7, N'U.S.A.', 2, N'Trinitario', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Conacado', 0.73, N'U.S.A.', 2.75, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'San Martin', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Guaniamo- Amazonas', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Nicaragua', 0.72, N'U.S.A.', 4, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Tumbes', 0.7, N'U.S.A.', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Guaniamo', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chokolat Elot (Girard)', N'Guadeloupe', 0.42, N'Martinique', 3.25, N'Unknown', N'Martinique');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coppeneur', N'Ecuador- Puristique', 0.65, N'Germany', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Cumboto- farmer Jose Lugo', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Patanemo', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Mantuano- 2012', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Papua New Guinea', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Davis', N'Ghana', 0.7, N'U.S.A.', 2.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Davis', N'Rainforest', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Davis', N'Venezuela', 0.7, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Ecuador- Choc. Garage Exclusive', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Camino Verde', 0.76, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'IL100- H. San Jose', 1, N'Italy', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Emerald Estate', N'Emerald Estate', 0.6, N'St. Lucia', 2.75, N'Unknown', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Emerald Estate', N'Emerald Estate', 0.7, N'St. Lucia', 2.75, N'Unknown', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Palo Blanco- Chulucanas', 0.66, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Conacado- #223- MR- SC', 0.72, N'U.S.A.', 2, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Conacado- #224- MR- MC', 0.72, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'San Martin- Bellavista Coop- #226- DR- MC', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Bellavista Coop- #225- LR- MC- CG Exclusive', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Barba- Xoco', 0.7, N'Denmark', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'Medagla- Xoco', 0.7, N'Denmark', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'La Red', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Camino Verde', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Haiti', 0.65, N'U.S.A.', 3.25, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Nicaragua', 0.65, N'U.S.A.', 2.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Jamaica', 0.65, N'U.S.A.', 3.25, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Ecuador', 0.65, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat', N'Marcial- single Cote- 2012', 0.7, N'U.K.', 3.75, N'Trinitario', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat', N'Island Growers- 2012- 120hr c.', 1, N'U.K.', 3, N'Trinitario', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Trinidad', 0.75, N'U.K.', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Mekong Delta & Dong Nai', 0.8, N'U.K.', 3.25, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Los Rios- H. Iara', 0.9, N'U.K.', 3.25, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Somia Plantation- Akesson- 2012', 0.72, N'U.K.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Los Rios- H. Iara- 2012', 0.82, N'U.K.', 3.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Chanchamayo- Pichanadi- 2012- 60hr c.', 1, N'U.K.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Los Rios- H. Iara- 2012- 120hr c.', 1, N'U.K.', 3.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat (Coppeneur)', N'Conacado- 2012- 120hr c.', 1, N'U.K.', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Ocumare- Cumboto', 0.7, N'Canada', 2.25, N'Trinitario- Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Amazonas', 0.7, N'Canada', 2.5, N'Forastero', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Idilio (Felchlin)', N'Chuao- Venezuela', 0.72, N'Switzerland', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kah Kow', N'Rizek Cacao- Cibao Valley- Domin. Rep.', 0.7, N'Domincan Republic', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kah Kow', N'Rizek Cacao- Domin. Rep.', 0.82, N'Domincan Republic', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kah Kow', N'Rizek Cacao- Domin. Rep.', 0.55, N'Domincan Republic', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kah Kow', N'Rizek Cacao- Domin. Rep.', 0.62, N'Domincan Republic', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kerchner', N'La Red- Project Reserva- Guaconejo', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Cuana- 2013', 0.74, N'France', 3.25, N'Unknown', N'Africa- Carribean- C. Am.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Tobago', 0.6, N'France', 3.5, N'Unknown', N'Tobago');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Maison du Chocolat (Valrhona)', N'Acarigua- w/ nibs', 0.56, N'France', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Loiza', N'Puerto Rico', 0.65, N'Puerto Rico', 3.5, N'Unknown', N'Puerto Rico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lonohana', N'Opaeula Estate- O''ahu- Nene- CG Exclusive', 0.71, N'U.S.A.', 3.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lonohana', N'Opaeula Estate- O''ahu- Ele''ele', 0.72, N'U.S.A.', 3.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lonohana', N'Hawaiian Crown- Kona Vanilla', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Puerto Rico', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Puerto Rico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Brazil', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Choobua- Kona', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Xocunusco- Chiapas- Pichucalco', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malagos', N'Davao- Mt. Talamo foothills', 0.65, N'Philippines', 2.75, N'Trinitario', N'Philippines');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Waiahole- O''ahu', 0.72, N'U.S.A.', 3, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Tan Phu Dong- Treasure Island', 0.75, N'Vietnam', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marsatta', N'Dominican Republic', 0.74, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marsatta', N'Dominican Republic', 0.89, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Matale', N'Malekula P.- 2013', 0.72, N'Australia', 3.5, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Matale', N'Somia- 2013', 0.68, N'Australia', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Matale', N'Kulili P.- 2013', 0.74, N'Australia', 3.5, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Matale', N'Blend', 0.7, N'Australia', 2.5, N'Trinitario', N'PNG- Vanuatu- Mad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'La Red', 0.75, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Belize', 0.8, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Millcreek Cacao Roasters', N'Ecuador', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Moho', N'Toledo District- w/ nibs', 0.73, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Moho', N'Toledo District', 0.72, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nahua', N'Costa Rica- Oscuro', 0.58, N'Costa Rica', 3.25, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nahua', N'Costa Rica- Oscuro', 0.7, N'Costa Rica', 3.25, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Naive', N'Trinidad & Tobago', 0.7, N'Lithuania', 3.25, N'Unknown', N'Trinidad- Tobago');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Naive', N'Maranon Canyon- Fortunato No. 4', 0.78, N'Lithuania', 3.25, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nanea', N'Criollo Blend', 0.85, N'U.S.A.', 3.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Night Owl', N'Peru', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Night Owl', N'Ecuador', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'organicfair', N'Maya Mountain', 0.74, N'Canada', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'organicfair', N'La Red', 0.72, N'Canada', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'organicfair', N'Nicaraqua', 0.72, N'Canada', 3, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'organicfair', N'Caribe', 0.72, N'Canada', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'organicfair', N'Mindo', 0.72, N'Canada', 3, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pascha', N'Peru', 0.55, N'Peru', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pascha', N'Peru', 0.7, N'Peru', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Patric', N'Piura- Choc. Garage Exclusive', 0.67, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.75, N'Brazil', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.85, N'Brazil', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.55, N'Brazil', 2.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Q Chocolate', N'Brazil', 0.8, N'Brazil', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Toledo District- Maya', 0.75, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Maranon- Cajamarca', 0.75, N'U.S.A.', 3.25, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Robert (aka Chocolaterie Robert)', N'Madagascar', 0.75, N'Madagascar', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Robert (aka Chocolaterie Robert)', N'Madagascar w/ nibs', 0.68, N'Madagascar', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Akessons Estate- Sambirano- 2013', 0.7, N'U.S.A.', 2, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Hispaniola- 2013', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Silvestre- Batch 7- 2013', 0.75, N'U.S.A.', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Bachelor''s Hall E.- St. Thomas Parish', 0.75, N'U.S.A.', 3, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'Sambirano', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'Amazonas', 0.7, N'U.S.A.', 1.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'Bolivia', 0.7, N'U.S.A.', 2.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'San Martin', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'Wasatch', 0.7, N'U.S.A.', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Rizek Cacao- Domin. Rep.', 0.77, N'Canada', 3.75, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Java', 0.7, N'Canada', 4, N'Criollo', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Apurimac- El Quinacho Co-op', 0.7, N'Canada', 2.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Sangre Grande P.- Trinidad', 0.7, N'Canada', 2.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Chef''s Blend', 0.7, N'Canada', 2.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Patanemo', 0.7, N'Canada', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Crazy 88', 0.88, N'Canada', 2.75, N'Unknown', N'Guat.- D.R.- Peru- Mad.- PNG');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Maracaibo- El Vigia', 0.7, N'Canada', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Equator', 0.67, N'Canada', 3.25, N'Unknown', N'Peru- Dom. Rep');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Orinoco', 0.7, N'Canada', 3.25, N'Forastero', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Bachelor''s Hall E.- St. Thomas Parish', 0.7, N'Canada', 3.5, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sprungli (Felchlin)', N'Alto Beni', 0.7, N'Switzerland', 3.5, N'Criollo', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'SRSLY', N'Dominican Republic', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'SRSLY', N'Dominican Republic', 0.84, N'U.S.A.', 2, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sublime Origins', N'Sambirano', 0.67, N'U.S.A.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sublime Origins', N'Moho Valley', 0.78, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Autumn- Primary Harvest- 2012', 0.7, N'Hungary', 3.75, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Spring- Secondary Harvest- 2012', 0.7, N'Hungary', 2, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Cacao Blanco', 0.7, N'Hungary', 2.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tabal', N'Costa Rica', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tabal', N'Dominican Republic', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tabal', N'Chiapas- Lacandon Jungle', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tabal', N'Peru', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Dominican Republic', 0.68, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Palos Blancos', 0.75, N'U.S.A.', 2.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Andoa- Grand Cru blend', 0.7, N'France', 2.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Loma Sotavento- 2013', 0.64, N'France', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Videri', N'Dark', 0.9, N'U.S.A.', 3.75, N'Unknown', N'Central and S. America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wilkie''s Organic', N'Amazonas', 0.75, N'Ireland', 2.75, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wilkie''s Organic', N'Amazonas', 0.89, N'Ireland', 2.75, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wilkie''s Organic', N'Tumbes', 0.75, N'Ireland', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wilkie''s Organic', N'Amazonas w/ nibs', 0.75, N'Ireland', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Java- Indonesian Black', 1, N'U.K.', 3.25, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Camino Verde P.- Balao- Guayas', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Gran Couva', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Xocolat', N'Hispaniola', 0.66, N'Domincan Republic', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Carenero', 0.7, N'France', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Cuba', 0.7, N'France', 3.25, N'Unknown', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Sur del Lago', 0.7, N'France', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Puerto Cabello', 0.7, N'France', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Pablino', 0.7, N'France', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alain Ducasse', N'Trinite', 0.65, N'France', 3.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alain Ducasse', N'Vietnam', 0.75, N'France', 3.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alain Ducasse', N'Madagascar', 0.75, N'France', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Anahata', N'Elvesia', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ara', N'Madagascar', 0.75, N'France', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ara', N'Chiapas', 0.72, N'France', 3.25, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ara', N'Equateur', 0.75, N'France', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ara', N'Trincheras', 0.75, N'France', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bar Au Chocolat', N'Maranon Canyon', 0.7, N'U.S.A.', 3.5, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Black River (A. Morin)', N'Blue Mountain Region', 0.7, N'U.K.', 3.5, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Kaori', 0.75, N'France', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Los Colorados- Santo Domingo- Equateur', 0.75, N'France', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Surfin', 0.65, N'France', 2.75, N'Unknown', N'Venez-Africa-Brasil-Peru-Mex');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bowler Man', N'Maya Mountain', 0.7, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bowler Man', N'Conacado', 0.7, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Maya Mountain', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Chuao', 0.7, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bright', N'Somia Plantation', 0.72, N'Australia', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bright', N'Marabel Farms', 0.7, N'Australia', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bright', N'Camino Verde- Balao- Guayas', 0.72, N'Australia', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bright', N'Gran Couva', 0.68, N'Australia', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Burnt Fork Bend', N'Trinidad', 0.72, N'U.S.A.', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Burnt Fork Bend', N'Mindo', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Burnt Fork Bend', N'Belize', 0.72, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Burnt Fork Bend', N'Blend', 0.72, N'U.S.A.', 3.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Burnt Fork Bend', N'Ecuador- Bob Bar', 0.6, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Atlanta', N'Tumbes', 0.75, N'U.S.A.', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao de Origen', N'Chuao- Aragua region', 0.75, N'Venezuela', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao de Origen', N'Chuao- Aragua region', 0.7, N'Venezuela', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Sierra Nevada', 0.64, N'Colombia', 3.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Tumaco', 0.7, N'Colombia', 2.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Boyaca- Aprocampa Coop- Pauna', 0.69, N'Colombia', 2.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Arauca', 0.7, N'Colombia', 2.75, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Cuba', 0.75, N'Italy', 3, N'Unknown', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Dominican Republic', 0.72, N'Italy', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'C-Amaro', N'Lago di Como- Blu', 0.7, N'Italy', 2.5, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Captain Pembleton', N'Saidor Estate- Madang P.', 0.7, N'New Zealand', 2.75, N'Trinitario', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Captain Pembleton', N'Kulili Estate', 0.7, N'New Zealand', 2.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Sierra Nevada', 0.72, N'U.S.A.', 2.75, N'Criollo- Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Arauca', 0.76, N'U.S.A.', 2.75, N'Criollo- Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Elvesia P.', 0.7, N'U.S.A.', 3, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cello', N'Ecuador', 0.7, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cello', N'Peru', 0.7, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cello', N'Venezuela', 0.7, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cello', N'Bolivia', 0.7, N'U.S.A.', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chaleur B', N'Uganda', 0.7, N'Canada', 3.25, N'Forastero', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chequessett', N'la Amistad', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choco Del Sol', N'Maya Mountain w/ nibs', 0.75, N'Germany', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choco Del Sol', N'Maya Mountain', 0.82, N'Germany', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Conspiracy', N'Peru', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolats Privilege', N'Xoconusco', 0.7, N'Canada', 3.5, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'New Ireland', 0.7, N'Australia', 3.75, N'Forastero', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cravve', N'Vanuatu- batch 2410', 0.83, N'Australia', 3.75, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Maya Mountain', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Camino Verde P.- Balao- Guayas- 2013', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Buto', 0.7, N'U.S.A.', 4, N'Unknown', N'Liberia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'San Francisco de Macoris- Cibao region', 0.7, N'U.S.A.', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Danta', N'Los Ujuxtes', 0.82, N'Guatemala', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Elvesia', 0.74, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Doble & Bignall', N'Panama- Raven', 0.72, N'U.K.', 3.25, N'Unknown', N'Panama');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Doble & Bignall', N'Puerto Cabello- Mantuano', 0.72, N'U.K.', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Doble & Bignall', N'Johe', 0.72, N'U.K.', 3, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Chuno- Xoco', 0.7, N'U.K.', 2.5, N'Criollo', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Rico Rugoso- Xoco', 0.76, N'U.K.', 2.75, N'Criollo', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'East Van Roasters', N'Peru', 0.7, N'Canada', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'East Van Roasters', N'Madagascar', 0.7, N'Canada', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'East Van Roasters', N'Dominican Republic', 0.7, N'Canada', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Erithaj (A. Morin)', N'Ben Tre', 0.7, N'France', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Erithaj (A. Morin)', N'Ham Luong', 0.8, N'France', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Erithaj (A. Morin)', N'Ba Lai', 0.74, N'France', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethereal', N'Belize', 0.8, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethereal', N'Ecuador', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ethereal', N'Dominican Republic', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Finca', N'Puerto Rico', 0.65, N'U.S.A.', 3.5, N'Unknown', N'Puerto Rico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Finca', N'Dominican Republic', 0.8, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Finca', N'Dominican Republic', 0.7, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Finca', N'Dominican Republic', 0.85, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Forever Cacao', N'Rio Eni', 0.72, N'U.K.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Franceschi', N'Choroni', 0.7, N'Venezuela', 2, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Franceschi', N'Ocumare', 0.7, N'Venezuela', 2, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Frederic Blondeel', N'Ghana', 0.6, N'Belgium', 2, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Frederic Blondeel', N'Madagascar', 0.65, N'Belgium', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'San Andres', 0.8, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Matagalpa', 0.68, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Maranon- #228- MR- SC', 0.7, N'U.S.A.', 3.75, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Maranon- #227- LR- MC', 0.7, N'U.S.A.', 4, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Maranon- #229- MR- LC', 0.7, N'U.S.A.', 4, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fresco', N'Maranon- #230- DR- LC', 0.7, N'U.S.A.', 4, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'La Dalia', 0.7, N'Denmark', 1.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Gran Couva', 0.7, N'U.S.A.', 2, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Maranon', 0.76, N'U.S.A.', 2.5, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Garden Island', N'Kaua''I- Alea Estate +world', 0.85, N'U.S.A.', 2.5, N'Blend', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Papua New Guinea', 0.8, N'Canada', 3.25, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Campesino w/ nibs', 0.74, N'Canada', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Dominican Republic', 0.75, N'Canada', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Trinitario', 0.7, N'Canada', 3.5, N'Trinitario', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Downtown London', 0.65, N'Canada', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Africa meets Latina', 0.7, N'Canada', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Amazonas', 0.8, N'Canada', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'Sharkey', 0.66, N'Canada', 2.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Habitual', N'one hundred', 1, N'Canada', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hacienda El Castillo', N'Don Homero- Cerecita Valley', 0.55, N'Ecuador', 2.75, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hacienda El Castillo', N'Don Homero- Cerecita Valley', 0.7, N'Ecuador', 2.75, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Guittard)', N'Alto Beni- Upper Rio Beni- 2014', 0.67, N'U.S.A.', 3.5, N'Amazon- ICS', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Guittard)', N'Wild Beni- Lower Rio Beni- Tranquilidad- 2014', 0.67, N'U.S.A.', 3.5, N'Beniano', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Guittard)', N'Los Rios- Hacienda Limon- Orecao- 2014', 0.67, N'U.S.A.', 3.75, N'EET', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Guittard)', N'Maunawili- O''ahu- Agri Research C.- 2014', 0.67, N'U.S.A.', 2.5, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Honest', N'Ecuador- w/ nibs', 0.72, N'South Africa', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Bolivia', 0.7, N'Canada', 3, N'Criollo- Trinitario', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Bolivia- Bo-nib-ia- w/ nibs', 0.7, N'Canada', 3.25, N'Criollo- Trinitario', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Momotombo', 0.7, N'Canada', 2.75, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Hispaniola', 0.7, N'Canada', 3, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Zorzal Reserva w/ Charles Kerchner', 0.7, N'Canada', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Indi', N'Honduras', 0.77, N'U.S.A.', 2.75, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Isidro', N'Madagascar', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Isidro', N'Peru', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Isidro', N'Belize', 0.72, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Isidro', N'Dominican Republic', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Just Good Chocolate', N'Belize', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Just Good Chocolate', N'Madagascar', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Just Good Chocolate', N'Peru', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kiskadee', N'La Red- Guanconjeco', 0.6, N'U.S.A.', 3.5, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'San Martin', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'Ocumare', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'Belize', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'Sambirano Valley', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'Belize', 0.9, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'Elvesia', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Kto', N'ROIG', 0.72, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Cuba', 0.7, N'France', 3.25, N'Unknown', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Trinidad-Tobago', 0.68, N'France', 2.5, N'Unknown', N'Trinidad-Tobago');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'Maranura', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Levy', N'Sambirano', 0.71, N'Finland', 2.5, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lonohana', N'Haleiwa E- O''ahu- 2014', 0.65, N'U.S.A.', 3.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lonohana', N'Haleiwa E- O''ahu- 2014', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mana', N'Peru', 0.74, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mana', N'Venezuela', 0.74, N'U.S.A.', 2.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manifesto Cacao', N'Colombia', 0.7, N'Colombia', 2.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Porcelana', 0.7, N'Poland', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Kolumbia', 0.85, N'Poland', 1, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'French Laundry 20th Anniversary', 0.75, N'U.S.A.', 2, N'Blend', N'Peru- Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maverick', N'Maya Mountain', 0.7, N'U.S.A.', 2.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maverick', N'Elvesia', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maverick', N'Tumbes', 0.82, N'U.S.A.', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Maverick', N'Morropon- Norandiono Coop- Piura', 0.63, N'U.S.A.', 3.75, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Meadowlands', N'Bolivia', 0.7, N'U.S.A.', 2.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Meadowlands', N'Venezuela', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Meadowlands', N'Belize', 0.7, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Meadowlands', N'Nicaragua- w/ inbs', 0.7, N'U.S.A.', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Meadowlands', N'Dominican Republic', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'Honduras', 0.8, N'Honduras', 3.5, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'Honduras', 0.7, N'Honduras', 3, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'La Tronca- Matagalpa', 0.7, N'Honduras', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'La Tronca- Matagalpa', 0.8, N'Honduras', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Metiisto', N'Fazenda Sempre Firme P.- Bahia', 0.7, N'Sweden', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Metiisto', N'Akesson Estate', 0.72, N'Sweden', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Monsieur Truffe', N'Papaua New Guinea', 0.7, N'Australia', 2.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Na√¢‚Äì√§ve', N'Nicaragua', 0.7, N'Lithuania', 3, N'Criollo', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Na√¢‚Äì√§ve', N'Chuao', 0.75, N'Lithuania', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Na√¢‚Äì√§ve', N'Barinas', 0.7, N'Lithuania', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nathan Miller', N'Peru', 0.72, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nathan Miller', N'Hispaniola', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nathan Miller', N'Ghana', 0.7, N'U.S.A.', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Noble Bean aka Jerjobo', N'Ghana', 0.75, N'U.S.A.', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Noble Bean aka Jerjobo', N'Moho Valley', 0.75, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Noble Bean aka Jerjobo', N'Maranon Canyon', 0.75, N'U.S.A.', 2.5, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'PNG- Devotion', 0.66, N'New Zealand', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'PNG- Revolution', 0.7, N'New Zealand', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'PNG- Voodoo', 0.88, N'New Zealand', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'PNG- Nib Bar', 0.74, N'New Zealand', 4, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Omnom', N'Papua New Guinea', 0.7, N'Iceland', 2.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Omnom', N'Madagascar', 0.66, N'Iceland', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'Papua Kerafat', 0.68, N'Switzerland', 3, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Original Beans (Felchlin)', N'Grand Cru Blend No.1- 5 yr. Anniversary Ed', 0.8, N'Switzerland', 3.25, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Garaua', 0.7, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Cumbia', 0.7, N'Ecuador', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Montubia', 0.7, N'Ecuador', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Tangara', 0.7, N'Ecuador', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Alto Beni- Palos Blancos', 0.72, N'Canada', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Sambirano', 0.78, N'Canada', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Camino Verde P.- Balao- Guayas', 0.75, N'Canada', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Duo- Gran Couva & Camino Verde', 0.75, N'Canada', 3, N'Blend', N'Trinidad- Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Gran Couva', 0.7, N'Canada', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Park 75', N'South America', 0.65, N'U.S.A.', 2, N'Unknown', N'South America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Parliament', N'Alto Beni', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Parliament', N'Oko Caribe', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Paul Young', N'Madagascar- w/ shell', 0.73, N'U.K.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Paul Young', N'Madagascar- w/ shell', 0.64, N'U.K.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Akesson Estate', 0.73, N'U.S.A.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Namau Village', 0.73, N'U.S.A.', 3.5, N'Trinitario', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Camino Verde P.- Balao- Guayas- Fruity', 0.73, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Camino Verde P.- Balao- Guayas- Floral', 0.73, N'U.S.A.', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Cuyagua- 2013', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Patanemo Vil.- Carabobo State- Tisano family', 0.75, N'U.K.', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Guantupi River', 0.75, N'U.K.', 3, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Akessons Estate- Sambirano- Ambanja', 0.72, N'U.K.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Guantupi River', 0.85, N'U.K.', 2.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Porcelana', 0.8, N'U.S.A.', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'Ecuador', 0.75, N'U.S.A.', 3, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'Belize- 2013', 0.72, N'U.S.A.', 3.25, N'Criollo- Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Somia Plantation- 2012', 0.67, N'Canada', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Somia Plantation- 2012', 0.73, N'Canada', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Camino Verde P.- Balao- Guayas', 0.73, N'Canada', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solstice', N'Bundibugyo', 0.7, N'U.S.A.', 3, N'Forastero- Trinitario', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'La Tronca- Matagalpa', 0.7, N'Canada', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Maranon Canyon', 0.7, N'Canada', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'La Dalia', 0.7, N'Canada', 2, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Camino Verde P.- Balao- Guayas', 0.8, N'Canada', 2.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Espiritu Santo- ''Smoke Monster''', 0.7, N'Canada', 2.75, N'Forastero (Amelonado)', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Little Big Man', 0.7, N'Canada', 2.75, N'Blend', N'Madagascar & Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Somerville', N'Nicaragua', 0.7, N'U.S.A.', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Somerville', N'Hawaiian- Big Island', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Malekula Island', 0.72, N'Australia', 3.5, N'Trinitario', N'Vanuatu');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Stone Grindz', N'Ecuador- Midnight Dark', 0.84, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Stone Grindz', N'Ecuador- Twilght Dark', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Porcelana', 0.7, N'Hungary', 3.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Baracoa', 0.7, N'Hungary', 4, N'Trinitario', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Taza', N'Belize', 0.68, N'U.S.A.', 4, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Ecuador', 0.77, N'U.S.A.', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Madagascar', 0.67, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Uganda', 0.73, N'U.S.A.', 2.75, N'Forastero', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'To''ak (Ecuatoriana)', N'Manabi', 0.81, N'Ecuador', 2.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Treehouse', N'Conacado', 0.72, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Madagascar', 0.75, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Undone', N'Matagalpa', 0.74, N'U.S.A.', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Undone', N'Nourish', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Urzi', N'Sur del Lago- Merida', 0.65, N'Italy', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Videri', N'Dominican Republic', 0.9, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Videri', N'Trinidad', 0.75, N'U.S.A.', 3.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Videri', N'Mindo', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vintage Plantations', N'San Martin', 0.75, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Los Llanos', 0.88, N'U.K.', 3.5, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Woodblock', N'Maranon- Cajamarca', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zotter', N'Raw', 0.8, N'Austria', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Kpime', 0.7, N'France', 3.5, N'Unknown', N'Togo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Atsane', 0.7, N'France', 3.5, N'Unknown', N'Togo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Akata', 0.7, N'France', 2.5, N'Unknown', N'Togo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Quilla', 0.7, N'France', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Acalli', N'Chulucanas- El Platanal', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Acalli', N'Tumbes- Norandino', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Belize', 0.64, N'Canada', 3.75, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Madagascar', 0.66, N'Canada', 4, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Dominican Republic', 0.75, N'Canada', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Papua New Guinea', 0.63, N'Canada', 4, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Venezuela', 0.7, N'Canada', 2.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ambrosia', N'Peru', 0.68, N'Canada', 2.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Fazenda Camboa', 0.7, N'U.S.A.', 3, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Nacional', 0.68, N'U.S.A.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Puerto Quito- heirloom', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Oko Caribe', 0.7, N'U.S.A.', 3, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Maya Mountain', 0.7, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Chuno', 0.7, N'U.S.A.', 3, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Fazenda Camboa', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Guatemala', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Camino Verde', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bahen & Co.', N'Houseblend', 0.8, N'Australia', 3.75, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bahen & Co.', N'Papua New Guinea', 0.7, N'Australia', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bakau', N'Bambamarca- 2015', 0.7, N'Peru', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bakau', N'Huallabamba- 2015', 0.7, N'Peru', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bar Au Chocolat', N'Bahia', 0.7, N'U.S.A.', 4, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bisou', N'Nicaragua- American style', 0.76, N'U.S.A.', 4, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bisou', N'San Andres- American style', 0.76, N'U.S.A.', 2.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bisou', N'San Andres- silk', 0.78, N'U.S.A.', 2.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bisou', N'Belize', 0.86, N'U.S.A.', 2.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Conacado', 0.68, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Elvesia P.', 0.6, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Elvesia P.', 0.8, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Alta Verapaz- 2014', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Ambolikapiky P.', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Maya Mountain', 0.8, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brazen', N'Ambolikapkly P.', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Britarev', N'Ecuador', 0.7, N'Russia', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Arabuco', N'Puerto Rico', 0.7, N'Puerto Rico', 2.75, N'Unknown', N'Puerto Rico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao de Origen', N'Chuao', 0.77, N'Venezuela', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao de Origen', N'Rio Caribe', 0.75, N'Venezuela', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao de Origin', N'Hacienda la Trinidad', 0.74, N'Venezuela', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Arhuacos', 0.72, N'Colombia', 3.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Store', N'Madagascar', 0.7, N'Japan', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Store', N'Peru', 0.7, N'Japan', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Store', N'Vietnam', 0.7, N'Japan', 3.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caribeans', N'Antigua- Special Reserve', 0.72, N'Costa Rica', 2, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caribeans', N'Talamanca- Raul-Kekoldo community', 0.72, N'Costa Rica', 2, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Caribeans', N'Anselmo Paraiso Estate', 0.72, N'Costa Rica', 3, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'the lost city- gracias a dias- batch 362', 0.72, N'U.S.A.', 3, N'Trinitario', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Duarte- Batch 360', 0.7, N'U.S.A.', 3, N'Criollo- Trinitario', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Piaroa- Amazonas- Batch 350', 0.72, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocablog', N'Ecuador', 0.7, N'U.K.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choco Dong', N'Mekong Delta- early 2014 Harvest', 0.7, N'South Korea', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choco Dong', N'Tawau- Oct. 2015 Harvest', 0.7, N'South Korea', 3, N'Trinitario', N'Malaysia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolarder', N'Peru', 0.65, N'U.K.', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolarder', N'Peru + nibs', 0.65, N'U.K.', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolarder', N'Dominican Republic', 0.8, N'U.K.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Makers', N'Tres Hombres', 0.75, N'Amsterdam', 3.5, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Makers', N'Congo- Gorilla bar', 0.68, N'Amsterdam', 3.5, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Makers', N'Peru- Awagum bar', 0.8, N'Amsterdam', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'ChocoReko', N'Patanemo', 0.77, N'Japan', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovivo', N'Tabasco', 0.65, N'U.S.A.', 3.5, N'Trinitario', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocovivo', N'Tabasco', 0.75, N'U.S.A.', 3.5, N'Trinitario', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cloudforest', N'Camino Verde P.- Balao- Guayas- 2014', 0.73, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Coleman & Davis', N'Sambirano', 0.75, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Condor', N'Camino Verde', 0.76, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Daintree', N'Goodman Estate', 0.7, N'Australia', 3.75, N'Unknown', N'Australia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Damson', N'Robson Estate', 0.7, N'U.K.', 4, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Damson', N'Los Rios', 0.7, N'U.K.', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Damson', N'Crayfish Bay aka Non Pariel Estate', 0.7, N'U.K.', 4, N'Unknown', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Damson', N'O''Payo', 0.7, N'U.K.', 2.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Maya Mtn.- Break Bar- Snark', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dark Forest', N'Madagascar', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dark Forest', N'Ocumare', 0.7, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dark Forest', N'Tanzania', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dark Forest', N'Ecuador', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'De Mendes', N'Nativo- Varzea', 0.72, N'Brazil', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'De Mendes', N'Selvagem- Jari', 0.65, N'Brazil', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Alto Beni- Wild Harvest- Limited Ed.', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Doble & Bignall', N'Puerto Cabello', 0.85, N'U.K.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Hacienda Victoria', 0.7, N'Italy', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Domori', N'Ocumare 77', 0.7, N'Italy', 3.25, N'Criollo (Ocumare 77)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dormouse', N'Rio Caribe- Batch 7', 0.7, N'U.K.', 3.25, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dormouse', N'Colombia- Batch 9', 0.8, N'U.K.', 3.25, N'Criollo- Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dormouse', N'Madagascar- Batch 8', 0.77, N'U.K.', 3.5, N'Criollo- Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Duffy''s', N'Rio Dulce- Xoco', 0.7, N'U.K.', 2.75, N'Criollo', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dulcinea', N'Dominican Republic', 0.7, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durci', N'Maranon- Joya Rara', 0.7, N'U.S.A.', 2.75, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durci', N'Rio Caribe- Tepui Treasure', 0.7, N'U.S.A.', 3, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durci', N'Taino Secret', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durci', N'Carenero- Empyrean Sabor', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Durci', N'Corona Arriba', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'El Rey', N'San Joaquin', 0.7, N'Venezuela', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Emily''s', N'Patanemo', 0.79, N'Japan', 2.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Emily''s', N'Peru', 0.78, N'Japan', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Frederic Blondeel', N'Costa Rica', 0.7, N'Belgium', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Frederic Blondeel', N'Peru Brutus', 0.75, N'Belgium', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Frederic Blondeel', N'Vietnam', 0.8, N'Belgium', 2.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Guatemala', 0.73, N'U.S.A.', 2.5, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'La Dalia', 0.6, N'Denmark', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm (Bonnat)', N'La Dalia', 0.85, N'Denmark', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Georgia Ramon', N'Akesson P.', 0.65, N'Germany', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Georgia Ramon', N'ABOCFA Coop', 0.7, N'Germany', 3.75, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Georgia Ramon', N'Conacado Coop', 0.7, N'Germany', 3, N'Trinitario', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Georgia Ramon', N'Conacado Coop', 0.8, N'Germany', 3.25, N'Trinitario', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Georgia Ramon', N'Akesson P.', 0.75, N'Germany', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Glennmade', N'Bahia', 0.66, N'U.S.A.', 3.5, N'Trinitario- Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Guittard', N'Epique- Blend No. 49', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Harper Macaw', N'Brazil Blend', 0.67, N'U.S.A.', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Harper Macaw', N'Tome Acu E.- Amazon Rainforest', 0.77, N'U.S.A.', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Harper Macaw', N'Vale do Juliana E.- Atlantic Forest', 0.74, N'U.S.A.', 3.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hello cocoa', N'Uganda', 0.57, N'U.S.A.', 4, N'Forastero', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hello cocoa', N'Venezuela', 0.74, N'U.S.A.', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hexx', N'Tanzania', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hexx', N'Madagascar', 0.74, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hexx', N'Venezuela', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hexx', N'Ecuador', 0.73, N'U.S.A.', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'hexx', N'Peru', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Camino Verde P.- Balao- Guayas', 0.7, N'Israel', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Sambirano', 0.7, N'Israel', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Gran Couva', 0.7, N'Israel', 2.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Mara', 0.7, N'Israel', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hotel Chocolat', N'Pepiniere- single Cote', 0.7, N'U.K.', 3, N'Unknown', N'St. Lucia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hummingbird', N'Lam Dong', 0.7, N'Canada', 3.25, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Izard', N'Maya Mountain- Toledo- Batch 29', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Izard', N'Elvesia P.- Batch 32', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Jordis', N'Madagascar', 0.63, N'Czech Republic', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Madagascar- Batch 59/100', 0.75, N'France', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Vietnam- Batch 50/100', 0.75, N'France', 3.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Cuba- Batch 59/100', 0.75, N'France', 3.75, N'Unknown', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Peru- Batch 51/100', 0.75, N'France', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Ivory Coast- Batch 56/100', 0.75, N'France', 3.75, N'Unknown', N'Ivory Coast');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Sao Tome- Batch 151', 0.75, N'France', 3.75, N'Forastero', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Bahia- Batch 148', 0.75, N'France', 4, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Laia aka Chat-Noir', N'Lam Dong- Batch 153', 0.75, N'France', 2.25, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'Beniamo', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'San Juan Estate- Gran Couva', 0.7, N'U.S.A.', 2.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'San Andres', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'La Red- Guaconejo', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'Kokoa Kamili', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Love Bar', N'Nicaragua', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mana', N'Ecuador', 0.74, N'U.S.A.', 1.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Markham Valley', 0.72, N'U.S.A.', 3, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manoa', N'Coto Brus', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'ROIG- 2014', 0.7, N'U.S.A.', 3.5, N'Criollo- Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Maranon- 2014', 0.62, N'U.S.A.', 3.5, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Ecuador', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'San Juan Estate- Cherry Blossoms at Night', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'A case of the Xerces Blues- triple roast', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Tumbes- Dear Mr. Finley- 2014', 0.68, N'U.S.A.', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Colombia', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Kakoa Kamili- Both Man & Bird & Beast', 0.72, N'U.S.A.', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Le Chocolat Chaud', 0.78, N'U.S.A.', 2, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Tan Phu Dong Island- Heart of Darkness', 0.85, N'Vietnam', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Ben Tre', 0.68, N'Vietnam', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marou', N'Dak Lak- Batch 2451', 0.7, N'Vietnam', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Guatemala', 0.76, N'U.S.A.', 4, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mast Brothers', N'Tanzania', 0.74, N'U.S.A.', 2.75, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'El Salvador', 0.8, N'Honduras', 2, N'Unknown', N'El Salvador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mesocacao', N'El Salvador', 0.7, N'Honduras', 2, N'Unknown', N'El Salvador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Metropolitan', N'South America', 0.7, N'Amsterdam', 2, N'Trinitario', N'South America');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Maya Mountain', 0.8, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'San Juan Estate', 0.7, N'U.S.A.', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Oko Caribe', 0.75, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Patanemo- Epoch- Donaldo', 0.75, N'U.S.A.', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Kokoa Kamili', 0.75, N'U.S.A.', 3, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Middlebury', N'Matagalpa- Cacao Bisiesto', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mission', N'Bahia- Fazenda Venturosa', 0.7, N'Brazil', 3.5, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Molucca', N'La Red', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Molucca', N'Indonesia', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Indonesia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Molucca', N'Peru', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Montecristi', N'Manabi', 0.7, N'Ecuador', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Montecristi', N'Manabi', 0.63, N'Ecuador', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Montecristi', N'Manabi', 0.85, N'Ecuador', 4, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Muchomas (Mesocacao)', N'Nicaragua', 0.7, N'U.S.A.', 4, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Muchomas (Mesocacao)', N'Nicaragua', 0.8, N'U.S.A.', 2.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nibble', N'Patanemo', 0.72, N'U.S.A.', 2.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nibble', N'Elvesia P.', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nibble', N'Ambanja- Sambirano Valley', 0.72, N'U.S.A.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nibble', N'Tumbes', 0.72, N'U.S.A.', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nuance', N'Ghana- 2013', 0.7, N'U.S.A.', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nuance', N'Ecuador- 2013', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nuance', N'Canoabo- 2013', 0.7, N'U.S.A.', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nuance', N'Sambirano Valley- 2012', 0.7, N'U.S.A.', 2, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nuance', N'La Red', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Obolo', N'Pangoa', 0.7, N'Chile', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Obolo', N'Pangoa- w/ nibs', 0.7, N'Chile', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocelot', N'Virunga', 0.7, N'Scotland', 3.25, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocelot', N'Piura', 0.75, N'Scotland', 3.5, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ohiyo', N'San Juan Estate- Gran Couva', 0.7, N'U.S.A.', 2.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ohiyo', N'Tanzania', 0.7, N'U.S.A.', 3, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Silvestre- La Paz- Beni', 0.7, N'Canada', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'San Juan Estate- Gran Couva', 0.7, N'Canada', 3.25, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Kokoa Kamili', 0.72, N'Canada', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Lam Dong', 0.72, N'Canada', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Parliament', N'Lachua- Q''egchi families', 0.7, N'U.S.A.', 3, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Peppalo', N'Dominican Republic', 0.82, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pierre Marcolini', N'Haut Penja- w/ nibs', 0.7, N'Belgium', 3.25, N'Forastero', N'Cameroon');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Tenor', 0.62, N'U.S.A.', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Johe', 0.8, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Chuno', 0.8, N'U.S.A.', 3.5, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Nicalizo', 0.8, N'U.S.A.', 3.75, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pitch Dark', N'Rugoso', 0.8, N'U.S.A.', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pralus', N'Peru', 0.75, N'France', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Crayfish Bay Estate- 2014', 0.7, N'U.K.', 3.75, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Akesson''s- batch 4411', 0.74, N'U.K.', 2.75, N'Criollo', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Honduras', 0.8, N'U.K.', 3, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raaka', N'Virunga', 0.75, N'U.S.A.', 1.5, N'Forastero', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ranger', N'San Martin- Batch 2', 0.7, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ranger', N'Chulucanas- Batch 1', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ranger', N'Tumbes- Batch 2', 0.73, N'U.S.A.', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Camino Verde P.- Balao- Guayas- 2014', 0.85, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Mid Mountain- 2014', 0.7, N'U.S.A.', 2.75, N'Blend', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Caranero- Choc. Garage Exclusive', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'Tranquilidad- Batch 1', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Seaforth', N'Dominican Republic', 0.7, N'U.K.', 3.25, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Seaforth', N'Grenada', 0.7, N'U.K.', 3, N'Unknown', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'Jamaica', 0.72, N'U.S.A.', 3, N'Trinitario', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'Papua New Guinea', 0.73, N'U.S.A.', 3, N'Forastero', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'Cuyagua', 0.77, N'U.S.A.', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shark Mountain', N'ROIG', 0.74, N'U.S.A.', 3.25, N'Criollo- Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sibu', N'Oro', 0.82, N'Costa Rica', 3.5, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sibu', N'Oscuro', 0.7, N'Costa Rica', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Somia Plantation- 2012', 1, N'Canada', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Camino Verde P.- Balao- Guayas- 2012', 1, N'Canada', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Lachua w/ cane sugar', 0.73, N'Canada', 3, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Lachua w/ maple sugar- batch 5', 0.73, N'Canada', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Pisa', 0.73, N'Canada', 3.25, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sjolinds', N'Ghana', 0.7, N'U.S.A.', 3.25, N'Forastero', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sjolinds', N'Nicaragua', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sol Cacao', N'Madagascar', 0.72, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'CSB Chama', 0.7, N'Canada', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Porcelana', 0.75, N'Canada', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Starchild', N'Bolivar- Arriba', 0.7, N'U.S.A.', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Starchild', N'Hispaniola', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Starchild', N'Cacao Verapaz', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Starchild', N'Rio Tuma', 0.7, N'U.S.A.', 3.5, N'Trinitario (Amelonado)', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Starchild', N'Sambirano Valley', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Svenska Kakaobolaget', N'Sri Lanka', 0.7, N'Sweden', 3.5, N'Criollo- Trinitario', N'Sri Lanka');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Nacional', 0.7, N'Hungary', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Baracoa', 0.88, N'Hungary', 3.5, N'Trinitario', N'Cuba');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Ambolikapiky', 0.7, N'Hungary', 3.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Winak- Sumaco', 0.7, N'Hungary', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Ben Tre- Mekong Delta', 0.7, N'Hungary', 3.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Szanto Tibor', N'Fazenda Sempre Firme- Bahia', 0.7, N'Hungary', 3.5, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tablette (aka Vanillabeans)', N'Colombia', 0.7, N'Japan', 3.5, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tablette (aka Vanillabeans)', N'Papua', 0.62, N'Japan', 3.75, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tablette (aka Vanillabeans)', N'Vietnam', 0.6, N'Japan', 3.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tablette (aka Vanillabeans)', N'Trinidad', 0.77, N'Japan', 3.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Peru', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Belize', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Madagascar', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Ecuador', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Oko Caribe', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Terroir', N'Guatemala', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'The Barn', N'Peru', 0.7, N'Sweden', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Theobroma', N'Piura Select- Cacao Blanc', 0.7, N'Japan', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Oko Caribe', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'twenty-four blackbirds', N'Cedeno- lot 271', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Valrhona', N'Piura- Illanka- Quemazon', 0.63, N'France', 4, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vicuna', N'Palos Blancos', 0.7, N'U.S.A.', 4, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vicuna', N'Palos Blancos + nibs', 0.7, N'U.S.A.', 4, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Violet Sky', N'Sambirano Valley', 0.77, N'U.S.A.', 4, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Violet Sky', N'Moho River Valley', 0.77, N'U.S.A.', 4, N'Criollo- Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Violet Sky', N'Cuyagua', 0.77, N'U.S.A.', 4, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Violet Sky', N'Peru', 0.77, N'U.S.A.', 4, N'Criollo- Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Violet Sky', N'Cahabon', 0.77, N'U.S.A.', 4, N'Trinitario', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'Papua New Guinea- Batch 2', 0.7, N'U.S.A.', 4, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'Dominican Republic- Batch D2', 0.7, N'U.S.A.', 4, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'Madagascar- Batch 2', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'Peru- Batch 1', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'Belize- Batch 2', 0.7, N'U.S.A.', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zak''s', N'House Blend- Batch 2', 0.6, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'A. Morin', N'Agua Grande', 0.63, N'France', 3.25, N'Unknown', N'Sao Tome');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Momotombo', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Acopagro', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'CIAAB Coop', 0.6, N'U.S.A.', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Villa Andina', 0.6, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Altus aka Cao Artisan', N'Gruppo Salinas', 0.6, N'U.S.A.', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Animas', N'Alto Beni', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'San Juan', 0.7, N'U.S.A.', 2.75, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Kokoa Kamili', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Tien Giang', 0.73, N'U.S.A.', 3.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Hacienda Victoria', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Costa Esmeraldas', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Lachua', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Rugoso', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'La Masica- FHIA', 0.7, N'U.S.A.', 3, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Coto Brus- Terciopelo', 0.7, N'U.S.A.', 2.25, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Phantom', 0.7, N'U.S.A.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Elvesia', 0.7, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Matasawalevu', 0.7, N'U.S.A.', 3, N'Unknown', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Arete', N'Lam Dong', 0.73, N'U.S.A.', 3, N'Unknown', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Askinosie', N'Mababa', 0.68, N'U.S.A.', 3, N'Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Batch', N'Dominican Republic- Batch 3', 0.65, N'U.S.A.', 3, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Batch', N'Brazil', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Batch', N'Ecuador', 0.65, N'U.S.A.', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beehive', N'Brazil- Batch 20316', 0.8, N'U.S.A.', 3.5, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beehive', N'Dominican Republic- Batch 31616', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beehive', N'Ecuador- Batch 31516', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beehive', N'Ecuador', 0.9, N'U.S.A.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bellflower', N'Kakao Kamili- Kilombero Valley', 0.7, N'U.S.A.', 2.75, N'Criollo- Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bellflower', N'Alto Beni- Palos Blanco', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bellflower', N'Oko Caribe- Duarte P.', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belyzium', N'Belize south- low fermentation', 0.83, N'Germany', 2.5, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belyzium', N'Belize south', 0.78, N'Germany', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Belyzium', N'Belize south', 0.83, N'Germany', 2.75, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Akesson''s E.- Sambirano V.', 0.82, N'U.S.A.', 3, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Lachua', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Kokoa Kamili', 0.75, N'U.S.A.', 3, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Blue Bandana', N'Zorzal Reserva', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Bonnat', N'Selva Maya', 0.75, N'France', 3.25, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'Guasare- Zulia Prov.', 0.7, N'U.S.A.', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Brasstown aka It''s Chocolate', N'O''payo- Waslala', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Barry', N'Grand ''Anse', 0.65, N'France', 3.25, N'Trinitario- Criollo', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Macondo', 0.71, N'Colombia', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Hunters', N'Perla Negra', 0.74, N'Colombia', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Market', N'Jutiapa- lot 050916D', 0.7, N'U.S.A.', 3.5, N'Trinitario', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cacao Sampaka', N'Mahali- Kasai', 0.7, N'Spain', 3.5, N'Criollo', N'Congo');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cao', N'Porcelana', 0.75, N'U.S.A.', 3.5, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cao', N'Tanzania', 0.73, N'U.S.A.', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cao', N'Porcelana- Batch 5163', 0.7, N'U.S.A.', 3.75, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cao', N'Bolivia', 0.75, N'U.S.A.', 3.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Cao', N'Brazil', 0.7, N'U.S.A.', 3.75, N'Trinitario', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Carlotta Chocolat', N'Arauca', 0.65, N'Colombia', 2.5, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Carlotta Chocolat', N'Tumaco', 0.65, N'Colombia', 2.75, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Carlotta Chocolat', N'Cordoba', 0.65, N'Colombia', 2.75, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Carlotta Chocolat', N'Huila', 0.65, N'Colombia', 3, N'Trinitario', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Carlotta Chocolat', N'Cesar', 0.65, N'Colombia', 2.75, N'CCN51', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Castronovo', N'Maya Mtn- Batch 454- Heirloom', 0.72, N'U.S.A.', 3, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Charm School', N'Maya Mtn', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Alchemist-Philly', N'Tumbes- Zarumilla', 0.9, N'U.S.A.', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Alchemist-Philly', N'Philly Blend- 5 plantations', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Wild Bolivian', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Uganda', 0.7, N'U.S.A.', 3, N'Unknown', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Dominican Republic', 0.6, N'U.S.A.', 3, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Dominican Republic', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Ocumare', 0.8, N'U.S.A.', 2, N'Criollo (Ocumare)', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Ecuador', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Chocolate Con Amor', N'Nicaragua', 0.8, N'U.S.A.', 2.5, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Choocsol', N'Chiapas- Lacandon Jungle- Oaxacom Mtn', 0.75, N'Canada', 2.5, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Confluence', N'Tien Giang- 2015- batch 10-2-16', 0.78, N'U.S.A.', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Creo', N'heirloom- Arriba Nacional', 0.85, N'U.S.A.', 2.75, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Creo', N'heirloom- Arriba Nacional', 0.73, N'U.S.A.', 3, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dandelion', N'Zorzal Reserva- 2015 H.- Kerchner', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DAR', N'Venezuela- batch 122', 0.72, N'U.S.A.', 2, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DAR', N'Vietnam', 0.72, N'U.S.A.', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'DAR', N'DUO- batch 002', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Ecuador- Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dark Forest', N'Bolivia', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'De Villiers', N'Bundibugyo District', 0.7, N'South Africa', 3, N'Forastero', N'Uganda');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'De Villiers', N'Sambirano Valley- batch 2477', 0.7, N'South Africa', 3, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Desbarres', N'Kilombero- batch 41', 0.72, N'Canada', 3, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Tien Giang', 0.78, N'U.S.A.', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dormouse', N'Non Pariel Estate', 0.75, N'U.K.', 3.25, N'Trinitario', N'Grenada');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Eau de Rose', N'Tumaco', 0.7, N'Canada', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Eau de Rose', N'Arauca', 0.7, N'Canada', 3.25, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Edelmond', N'Porcelana', 0.68, N'Germany', 3.25, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'ENNA', N'Wampusirpi- batch 007', 0.75, N'U.S.A.', 3.5, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Feitoria Cacao', N'Blue Mountain', 0.76, N'Portugal', 3.5, N'Unknown', N'Jamaica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Feitoria Cacao', N'Cuyagua', 0.76, N'Portugal', 2.75, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Feitoria Cacao', N'Maya Mountain', 0.76, N'Portugal', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Forteza (Cortes)', N'Dominican Republic', 0.7, N'Puerto Rico', 3.25, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Forteza (Cortes)', N'Puerto Rico', 0.8, N'Puerto Rico', 3.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fossa', N'Akesson''s E.- Sambirano V.', 0.7, N'Singapore', 3.75, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fossa', N'Camino Verde P.- Balao- Guayas', 0.75, N'Singapore', 3.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fossa', N'Kokoa Kamili Coop- Kilombero', 0.67, N'Singapore', 3.75, N'Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Friis Holm', N'Rugoso- Bad Fermentation', 0.7, N'Denmark', 3.75, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Wild Bolivian- Batch 2', 0.74, N'U.S.A.', 3.75, N'Beniano', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Fruition', N'Coto Brus- Heirloom- Batch 1', 0.74, N'U.S.A.', 3, N'Amazon mix', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Glennmade', N'Toledo District- 2015 Harvest', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Goodnow Farms', N'Almendra Blanca- batch 1004', 0.77, N'U.S.A.', 3, N'Unknown', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Goodnow Farms', N'El Carmen- batch 1003', 0.77, N'U.S.A.', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Goodnow Farms', N'Asochivite- batch 1005', 0.77, N'U.S.A.', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Green Bean to Bar', N'Madagascar', 0.7, N'Japan', 3.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Harper Macaw', N'Vale do Juliana- w/ nibs', 0.85, N'U.S.A.', 3.25, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heilemann', N'Peru', 0.64, N'Germany', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Brasstown)', N'Maya Mtn- Moho R.- Toledo D.- 2015', 0.7, N'U.S.A.', 3.25, N'Amazon', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Fruition)', N'Cota Brus- Terciopelo- 2015', 0.74, N'U.S.A.', 4, N'Amazon mix', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Manoa)', N'Maunawili- O''ahu- Agri Research C.- 2015', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Hawaii');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Millcreek)', N'Los Rios- Hacienda Limon- Orecao- 2015', 0.7, N'U.S.A.', 3, N'EET', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Mindo)', N'Pinchincha- Mindo- Coop Nueva Esper.- 2015', 0.77, N'U.S.A.', 3, N'EET', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Zokoko)', N'Alto Beni- Upper Rio Beni- 2015', 0.68, N'U.S.A.', 3, N'Amazon- ICS', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Heirloom Cacao Preservation (Zokoko)', N'Wild Beni- Lower Rio Beni- Tranquilidad- 2015', 0.72, N'U.S.A.', 3.5, N'Beniano', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hogarth', N'Akesson''s Estate', 0.7, N'New Zealand', 2.5, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hogarth', N'Carenero Superior', 0.72, N'New Zealand', 2.75, N'Trinitario', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hogarth', N'Conacado', 0.75, N'New Zealand', 2.75, N'Trinitario', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Hogarth', N'Gran Blanco', 0.66, N'New Zealand', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Holy Cacao', N'Maranon', 0.7, N'Israel', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Indah', N'India (south)', 0.61, N'India', 3.5, N'Unknown', N'India');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'K''ul', N'Kafupbo- Petit Bourg- De Borgnes', 0.7, N'U.S.A.', 3, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'K''ul', N'Maranon- Fortunato No. 4', 0.7, N'U.S.A.', 3.75, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'K''ul', N'Los Rios- Hacienda Limon- Heirloom', 0.7, N'U.S.A.', 2.75, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'K''ul', N'Bahia- Fazenda Camboa', 0.7, N'U.S.A.', 3, N'Forastero', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Chocolaterie Nanairo', N'Lumas- 2015 Harvest- Batch 6- brown sugar', 0.7, N'Japan', 3, N'Trinitario- Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Chocolaterie Nanairo', N'Lumas- 2015 Harvest- Batch 7', 0.7, N'Japan', 3.25, N'Trinitario- Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Chocolaterie Nanairo', N'Tumbes- 2013 Harvest- Batch 8', 0.7, N'Japan', 3.25, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'La Chocolaterie Nanairo', N'Belize- 2014 Harvest- Batch 9', 0.7, N'Japan', 1.5, N'Trinitario- Criollo', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'L''Amourette', N'Rugoso', 0.8, N'U.S.A.', 2.5, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'Liberia', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Liberia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Lilla', N'Madagascar', 0.7, N'Finland', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Malmo', N'Chuao', 0.7, N'Sweden', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Johe', 0.7, N'Poland', 3, N'Unknown', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Manufaktura Czekolady', N'Peru', 0.7, N'Poland', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Map Chocolate', N'Ben Tre- Surprise Valley', 0.75, N'U.S.A.', 3.25, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marana', N'Piura', 0.7, N'Peru', 3.25, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marana', N'Cusco', 0.7, N'Peru', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marana', N'San Martin', 0.7, N'Peru', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Marigold''s Finest', N'Cacao Nib Crunch', 0.75, N'Canada', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Martin Mayer', N'Alto Beni', 0.76, N'Austria', 3.5, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Martin Mayer', N'Pisa', 0.82, N'Austria', 3.75, N'Unknown', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Martin Mayer', N'Tumaco', 0.74, N'Austria', 3.75, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mayacama', N'Hispaniola', 0.72, N'U.S.A.', 3.75, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Minimal', N'Acul-du-Nord- 2015', 0.7, N'Japan', 4, N'Criollo- Trinitario', N'Haiti');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mission', N'Fazenda Camboa- Bahia', 0.75, N'Brazil', 4, N'Unknown', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Monarque', N'Oko Caribe', 0.72, N'Canada', 4, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mutari', N'Kokoa Kamili- batch 1 SRB', 0.68, N'U.S.A.', 4, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mutari', N'Oko Caribe- batch 1 SRB', 0.71, N'U.S.A.', 4, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mutari', N'Ambanja- batch 1 SRB', 0.68, N'U.S.A.', 2.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Mutari', N'Tien Giang- batch 1 SRB', 0.8, N'U.S.A.', 2.75, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Nugali', N'Fazenda Leolinda', 0.7, N'Brazil', 2.75, N'Trinitario (Scavina)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'Sang Yum Coop', 1, N'New Zealand', 2.75, N'Unknown', N'Samoa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ocho', N'Sang Yum Coop', 0.7, N'New Zealand', 2.75, N'Unknown', N'Samoa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Omnom', N'Kakao Kamili- Kilombero Valley', 0.7, N'Iceland', 3, N'Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pacari', N'Sierra Nevada- Tutu Iku', 0.7, N'Ecuador', 3, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Lachua', 0.7, N'Canada', 3.25, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Palette de Bine', N'Maya Mtn', 0.72, N'Canada', 3.25, N'Trinitario', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pangea', N'Matasawalevu', 0.76, N'Spain', 3.25, N'Unknown', N'Fiji');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Parliament', N'Kilombero Valley', 0.7, N'U.S.A.', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pinellas', N'Wampusirpi Region', 0.8, N'U.S.A.', 3.25, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Potomac', N'Oko Caribe- Duarte Province- 2016 H.', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Pump Street Bakery', N'Chocoan Rainforest- Teroro Escondido- ESM', 0.77, N'U.K.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Quetzalli (Wolter)', N'Mexico- Lot 28022016', 0.7, N'Mexico', 3.75, N'Criollo', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Quetzalli (Wolter)', N'Uranga- Lot 22032016', 0.74, N'Mexico', 3.5, N'Trinitario', N'Mexico');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raaka', N'Amazon Basin Blend', 0.7, N'U.S.A.', 3, N'Unknown', N'Peru(SMartin-Pangoa-nacional)');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Raoul Boulanger', N'Piura', 0.75, N'France', 2, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Ritual', N'Camino Verde P.- Balao- 2015 harvest- batch8', 0.75, N'U.S.A.', 2, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Roasting Masters', N'La Dorado- light roast', 0.7, N'South Korea', 3, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Roasting Masters', N'Tapanti- light roast', 0.7, N'South Korea', 3, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Roasting Masters', N'Maleku', 0.7, N'South Korea', 2.75, N'Unknown', N'Costa Rica');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Rogue', N'La Masica- Batch 1- FHIA Research Center', 0.75, N'U.S.A.', 2.75, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Shattel', N'Tingo Maria', 0.7, N'Peru', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Wild Bolivia', 0.73, N'Canada', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Kokoa Kamili Coop', 0.73, N'Canada', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sirene', N'Esmeraldas- Salazar Farm', 0.73, N'Canada', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Sol Cacao', N'Ecuador- Batch 1', 0.7, N'U.S.A.', 2.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solkiki', N'Maranon- Fortunato No. 4', 0.68, N'U.K.', 3, N'Forastero (Nacional)', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solkiki', N'Castillo- Hispaniola- unroasted', 0.85, N'U.K.', 3.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solomons Gold', N'Solomon Island', 0.7, N'New Zealand', 3.5, N'Unknown', N'Solomon Islands');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Solomons Gold', N'Solomon Island w/ nibs', 0.75, N'New Zealand', 2.5, N'Unknown', N'Solomon Islands');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Oko Caribe- Duarte P.- Collab w Chocosol', 0.62, N'Canada', 2.5, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Sambirano Valley- Black Science- B-60307.0', 0.7, N'Canada', 2.75, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Bahia Black- batch bra50722.1', 0.7, N'Canada', 2.75, N'Forastero (Parazinho)', N'Brazil');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Abstract S. w/ Jamaica nibs-batch abs60323.0', 0.75, N'Canada', 3.25, N'Unknown', N'Ven.-Ecu.-Peru-Nic.');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Chuno- San Jose de Bocay- Pantasma R.-B.S.', 0.7, N'Canada', 2.25, N'Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Tien Giang- Black S.- batch VIT60420.0', 0.7, N'Canada', 3, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soma', N'Camino Verde- Black S.- batch cvu6030.0', 0.7, N'Canada', 3, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Dominican Republic- lot D82R', 0.7, N'Australia', 3, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Ecuador- lot E432314L', 0.7, N'Australia', 3.25, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Madagascar- lot M0403R', 0.7, N'Australia', 3.5, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Summerbird', N'Peru', 0.61, N'Denmark', 3.75, N'Criollo- Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Summerbird', N'Peru', 0.71, N'Denmark', 4, N'Criollo- Trinitario', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Suruca Chocolate', N'Venezuela', 0.7, N'Venezuela', 3, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Suruca Chocolate', N'Venezuela', 0.6, N'Venezuela', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Tan Ban Skrati', N'Paramaribo- batch 20160043-01', 0.7, N'Suriname', 3.75, N'Trinitario', N'Suriname');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'TCHO', N'West Africa', 0.62, N'U.S.A.', 2.5, N'Forastero', N'West Africa');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Timo A. Meyer', N'Belize- med roast', 0.72, N'Germany', 3, N'Trinitario- TCGA', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Two Ravens', N'Peru', 0.6, N'U.S.A.', 3, N'Criollo', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Upchurch', N'Madagascar- Sassy Bar', 0.72, N'U.S.A.', 3.25, N'Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Upchurch', N'Tanzania- Party Bar', 0.72, N'U.S.A.', 3.25, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vivra', N'Peru', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vivra', N'Ocumare', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Vivra', N'Dominican Republic', 0.7, N'U.S.A.', 4, N'Unknown', N'Domincan Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wellington Chocolate Factory', N'Conacado', 0.7, N'New Zealand', 3, N'Trinitario', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wellington Chocolate Factory', N'Piura Blanco- Norandino', 0.7, N'New Zealand', 2.5, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Willie''s Cacao', N'Los Llanos', 0.7, N'U.K.', 2.75, N'Unknown', N'Colombia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wm', N'Guasare- Zulia Prov.- 2015- batch 124', 0.74, N'U.S.A.', 3, N'Criollo', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wm', N'Wild Beniano- 2016- batch 128- Heirloom', 0.76, N'U.S.A.', 3, N'Unknown', N'Bolivia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Wm', N'Ghana- 2013- batch 129', 0.75, N'U.S.A.', 3.25, N'Unknown', N'Ghana');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'Millot P.- Ambanja', 0.7, N'Austria', 3.25, N'Criollo- Trinitario', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'UNOCACE', 0.7, N'Austria', 3.25, N'Nacional (Arriba)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'San Juan Estate', 0.85, N'Austria', 3.5, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'Kakao Kamili- Kilombero Valley', 0.85, N'Austria', 2.75, N'Criollo- Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'Kakao Kamili- Kilombero Valley', 0.7, N'Austria', 2.75, N'Criollo- Trinitario', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zart Pralinen', N'San Juan Estate- Gran Couva', 0.78, N'Austria', 3, N'Trinitario', N'Trinidad');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zokoko', N'Guadalcanal', 0.78, N'Australia', 3.5, N'Unknown', N'Solomon Islands');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Zokoko', N'Goddess Blend', 0.65, N'Australia', 3.5, N'Unknown', N'Unknown');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alexandre', N'Winak Coop- Napo', 0.7, N'Netherlands', 3.5, N'Forastero (Nacional)', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alexandre', N'La Dalia- Matagalpa', 0.7, N'Netherlands', 3.25, N'Criollo- Trinitario', N'Nicaragua');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alexandre', N'Tien Giang', 0.7, N'Netherlands', 3.5, N'Trinitario', N'Vietnam');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Alexandre', N'Makwale Village- Kyela', 0.7, N'Netherlands', 3.5, N'Forastero', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beau Cacao', N'Asajaya E- NW Borneo- b. #132/4500', 0.73, N'U.K.', 3.75, N'Unknown', N'Malaysia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Beau Cacao', N'Serian E.- NW Borneo- b. #134/3800', 0.72, N'U.K.', 3.75, N'Unknown', N'Malaysia');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dalloway', N'Dominican Republic- batch 7', 0.72, N'U.S.A.', 2.75, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Dick Taylor', N'Lanquin Estate', 0.7, N'U.S.A.', 3, N'Unknown', N'Guatemala');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'French Broad', N'Norandino- batch 161208', 0.7, N'U.S.A.', 3, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'La Masica- Batch 7- FHIA', 0.7, N'U.S.A.', 3, N'Unknown', N'Honduras');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Letterpress', N'Maya Mtn- Batch 18- Heirloom', 0.7, N'U.S.A.', 3, N'Unknown', N'Belize');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Madre', N'Guadalcanal', 0.73, N'U.S.A.', 3, N'Unknown', N'Solomon Islands');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Dominican Republic', 0.7, N'Canada', 3.25, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Madagascar', 0.7, N'Canada', 3.25, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Venezuela', 0.75, N'Canada', 3.25, N'Unknown', N'Venezuela');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Ecuador', 0.75, N'Canada', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Papua New Guinea', 0.77, N'Canada', 3.5, N'Unknown', N'Papua New Guinea');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Soul', N'Tanzania', 0.8, N'Canada', 3.5, N'Unknown', N'Tanzania');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Dominican Republic', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Dominican Republic');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Ecuador', 0.7, N'U.S.A.', 3.5, N'Unknown', N'Ecuador');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Spencer', N'Peru', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Peru');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Xocolla', N'Sambirano- batch 170102', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Madagascar');
INSERT INTO [ratings]
    (company, bean_origin, cocoa_percent, company_location, rating, bean_type, broad_bean_origin)
VALUES
    (N'Xocolla', N'Hispaniola- batch 170104', 0.7, N'U.S.A.', 3.75, N'Unknown', N'Dominican Republic');
