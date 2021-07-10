-- Using set commands to avoid running in to errors --

SET FOREIGN_KEY_CHECKS = 0;

SET SQL_SAFE_UPDATES = 0;

-- Creating the database for the college office --

DROP DATABASE IF EXISTS CollegeOffice;

CREATE DATABASE CollegeOffice;

USE CollegeOffice;

-- Creating a table for Semester --

CREATE TABLE Semester(
SemesterID VARCHAR(2) NOT NULL,
SemesterName VARCHAR(10),
SemesterStartDate VARCHAR(10),
SemesterEndDate VARCHAR(10),
PRIMARY KEY (SemesterID)
);

-- Inserting data into Semester --

INSERT INTO Semester VALUES (
"S1","Semester 1","04-09-2020","25-01-2021"
);

INSERT INTO Semester VALUES (
"S2","Semester 2","02-02-2021","28-05-2021"
);

INSERT INTO Semester VALUES (
"S3","Semester 3","05-06-2021","28-10-2021"
);

-- Creating a table for Department --

CREATE TABLE Department(
DepartmentID VARCHAR(4) NOT NULL,
DepartmentName VARCHAR(40),
Street VARCHAR(30),
City VARCHAR(40),
Postcode VARCHAR(10),
PRIMARY KEY (DepartmentID)
);

-- Inserting data into Department --

INSERT INTO Department VALUES (
"DP1","Department of Engineering","212 Esch Avenue","Kambaxoi","A98 JP92"
);

INSERT INTO Department VALUES (
"DP2","Department of Built Environment","96861 Swallow Crossing","Winterthur","IKH 98Y6"
);

INSERT INTO Department VALUES (
"DP3","Department of Arts","7769 Duke Street","Baima","IO9 WE23"
);

INSERT INTO Department VALUES (
"DP4","Department of Sport Sciences","8108 Blue Bill Park Trail","Cucutilla","MCX 294R"
);

INSERT INTO Department VALUES (
"DP5","Department of Business & Economics","241 Crownhardt Road","Keruguya","BN2 I903"
);

INSERT INTO Department VALUES (
"DP6","Department of Computing & ICT","4684 Bellgrove Court","Meishan","LK2 YP9J"
);

INSERT INTO Department VALUES (
"DP7","Department of Astronomy & Astrophysics","902 Melody Street","Houston","A12 GHU5"
);

INSERT INTO Department VALUES (
"DP8","Department of Humanities","476 Dryden Junction","Kasakh","FR2 VF56"
);

INSERT INTO Department VALUES (
"DP9","Department of Law","95 Corry Road","Arroyo Naranjo","P10 KKS2"
);

INSERT INTO Department VALUES (
"DP10","Department of Educational Training","7618 Straubel Hill","San Antonio de los Cobres","Z23 SW21"
);

-- Creating a table for the head of department --

CREATE TABLE HeadofDepartment(
HeadofDepartmentID VARCHAR(4) NOT NULL,
DepartmentID VARCHAR(4),
HODFirstName VARCHAR(20),
HODLastName	VARCHAR(30),
HODPhNum VARCHAR(25),
HODEmail VARCHAR(35),
PRIMARY KEY (HeadofDepartmentID),
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Inserting data for the head of department --

INSERT INTO HeadofDepartment VALUES (
"HD1","DP1","Caren","Bulcroft","+86 113 436 6039","caren.bulcroft@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD2","DP2","Kristi","Evenett","+41 767 710 7727","kristi.evenett@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD3","DP3","Melinda","MacPherson","+86 556 386 6388","melinda.macpherson@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD4","DP4","Lars","Nend","+57 374 195 6244","lars.nend@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD5","DP5","Timmie","Poltone","+254 481 284 8205","timmie.poltone@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD6","DP6","Port","Towne","+86 254 975 0582","port.towne@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD7","DP7","Norrie","Luparti","+1 713 252 2535","norrie.luparti@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD8","DP8","Deerdre","Fleetwood","+374 686 462 9263","deerdre.fleetwood@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD9","DP9","Noll","Garoghan","+53 777 283 5154","noll.garoghan@staff.example.ie"
);

INSERT INTO HeadofDepartment VALUES (
"HD10","DP10","Isahella","Ivimy","+54 651 818 0451","isahella.ivimy@staff.example.ie"
);

-- Creating a table for Faculty --

CREATE TABLE Faculty(
FacultyID VARCHAR(4) NOT NULL,
DepartmentID VARCHAR(4),
FacultyName	VARCHAR(70),
FacultyPhNum VARCHAR(35),
Street VARCHAR(25),
City VARCHAR(30),
Postcode VARCHAR(15),
OpeningDays	VARCHAR(30),
OpeningTime	VARCHAR(30),
ClosingTime VARCHAR(30),
PRIMARY KEY (FacultyID),
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Inserting data into Faculty --

INSERT INTO Faculty VALUES (
"F1","DP1","Faculty of Engineering","(01813) 55949","212 Esch Avenue","Kambaxoi","A98 JP92","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F2","DP2","Faculty of Built Environment","076 1921 6780","96861 Swallow Crossing","Winterthur","IKH 98Y6","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F3","DP3","Faculty of Arts","055 6642 8543","7769 Duke Street","Baima","IO9 WE23","Monday to Friday","08:00","17:00"
);

INSERT INTO Faculty VALUES (
"F4","DP4","Faculty of Sport Sciences","0383 520 7694","8108 Blue Bill Park Trail","Cucutilla","MCX 294R","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F5","DP5","Faculty of Business","0800 269522","241 Crownhardt Road","Keruguya","BN2 I903","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F6","D6","Faculty of Computing","056 5211 7227","4684 Bellgrove Court","Meishan","LK2 YP9J","Monday to Friday","08:00","17:00"
);

INSERT INTO Faculty VALUES (
"F7","DP7","Faculty of Astronomy","070 5586 5969","902 Melody Street","Houston","A12 GHU5","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F8","DP8","Faculty of Humanities","0845 46 46","476 Dryden Junction","Kasakh","FR2 VF56","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F9","DP9","Faculty of Law","(0101) 843 5159","95 Corry Road","Arroyo Naranjo","P10 KKS2","Monday to Friday","08:00","17:00"
);

INSERT INTO Faculty VALUES (
"F10","DP10","Faculty of Educational Training","0885 159 2829","7618 Straubel Hill","San Antonio de los Cobres","Z23 SW21","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F11","DP5","Faculty of Economics","0800 822 0755","0123 Heffernan Avenue","As Saddah","NG2 HJ03","Monday to Friday","08:00","18:00"
);

INSERT INTO Faculty VALUES (
"F12","DP6","Faculty of Information and Communication Technology","(0118) 659 1417","06 Mariners Cove Circle","Saint-Chamond","QW2 TQU9","Monday to Friday","08:00","17:00"
);

INSERT INTO Faculty VALUES (
"F13","DP7","Faculty of Astrophysics","055 8026 0943","227 Jay Trail","Chechenglu","GT4 NT4Y","Monday to Friday","08:00","18:00"
);

-- Creating a table for the dean of the faculties --

CREATE TABLE Dean(
DeanID VARCHAR(3) NOT NULL,
FacultyID VARCHAR(4),
DeanFirstName	VARCHAR(20),
DeanLastName VARCHAR(30),
DeanPhoneNumber	VARCHAR(25),
DeanEmail VARCHAR(45),
PRIMARY KEY (DeanID),
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Inserting data into Dean --

INSERT INTO Dean VALUES (
"D1","F1","Frazier","Quan","+81 316 750 4439","frazier.quan@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D2","F2","Nara","Moyle","+62 624 714 9679","nara.moyle@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D3","F3","Crissie","Priest","+44 813 164 2181","crissie.priest@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D4","F4","Win","Croydon","+86 578 787 4216","win.croydon@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D5","F5","Myrtice","Stirling","+62 753 952 8568","myrtice.stirling@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D6","F6","Daron","Brusle","+7 926 873 4250","daron.brusle@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D7","F7","Pebrook","Cometti","+52 921 907 3819","pebrook.cometti@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D8","F8","Reinaldo","Brimacombe","+420 247 719 8646","reinaldo.brimacombe@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D9","F9","Barrett","Bowbrick","+351 223 284 4660","barrett.bowbrick@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D10","F10","Larry","Wallington","+1 484 662 0977","larry.wallington@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D11","F11","Maressa","Meynell","+967 835 859 7798","maressa.meynell@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D12","F12","Stearne","Benthall","+33 887 207 0834","stearne.benthall@staff.example.ie"
);

INSERT INTO Dean VALUES (
"D13","F13","Cymbre","Wanden","+86 639 597 4866","cymbre.wanden@staff.example.ie"
);

-- Creating a table for the college courses --

CREATE TABLE Course(
CourseID VARCHAR(5) NOT NULL,
FacultyID VARCHAR(4),
CourseName VARCHAR (30),
CourseLevel	INT(2),
CourseAward	VARCHAR(40),
DeliveryType VARCHAR(12),
TotalPlaces INT(3),
AvailablePlaces	INT(3),
YearlySemDur INT(1),
DurationYear INT(1),
PRIMARY KEY (CourseID),
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Inserting data into course --

INSERT INTO Course VALUES (
"ME262","F1","Mechanical Engineering","8","Higher Bachelor's Degree","Face-to-Face","50","25","2","4"
);

INSERT INTO Course VALUES (
"AR990","F2","Architecture","7","Ordinary Bachelor's Degree","Face-to-Face","35","20","2","3"
);

INSERT INTO Course VALUES (
"GD297","F3","Graphic Design","7","Ordinary Bachelor's Degree","Face-to-Face","18","12","3","3"
);

INSERT INTO Course VALUES (
"SM640","F4","Sport Club Management","6","Higher Certificate","Online","25","15","2","2"
);

INSERT INTO Course VALUES (
"AC225","F5","Accounting","7","Ordinary Bachelor's Degree","Face-to-Face","45","30","3","3"
);

INSERT INTO Course VALUES (
"CS802","F6","Computer Science (Ord)","7","Ordinary Bachelor's Degree","Online","15","8","2","3"
);

INSERT INTO Course VALUES (
"PA345","F7","Physics & Astronomy","9","PhD","Face-to-Face","45","24","2","1"
);

INSERT INTO Course VALUES (
"DA122","F8","Drama & Acting","8","Higher Bachelor's Degree","Face-to-Face","32","15","3","4"
);

INSERT INTO Course VALUES (
"LM942","F9","Law (Masters)","10","Masters Degree","Face-to-Face","40","23","2","2"
);

INSERT INTO Course VALUES (
"EY092","f10","Education, Children & Youth","10","Masters Degree","Online","25","17","3","2"
);

INSERT INTO Course VALUES (
"MR775","F11","Business & Marketing","8","Higher Bachelor's Degree","Face-to-Face","20","12","2","4"
);

INSERT INTO Course VALUES (
"DD597","F12","Database Development","8","Higher Bachelor's Degree","Online","40","19","3","4"
);

INSERT INTO Course VALUES (
"AP028","F13","Astrophysics","9","PhD","Face-to-Face","50","22","2","1"
);

-- Creating a table for the course tutor --

CREATE TABLE CourseTutor(
CourseTutorID	VARCHAR(4) NOT NULL,
CourseID VARCHAR(5),
CourseTutorFirstName VARCHAR(20),
CourseTutorLastName VARCHAR(30),
CourseTutorPhNum VARCHAR(25),
CourseTutorEmail VARCHAR(35),
PRIMARY KEY (CourseTutorID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Inserting data into Course Tutor --

INSERT INTO CourseTutor VALUES (
"CT1","ME262","Cele","Gingedale","+62 842 381 6134","cele.gingedale@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT2","AR990","Mahala","Buttrick","+48 975 879 7488","mahala.buttrick@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT3","GD297","Rowney","Diego","+82 842 563 8085","rowney.diego@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT4","SM640","Jaye","Male","+48 116 284 9022","jaye.male@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT5","AC225","Forrest","Niessen","+63 921 824 0121","forrest.niessen@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT6","CS802","Florry","Borsay","+1 604 740 8749","florry.borsay@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT7","PA345","Elsworth","Cornish","+51 220 369 1622","elsworth.cornish@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT8","DA122","Kattie","Kiddy","+351 907 598 0579","kattie.kiddy@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT9","LM942","Bondon","McKimm","+63 457 709 5779","bondon.mckimm@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT10","EY092","Zaneta","Millwall","+62 150 522 8019","zaneta.millwall@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT11","MR775","Darleen","Davidy","+55 717 392 2716","darleen.davidy@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT12","DD597","Robby","Ivantsov","+86 593 552 2522","robby.ivantsov@staff.example.ie"
);

INSERT INTO CourseTutor VALUES (
"CT13","AP028","Kristen","Clemenson","+62 302 462 1978","kristen.clemenson@staff.example.ie"
);

-- Creating table for College Office --

CREATE TABLE Office(
OfficeID VARCHAR(3) NOT NULL,
Name VARCHAR(30),
Street VARCHAR(30),
City VARCHAR(16),
Postcode VARCHAR(10),
SSPhone VARCHAR(25),
SSEmail VARCHAR(35),
PRIMARY KEY (OfficeID)
);

-- Inserting data into Office --

INSERT INTO Office VALUES (
"O1","Kambaxoi Office","212 Esch Avenue","Kambaxoi","A98 JP92","+81 968 685 4542","kambaxoi.office@example.ie"
);

INSERT INTO Office VALUES (
"O2","Winterthur Office","96861 Swallow Crossing","Winterthur","IKH 98Y6","+380 306 854 0724","winterthur.office@example.ie"
);

INSERT INTO Office VALUES (
"O3","Baima Office","7769 Duke Street","Baima","IO9 WE23","+81 836 169 2897","baima.office@example.ie"
);

INSERT INTO Office VALUES (
"O4","Cucutilla Office","8108 Blue Bill Park Trail","Cucutilla","MCX 294R","+63 135 410 6811","cucutilla.office@example.ie"
);

INSERT INTO Office VALUES (
"O5","Keruguya Office","241 Crownhardt Road","Keruguya","BN2 I903","+62 932 676 9328","keruguya.office@example.ie"
);

INSERT INTO Office VALUES (
"O6","Meishan Office","4684 Bellgrove Court","Meishan","LK2 YP9J","+66 284 269 7531","meishan.office@example.ie"
);

INSERT INTO Office VALUES (
"O7","Houston Office","902 Melody Street","Houston","A12 GHU5","+7 603 578 9805","houston.office@example.ie"
);

INSERT INTO Office VALUES (
"O8","As Saddah Office","0123 Heffernan Avenue","As Saddah","NG2 HJ03","+249 183 911 6374","assaddah.office@example.ie"
);

INSERT INTO Office VALUES (
"O9","Saint-Chamond Office","06 Mariners Cove Circle","Saint-Chamond","QW2 TQU9","+86 593 587 4482","saintchamond.office@example.ie"
);

INSERT INTO Office VALUES (
"O10","Chechenglu Office","227 Jay Trail","Chechenglu","GT4 NT4Y","+84 676 828 5024","chechenglu.office@example.ie"
);

-- Creating a table for Office Staff --

CREATE TABLE OfficeStaff(
StaffID INT(4) NOT NULL,
OfficeID VARCHAR(3),
FirstName VARCHAR(20),
LastName VARCHAR(30),
JobTitle VARCHAR(30),
WorkDuration INT(2),
DaysOff INT(2),
Phone VARCHAR(25),
Email VARCHAR(45),
PRIMARY KEY (StaffID),
FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID)
);

-- Inserting data for Office Staff --

INSERT INTO OfficeStaff VALUES (
"5209","O1","Darcy","Shevelin","Office Worker","6","2","+62 644 451 5587","darcy.shevelin@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"4080","O1","Moina","Mallock","Office Worker","6","2","+30 437 802 3568","moina.mallock@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9344","O1","Pavlov","Fautley","Office Worker","6","2","+86 960 492 4044","pavlov.fautley@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"2079","O1","Adara","Boc","Administrator","6","2","+86 202 771 3534","adara.boc@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9601","O2","Franciskus","Pochin","Office Worker","5","3","+381 171 910 0165","franciskus.pochin@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6963","O2","Jacki","Bartelot","Office Worker","5","3","+33 916 870 1377","jacki.bartelot@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"1644","O2","Vicky","Bestman","Office Worker","5","3","+7 929 306 2917","vicky.bestman@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"3529","O2","Becky","Franceschielli","Administrator","5","1","+55 539 153 2769","becky.franceschielli@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5758","O3","Hervey","Skelcher","Office Worker","5","1","+84 898 670 3718","hervey.skelcher@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"8174","O3","Alfy","Syseland","Office Worker","5","1","+62 881 599 2371","alfy.syseland@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5771","O3","Dode","Klimkov","Office Worker","5","1","+62 744 260 5933","dode.klimkov@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"1320","O3","Alma","Loude","Administrator","5","1","+33 173 584 5244","alma.loude@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9299","O4","Bethina","Halgarth","Office Worker","5","1","+33 729 229 1447","bethina.halgarth@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"7648","O4","Hildegaard","Ellwood","Office Worker","4","3","+62 234 695 4045","hildegaard.ellwood@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"8564","O4","Karisa","Boulde","Office Worker","4","3","+880 596 539 1388","karisa.boulde@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"4312","O4","Bevan","Barrett","Administrator","4","3","+994 751 101 9308","bevan.barrett@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"3906","O5","Valery","Borer","Office Worker","4","3","+86 941 986 9281","valery.borer@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9554","O5","Renae","Hurll","Office Worker","4","3","+234 577 773 4163","renae.hurll@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"8821","O5","Fania","Druhan","Office Worker","4","3","+63 741 815 9483","fania.druhan@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"1108","O5","Bridie","Greene","Administrator","4","3","+55 865 497 4068","bridie.greene@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"3252","O6","Travis","Spadotto","Office Worker","3","2","+7 615 658 4837","travis.spadotto@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"1381","O6","Michale","Neligan","Office Worker","3","2","+380 258 707 1760","michale.neligan@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"2683","O6","Tabbatha","Hurler","Office Worker","3","2","+33 683 300 4068","tabbatha.hurler@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5650","O6","Nannette","Meers","Administrator","3","2","+850 927 363 0103","nannette.meers@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"7103","O7","Reina","Krolman","Office Worker","3","2","+420 757 280 9954","reina.krolman@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6142","O7","Chaddy","Mcimmie","Office Worker","2","1","+86 168 329 2114","chaddy.mcimmie@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"8832","O7","Malina","Lynd","Office Worker","2","1","+1 612 676 0443","malina.lynd@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6779","O7","Reinald","Delleschi","Administrator","2","1","+63 842 853 0142","reinald.delleschi@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6038","O8","Darryl","Flawith","Office Worker","2","1","+351 770 398 8564","darryl.flawith@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"2500","O8","Maisie","Male","Office Worker","2","1","+86 118 907 5109","maisie.male@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"7117","O8","Kari","Ferrierio","Office Worker","2","1","+86 979 160 0909","kari.ferrierio@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9726","O8","Emelina","Abramowitz","Administrator","2","1","+33 497 139 6459","emelina.abramowitz@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6495","O9","Goober","Moiser","Office Worker","2","1","+598 262 654 7645","goober.moiser@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5448","O9","Gabriell","Cordero","Office Worker","1","2","+58 612 372 4790","gabriell.cordero@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"7710","O9","Dorthy","Housbey","Office Worker","1","2","+86 263 692 2843","dorthy.housbey@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6884","O9","Niven","Linggood","Administrator","1","2","+230 623 739 4264","niven.linggood@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"6585","O10","Oran","Mewhirter","Office Worker","1","2","+420 536 859 8162","oran.mewhirter@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"7795","O10","Zia","Pitfield","Office Worker","1","2","+44 771 972 9192","zia.pitfield@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5956","O10","Danielle","Sulman","Office Worker","1","2","+977 254 716 6935","danielle.sulman@staff.example.ie"
);

INSERT INTO OfficeStaff VALUES (
"9817","O10","Martainn","Bunworth","Administrator","1","2","+351 358 390 5240","martainn.bunworth@staff.example.ie"
);


-- Creating a table for the student --

CREATE TABLE Student(
StudentID VARCHAR(9) NOT NULL,
OfficeID VARCHAR(3),
SemesterID VARCHAR(2),
DepartmentID VARCHAR(4),
FacultyID VARCHAR(4),
CourseID VARCHAR(5),
FirstName VARCHAR(20),
LastName VARCHAR(30),
Sex	VARCHAR(1),
PhoneNumber	VARCHAR(25),
StudentEmail VARCHAR(50),
Password VARCHAR(20),
Street VARCHAR(30),
City VARCHAR(25),
County VARCHAR(20),
DOB VARCHAR(15),
StartYear INT(4),
EndYear INT(4),
CurrentYear INT(4),
CourseCompletion VARCHAR(12),
AwardPercentage INT(3),
FeesOutstanding VARCHAR(5),
FeesOutDuration INT(2),
PRIMARY KEY (StudentID),
FOREIGN KEY (OfficeID) REFERENCES Office(OfficeID),
FOREIGN KEY (SemesterID) REFERENCES Semester(SemesterID),
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Inserting Student Data --

INSERT INTO Student VALUES (
"S40958022","O1","S2","DP1","F1","ME262","Weider","Cowpe","M","+33 733 986 8079","S40958022@student.example.ie","858wC0ERjwc","69704 Portage Road","Titay","Altai","06/28/1997","2017","2021","4","Incomplete","70","3,000","3"
);

INSERT INTO Student VALUES (
"S94834326","O2","S2","DP2","F2","AR990","Thatch","Nourse","F","+62 552 556 0283","S94834326@student.example.ie","L8Z41stOzT","9 Burrows Court","Guanagazapa","Yucatan","08/04/1995","2019","2022","2","Incomplete","81","2,500","6"
);

INSERT INTO Student VALUES (
"S18645792","O3","S2","DP3","F3","GD297","Bernete","Dorow","F","+62 137 835 9729","S18645792@student.example.ie","oTQ6yP2QID","56 Heath Terrace","Bridgetown","Bloemfontein","06/01/1989","2019","2022","2","Incomplete","76","0","0"
);

INSERT INTO Student VALUES (
"S33651689","O4","S2","DP4","F4","SM640","Alina","Capron","F","+86 251 307 6557","S33651689@student.example.ie","tUZkilMMZ","09097 Buell Plaza","Saint Johns","Wyoming","07/14/1989","2020","2022","1","Incomplete","79","5,400","6"
);

INSERT INTO Student VALUES (
"S17302348","O5","S2","DP5","F5","AC225","Zeb","Bartolini","M","+84 840 453 8345","S17302348@student.example.ie","fDo8WQZKwsE","7821 Steensland Road","Fazhan","Sichuan","11/27/1979","2020","2023","1","Incomplete","67","0","0"
);

INSERT INTO Student VALUES (
"S45132238","O6","S2","DP6","F6","CS802","Neille","McGrail","M","+852 713 237 4538","S45132238@student.example.ie","sDgsMADWBM3y","1 Troy Circle","Alcaina","Antofagasta","09/20/1985","2018","2022","3","Incomplete","59","4,500","6"
);

INSERT INTO Student VALUES (
"S76071705","O7","S2","DP7","F7","PA345","Justino","Sivior","M","+48 778 115 9148","S76071705@student.example.ie","D84CFKwj","47 Jenifer Place","Ouro Branco","Patagonia","05/17/1978","2020","2022","1","Incomplete","70","3,000","1"
);

INSERT INTO Student VALUES (
"S27439655","O8","S2","DP8","F8","DA122","Nickolai","Matteotti","M","+7 283 326 0093","S27439655@student.example.ie","pr2KhnK67","73 Armistice Circle","Begejci","Kvarner","05/27/1994","2019","2023","2","Incomplete","70","0","0"
);

INSERT INTO Student VALUES (
"S80342040","O9","S2","DP9","F9","LM942","Rachele","Beven","F","+66 491 420 4473","S80342040@student.example.ie","VjL0ICUnk","83351 Tennyson Avenue","Postmasburg","Regensburg","07/24/1978","2020","2024","1","Incomplete","74","3,000","3"
);

INSERT INTO Student VALUES (
"S90203574","O10","S2","DP10","F10","EY092","Bertie","Rumke","M","+234 420 905 7466","S90203574@student.example.ie","CRTWPbqZc","52 Karstens Alley","Bang Pa-in","Saigon","04/16/1995","2020","2021","1","Incomplete","71","0","0"
);

INSERT INTO Student VALUES (
"S78338015","O5","S2","DP5","F11","MR775","Delphinia","Tinline","F","+82 795 560 5034","S78338015@student.example.ie","5b1WfRnK","52370 Jana Crossing","Palmira","Valladolid","12/20/1989","2017","2021","4","Incomplete","69","0","0"
);

INSERT INTO Student VALUES (
"S12330202","O6","S2","DP6","F12","DD597","Genevieve","Morgen","F","+93 428 306 8055","S12330202@student.example.ie","0rFRBRVR","7 Glendale Crossing","Belica","Syrmia","09/21/1988","2020","2024","1","Incomplete","65","0","0"
);

INSERT INTO Student VALUES (
"S58284401","O7","S2","DP7","F13","AP028","Kermie","Minard","F","+86 921 330 0422","S58284401@student.example.ie","K6GI5ByU09","48 La Follette Park","Sambong","Ayutthaya","01/01/1992","2020","2022","1","Incomplete","76","0","0"
);

-- Creating a Table for Modules --

CREATE TABLE Module(
ModuleID INT(4) NOT NULL,
StudentID VARCHAR(9),
CourseID VARCHAR(5),
ModuleName VARCHAR(50),
PRIMARY KEY (ModuleID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Inserting Data into Module --

INSERT INTO Module VALUES (
"9821","S40958022","ME262","Engineering Drawing"
);

INSERT INTO Module VALUES (
"9330","S40958022","ME262","Electronics 2"
);

INSERT INTO Module VALUES (
"9693","S40958022","ME262","Applied Mechanics"
);

INSERT INTO Module VALUES (
"1515","S40958022","ME262","Engineering Mathematics 2"
);

INSERT INTO Module VALUES (
"5379","S94834326","AR990","Architectural Theories & Principles"
);

INSERT INTO Module VALUES (
"6141","S94834326","AR990","Construction Studies"
);

INSERT INTO Module VALUES (
"1099","S94834326","AR990","Applied Technology"
);

INSERT INTO Module VALUES (
"7514","S18645792","GD297","Design Systems 1"
);

INSERT INTO Module VALUES (
"8030","S18645792","GD297","Logotype Design"
);

INSERT INTO Module VALUES (
"7283","S18645792","GD297","Introduction to Typography"
);

INSERT INTO Module VALUES (
"9194","S33651689","SM640","Sport & Event Management"
);

INSERT INTO Module VALUES (
"6101","S33651689","SM640","Basketball Team Management"
);

INSERT INTO Module VALUES (
"3800","S17302348","AC225","Cost Accounting"
);

INSERT INTO Module VALUES (
"9782","S17302348","AC225","Introduction to Finance Management"
);

INSERT INTO Module VALUES (
"7038","S45132238","CS802","Computer Architecture & Operating Systems"
);

INSERT INTO Module VALUES (
"8420","S45132238","CS802","Software Development"
);

INSERT INTO Module VALUES (
"2586","S45132238","CS802","Software Engineering"
);

INSERT INTO Module VALUES (
"5300","S76071705","PA345","Applied Mathematics"
);

INSERT INTO Module VALUES (
"7032","S76071705","PA345","Applied Physics & Astronomy"
);

INSERT INTO Module VALUES (
"2969","S27439655","DA122","Communication Skills"
);

INSERT INTO Module VALUES (
"2105","S27439655","DA122","Experiencing Acting"
);

INSERT INTO Module VALUES (
"9131","S80342040","LM942","Introduction to Legal Systems"
);

INSERT INTO Module VALUES (
"2683","S80342040","LM942","Criminal Law 2"
);

INSERT INTO Module VALUES (
"2850","S80342040","LM942","Constitutional Law 2"
);

INSERT INTO Module VALUES (
"7885","S90203574","EY092","Teacher Training"
);

INSERT INTO Module VALUES (
"5968","S90203574","EY092","Counselling"
);

INSERT INTO Module VALUES (
"7445","S78338015","MR775","Marketing Research"
);

INSERT INTO Module VALUES (
"2071","S78338015","MR775","Sales Management"
);

INSERT INTO Module VALUES (
"9908","S78338015","MR775","Business Development"
);

INSERT INTO Module VALUES (
"1575","S12330202","DD597","Database Coding"
);

INSERT INTO Module VALUES (
"7072","S12330202","DD597","Database Management"
);

INSERT INTO Module VALUES (
"6987","S58284401","AP028","Applied Physics"
);

INSERT INTO Module VALUES (
"3509","S58284401","AP028","Astrophysical Mathematics"
);

INSERT INTO Module VALUES (
"2052","S58284401","AP028","Applied Astronomy"
);

-- Creating table for the lecturers --

CREATE TABLE Lecturer(
LecturerID INT(4) NOT NULL,
ModuleID INT(4),
LecturerFirstName	VARCHAR(20),
LecturerLastName VARCHAR(30),
LecturerPhNum	VARCHAR(25),
LecturerEmail VARCHAR(40),
PRIMARY KEY (LecturerID),
FOREIGN KEY (ModuleID) REFERENCES Module(ModuleID)
);

-- Inserting data into Lecturer --

INSERT INTO Lecturer VALUES (
"7166","9821","Mervin","Darwent","+86 782 307 6418","mervin.darwent@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"7548","9330","Burk","Cannaway","+66 212 249 7221","burk.cannaway@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"1363","9693","Arron","Henworth","+86 793 638 2456","arron.henworth@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"9467","1515","Cheslie","Courtliff","+86 138 155 1203","cheslie.courtliff@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5502","5379","Pierrette","Hinckesman","+93 120 275 8384","pierrette.hinckesman@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4181","6141","Lorilee","Ruslin","+63 349 490 3077","lorilee.ruslin@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"3742","1099","Olive","Petofi","+64 144 862 0636","olive.petofi@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5612","7514","Riordan","Rockliffe","+64 238 831 5289","riordan.rockliffe@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6479","8030","Zarah","Boothe","+964 805 995 6573","zarah.boothe@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6346","7283","Moria","Mucklo","+66 962 164 8089","moria.mucklo@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"9308","9194","Bronny","Torrisi","+81 716 125 6471","bronny.torrisi@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"2046","6101","Ingunna","Norres","+62 613 583 7193","ingunna.norres@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4336","3800","Ingar","Gallehawk","+62 841 950 7699","ingar.gallehawk@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"7806","9782","Wilburt","Broggetti","+63 547 804 4959","wilburt.broggetti@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"1727","7038","Ripley","Gerson","+49 640 811 9840","ripley.gerson@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"2013","8420","Cathy","Haslock(e)","+380 912 802 9323","cathy.haslocke@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"8267","2586","Darrick","Rubes","+7 703 682 5483","darrick.rubes@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5195","5300","Malissia","Witling","+51 503 360 7659","malissia.witling@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4362","7032","Devin","Enriquez","+856 767 159 0189","devin.enriquez@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"3024","2969","Josepha","Vigneron","+48 955 729 6033","josepha.vigneron@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6327","2105","Case","Gottschalk","+86 298 270 4706","case.gottschalk@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5690","9131","Beck","Seid","+507 181 109 2263","beck.seid@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"3769","2683","Josephina","Suermeier","+351 452 586 7808","josephina.suermeier@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5793","2850","Conchita","Saladine","+86 850 671 5916","conchita.saladine@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6853","7885","De witt","Bruckner","+51 754 215 6885","dewitt.bruckner@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6646","5968","Faydra","Askey","+507 997 376 8875","faydra.askey@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"5818","7445","Dionne","Overstreet","+62 780 944 0927","dionne.overstreet@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"6123","2071","Babbie","Howsley","+86 526 424 9948","babbie.howsley@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4911","9908","Hartley","Railton","+86 120 695 3604","hartley.railton@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"8579","1575","Ricardo","Klaussen","+55 100 935 6049","ricardo.klaussen@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"8039","7072","Corene","Feeley","+7 599 168 4478","corene.feeley@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4934","6987","Rogerio","Mabbott","+57 862 166 0413","rogerio.mabbott@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"9602","3509","Octavia","Sunderland","+595 397 258 6062","octavia.sunderland@staff.example.ie"
);

INSERT INTO Lecturer VALUES (
"4322","2052","Morgana","Chrispin","+352 726 650 1060","morgana.chrispin@staff.example.ie"
);

-- Creating a table for the timetables --

CREATE TABLE Timetable(
TimetableID INT(4) NOT NULL,
StudentID VARCHAR(9),
CourseID VARCHAR(5),
ModuleTime VARCHAR(20),
Days VARCHAR(45),
PRIMARY KEY (TimetableID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Inserting data into timetables --

INSERT INTO Timetable VALUES (
"8257","S40958022","ME262","09:00-11:00","Monday, Thursday"
);

INSERT INTO Timetable VALUES (
"5617","S40958022","ME262","11:00:13-00","Monday, Thursday"
);

INSERT INTO Timetable VALUES (
"801","S40958022","ME262","09:00-11:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"1263","S40958022","ME262","11:00-13:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"4956","S94834326","AR990","11:00:13-00","Tuesday, Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"9365","S94834326","AR990","14:00-16:00","Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"7659","S94834326","AR990","09:00-11:00","Monday, Tuesday"
);

INSERT INTO Timetable VALUES (
"206","S18645792","GD297","09:00-11:00","Monday, Thursday"
);

INSERT INTO Timetable VALUES (
"5545","S18645792","GD297","14:00-16:00","Monday, Tuesday"
);

INSERT INTO Timetable VALUES (
"6971","S18645792","GD297","14:00-16:00","Tuesday, Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"4298","S33651689","SM640","11:00:13-00","Monday, Tuesday"
);

INSERT INTO Timetable VALUES (
"7703","S33651689","SM640","11:00:13-00","Thursday, Friday"
);

INSERT INTO Timetable VALUES (
"6482","S17302348","AC225","09:00-11:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"1018","S17302348","AC225","09:00-11:00","Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"117","S45132238","CS802","09:00-11:00","Tuesday, Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"7785","S45132238","CS802","14:00-16:00","Thursday, Friday"
);

INSERT INTO Timetable VALUES (
"7353","S45132238","CS802","11:00:13-00","Monday, Tuesday, Wednesday"
);

INSERT INTO Timetable VALUES (
"8010","S76071705","PA345","09:00-11:00","Tuesday, Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"4742","S76071705","PA345","14:00-16:00","Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"6180","S27439655","DA122","11:00:13-00","Monday, Tuesday, Wednesday"
);

INSERT INTO Timetable VALUES (
"7350","S27439655","DA122","14:00-16:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"6499","S80342040","LM942","09:00-11:00","Monday, Tuesday, Wednesday"
);

INSERT INTO Timetable VALUES (
"2036","S80342040","LM942","09:00-11:00","Monday, Thursday"
);

INSERT INTO Timetable VALUES (
"6249","S80342040","LM942","11:00:13-00","Monday, Tuesday, Wednesday"
);

INSERT INTO Timetable VALUES (
"5671","S90203574","EY092","09:00-11:00","Thursday, Friday"
);

INSERT INTO Timetable VALUES (
"378","S90203574","EY092","14:00-16:00","Thursday, Friday"
);

INSERT INTO Timetable VALUES (
"5228","S78338015","MR775","09:00-11:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"850","S78338015","MR775","11:00:13-00","Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"1139","S78338015","MR775","11:00:13-00","Monday, Thursday"
);

INSERT INTO Timetable VALUES (
"408","S12330202","DD597","14:00-16:00","Wednesday, Thursday"
);

INSERT INTO Timetable VALUES (
"9543","S12330202","DD597","09:00-11:00","Thursday, Friday"
);

INSERT INTO Timetable VALUES (
"8396","S58284401","AP028","14:00-16:00","Wednesday, Friday"
);

INSERT INTO Timetable VALUES (
"4801","S58284401","AP028","11:00:13-00","Monday, Tuesday, Wednesday"
);

INSERT INTO Timetable VALUES (
"9010","S58284401","AP028","14:00-16:00","Monday, Thursday"
);

-- Q1. --

UPDATE Student
SET CurrentYear = "2"
WHERE CurrentYear = "1" AND EndYear != "2021";

-- Q2. --

UPDATE Student
SET CourseCompletion = "Completed"
WHERE EndYear = "2021" AND CurrentYear = "4";

-- Q3. --

DELETE FROM Student
WHERE FeesOutDuration <= "6";

-- Q4. --

SELECT AwardPercentage,FirstName,LastName FROM Student
ORDER BY AwardPercentage ASC;

-- Q5. --

INSERT INTO Semester VALUES (
"S4","Semester 4","01-11-2021","15-03-2022"
);

INSERT INTO Department VALUES (
"DP11","Department of Chem Engineering","76 Nevsky Prospekt","Leningrad","A01 UIW2"
);

INSERT INTO HeadofDepartment VALUES (
"HD11","DP11","Karin","Melbourne","+44 8345 320 2353","karin.melbourne@staff.example.ie"
);

INSERT INTO Faculty VALUES (
"F14","DP11","Faculty of Chemical Sciences","0116 7475 9221","96 Jurisdiction Road","Belostok","XLS O203","Monday to Friday","09:00","17:00"
);

INSERT INTO Dean VALUES (
"D14","F14","Xavier","Traugutt","+44 9264 111 3442","xavier.traugutt@staff.example.ie"
);

INSERT INTO Course VALUES (
"CE013","F14","Chemical Engineering","8","Higher Bachelor's Degree","Face-to-Face","20","4","2","4"
);

INSERT INTO CourseTutor VALUES (
"CT14","CE013","Axel","Morner","+86 956 254 7334","axel.morner@staff.example.ie"
);

INSERT INTO Office VALUES (
"O11","Spokane Office","14 Mormon Street","Spokane","9A2 KKL4","+354 76 223 4567","spokane.office@example.ie"
);

INSERT INTO OfficeStaff VALUES (
"5566","O11","Harry","Truman","Office Worker","6","2","+353 87 454 2304","harry.truman@staff.example.ie"
);

INSERT INTO Student VALUES (
"S66657025","O11","S4","DP11","F14","CE013","Franklin","Carlow","M","+335 46 4234 235","S66657025@student.example.ie","xJ252Sq2R","14 Ulica Pilsudskiego","Warsaw","Masovia","30-04-1989","2019","2023","2","Incomplete","61","3,000","1"
);

INSERT INTO Timetable VALUES (
"5656","S66657025","CE013","09:00-11:00","Monday,Tuesday"
);

INSERT INTO Module VALUES (
"8553","S66657025","CE013","CAD & FEA"
);

INSERT INTO Lecturer VALUES (
"7993","8553","Marian","Kukiel","+86 754 334 1256","marian.kukiel@staff.example.ie"
);



-- Q6. --

DELETE FROM Semester
WHERE SemesterName = "Semester 4";

DELETE FROM Course
WHERE CourseName = "Chemical Engineering";

DELETE FROM Department
WHERE DepartmentName = "Department of Chemical Sciences";

DELETE FROM Faculty
WHERE FacultyPhNum = "0116 7475 9221";

DELETE FROM Timetable
WHERE Days = "Monday,Tuesday";

DELETE FROM HeadofDepartment
WHERE HODFirstName = "Karin";

DELETE FROM Dean
WHERE DeanLastName = "Traugutt";

DELETE FROM Lecturer
WHERE LecturerPhNum = "+86 754 334 1256";

DELETE FROM CourseTutor
WHERE CourseTutorFirstName = "Axel";

DELETE FROM Office
WHERE Street = "14 Mormon Street";

DELETE FROM OfficeStaff
WHERE FirstName = "Harry";

DELETE FROM Module
WHERE ModuleName = "CAD & FEA";

DELETE FROM Student
WHERE Password = "xJ252Sq2R";

-- Q7. --

SELECT SUM(DaysOff)
FROM OfficeStaff
ORDER BY DaysOff DESC;

-- Q8. --

SELECT COUNT(CourseName)
FROM Course
WHERE CourseName = "%Business%";

-- Q9. --

UPDATE OfficeStaff
SET JobTitle = "Administrator"
WHERE JobTitle = "Office Worker";

-- Q10. *Doctorial is considered the same as a Master's degree at Level 10 --

UPDATE Course
SET CourseAward = "Masters Degree"
WHERE CourseAward = "PhD";

-- Q11. --

UPDATE Course
SET DeliveryType = "Online"
WHERE DeliveryType = "Face-to-Face";

-- Q12. --

UPDATE Faculty
SET OpeningDays = "Closed to Visitors";

-- Q13 moved after Q20 because it does not work correctly when run in order --

-- Q14. --

DELETE FROM Course
WHERE CourseLevel = "6";

-- Q15. *For this example, a phone number from one of the faculties will be used --

UPDATE Faculty
SET FacultyPhNum = "01-7654321"
WHERE FacultyID = "F1";

-- Q16. --

UPDATE Dean
SET DeanFirstName = "Michael", DeanLastName = "Dean"
WHERE DeanID = "D1";

-- Q17. --

SELECT FirstName, LastName, WorkDuration
FROM OfficeStaff
WHERE WorkDuration > "4";

-- Q18. --

SELECT YearlySemDur,TotalPlaces
FROM Course
WHERE YearlySemDur = "3" AND TotalPlaces >= "20";

-- Q19. --

SELECT COUNT(Street)
FROM Student
WHERE Street = "%Road";

-- Q20. --

CREATE VIEW SCD
AS SELECT Semester.SemesterID, Course.CourseName, Department.Street
	FROM Semester, Course, Department;

-- Q13. --

DROP TABLE Course;
