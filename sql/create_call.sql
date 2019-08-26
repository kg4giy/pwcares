
use pwcares;

CREATE TABLE call_sign 
( call_sign_id INT(5) NOT NULL, 
  call_sign VARCHAR(6), 
  last VARCHAR(100), 
  first VARCHAR(100), 
  suffix VARCHAR(3), 
  status VARCHAR(1), 
  cleared VARCHAR(3), 
  appointment VARCHAR(25), 
  photo VARCHAR(50)
);

LOAD DATA INFILE '/tmp/call.csv'
INTO TABLE pwcares.call_sign
FIELDS TERMINATED BY ',';

//Yes/No table creation

CREATE TABLE yes_no
( id INT(1),
  descr VARCHAR(4)
);

INSERT INTO pwcares.yes_no (id, descr) VALUES (0, 'no');
INSERT INTO pwcares.yes_no (id, descr) VALUES (1, 'yes');



