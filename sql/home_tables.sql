
use pwcares;

create table home_address
( id INT(5) NOT NULL,
  home1 VARCHAR(40),
  home2 VARCHAR(40),
  city VARCHAR(20),
  state VARCHAR(2),
  zip VARCHAR(10),
  phone1 VARCHAR(15),
  h1primary VARCHAR(7),
  phone2 VARCHAR(15),
  h2primary VARCHAR(7),
  cell1 VARCHAR(15),
  hc1email VARCHAR(50),
  hc1primary VARCHAR(7),
  cell2 VARCHAR(15),
  hc2primary VARCHAR(7),
  email1 VARCHAR(50),
  he1primary VARCHAR(7),
  email2 VARCHAR(50),
  he2primary VARCHAR(7)
 );

LOAD DATA INFILE '/tmp/home.csv'
INTO TABLE pwcares.home_address
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

//Headers for Home table

ID,HOME1,HOME2,CITY,STATE,ZIP,PHONE1,H1PRIMARY,PHONE2,H2PRIMARY,CELL1,HC1EMAIL,HC1PRIMARY,CELL2,HC2PRIMARY,EMAIL1,HE1PRIMARY,HEMAIL2,HE2PRIMARY
