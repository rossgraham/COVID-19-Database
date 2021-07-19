
CONNECT TO cs421;




CREATE TABLE Category
(
  cname VARCHAR(30) NOT NULL
  ,prioritynum INTEGER NOT NULL
  , PRIMARY KEY (cname)
);

CREATE TABLE Person
(
  hinsurnum INTEGER NOT NULL,
  name VARCHAR(30) NOT NULL,
  gender CHAR(1) NOT NULL,
  dob DATE NOT NULL,
  phone CHAR(13)NOT NULL ,
  city VARCHAR(30) NOT NULL,
  postalcd VARCHAR(7) NOT NULL,
  streetaddr VARCHAR(50) NOT NULL,
  regdate DATE NOT NULL,
  cname VARCHAR(30) NOT NULL,
  PRIMARY KEY (hinsurnum),
  FOREIGN KEY (cname) references Category(cname)
);

CREATE TABLE Vaccine
(
  vname VARCHAR(30) NOT NULL,
  doses INTEGER NOT NULL,
  waitperiodDays INTEGER,
  PRIMARY KEY (vname)
);

CREATE TABLE VaccLocation
(
  locname VARCHAR(30) NOT NULL,
  lcity VARCHAR(30) NOT NULL,
  lpostalcd CHAR(7) NOT NULL,
  lstreetaddr VARCHAR(30) NOT NULL,
  PRIMARY KEY (locname)
);

CREATE TABLE VaccineBatch
(
  vname VARCHAR(30) NOT NULL,
  batchno INTEGER NOT NULL,
  mfgdate DATE NOT NULL,
  exprydate DATE NOT NULL,
  numdoses INTEGER NOT NULL,
  locname VARCHAR(30),
  PRIMARY KEY(vname,batchno),
  FOREIGN KEY (locname) references VaccLocation(locname),
  FOREIGN KEY (vname) references Vaccine(vname),
  CHECK ( exprydate > mfgdate )
);

CREATE TABLE Vial
(
  vname VARCHAR(30) NOT NULL,
  batchno INTEGER NOT NULL,
  vialid INTEGER NOT NULL,
  PRIMARY KEY(vname,batchno,vialid),
  FOREIGN KEY (vname, batchno) references VaccineBatch(vname, batchno)
);

CREATE TABLE Hospital
(
 locname VARCHAR(30) NOT NULL,
 PRIMARY KEY(locname),
 FOREIGN KEY(locname) references VaccLocation(locname)
);

CREATE TABLE Nurse
(
  licensenum INTEGER NOT NULL,
  name VARCHAR(30) NOT NULL ,
  locname VARCHAR(30) NOT NULL,
  PRIMARY KEY(licensenum),
  FOREIGN KEY (locname) references Hospital(locname)
);

CREATE TABLE VaccDates
(
  locname VARCHAR(30) NOT NULL,
  vdate DATE NOT NULL,
  PRIMARY KEY(locname, vdate),
  FOREIGN KEY(locname) references VaccLocation(locname)
);

CREATE TABLE VaccSlot
(
  locname VARCHAR(30) NOT NULL,
  vdate DATE NOT NULL,
  vtime TIME NOT NULL,
  vslot INTEGER NOT NULL,
  hinsurnum INTEGER,
  asgndate DATE,
  licensenum INTEGER,
  vname VARCHAR(30),
  batchno INTEGER,
  vialid INTEGER,
  PRIMARY KEY(locname, vdate, vtime, vslot),
  FOREIGN KEY (locname, vdate) references VaccDates(locname, vdate),
  FOREIGN KEY (licensenum) references Nurse(licensenum),
  FOREIGN KEY(hinsurnum) references Person(hinsurnum),
  FOREIGN KEY(vname, batchno, vialid) references Vial(vname, batchno, vialid)
);

CREATE TABLE NurseAssignments
(
  licensenum INTEGER NOT NULL,
  locname VARCHAR(30) NOT NULL ,
  vdate DATE NOT NULL,
  PRIMARY KEY(licensenum, locname, vdate),
  FOREIGN KEY (licensenum) references Nurse(licensenum),
  FOREIGN KEY (locname, vdate) references VaccDates(locname, vdate)
);


