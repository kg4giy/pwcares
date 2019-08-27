
use pwcares;

create table work_address
( id INT(5) NOT NULL,
  work1 VARCHAR(40),
  work2 VARCHAR(40),
  work3 VARCHAR(40),
  city VARCHAR(20),
  state VARCHAR(2),
  zip INT(10),
  phone1 VARCHAR(15),
  wp1ext VARCHAR(6),
  w1primary VARCHAR(7),
  phone2 VARCHAR(15),
  w2primary VARCHAR(7),
  cell1 VARCHAR(15),
  wc1email VARCHAR(30),
  wc1primary VARCHAR(7),
  cell2 VARCHAR(15),
  wc2primary VARCHAR(7),
  email1 VARCHAR(30),
  we1primary VARCHAR(7),
  email2 VARCHAR(30),
  we2primary VARCHAR(7)
 );

LOAD DATA INFILE '/tmp/work.csv'
INTO TABLE pwcares.work_address
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

//Headers for Home table

ID,WORK1,WORK2,WORK3,CITY,STATE,ZIP,PHONE1,WP1EXT,W1PRIMARY,PHONE2,W2PRIMARY,CELL1,WC1EMAIL,WC1PRIMARY,CELL2,WC2PRIMARY,EMAIL1,WE1PRIMARY,EMAIL2,WE2PRIMARY
