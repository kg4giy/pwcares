
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


ID,CWXMT,CWRCV,ARECCv1,SKYWARN,RC_INTRO,RC_SHELTER,RC_DAT,CPR_ADULT,CPR_IC,CPR_AED,FIRST_AID,CERT,IS-700,IS-800,IS-100,IS-200,ICS-300,ICS-400,IS-706,IS-546,EOC-101,G-191,G-775,IS-702,IS-703,IS-120,IS-230,E-969,IS-29


CREATE TABLE training
( train_id INT(5) NOT NULL, 
  cwxmt INT(2), 
  cwrcv INT(2), 
  areccv1 VARCHAR(7), 
  skywarn VARCHAR(10), 
  rc_intro VARCHAR(7), 
  rc_shelter VARCHAR(7), 
  rc_dat VARCHAR(7), 
  cpr_adult VARCHAR(7),
  cpr_ic VARCHAR(7),
  cpr_aed VARCHAR(7),
  first_aid VARCHAR(7),
  cert VARCHAR(20),
  is_700 VARCHAR(7),
  is_800 VARCHAR(7),
  is_100 VARCHAR(7),
  is_200 VARCHAR(7),
  is_300 VARCHAR(7),
  is_400 VARCHAR(7),
  is_706 VARCHAR(7),
  is_546 VARCHAR(7),
  eoc_101 VARCHAR(7),
  g_191 VARCHAR(7),
  g_775 VARCHAR(7),
  is_702 VARCHAR(7),
  is_703 VARCHAR(7),
  is_120 VARCHAR(7),
  is_230 VARCHAR(7),
  e_969 VARCHAR(7),
  is_29 VARCHAR(7)
);

LOAD DATA INFILE '/tmp/training.csv'
INTO TABLE pwcares.training
FIELDS TERMINATED BY ',';

CREATE TABLE yes_no
( id INT(1),
  descr VARCHAR(4)
);

INSERT INTO pwcares.yes_no (id, descr) VALUES (0, 'no');
INSERT INTO pwcares.yes_no (id, descr) VALUES (1, 'yes');



Select * from pwcares.call_sign join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id;

//This pulls back all the training information, not the required information, so rewrite for the specifics//

SELECT pwcares.call_sign.call_sign, pwcares.call_sign.last, pwcares.call_sign.first, pwcares.training.* INTO OUTFILE '/tmp/training_status.txt' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'from pwcares.call_sign right join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id WHERE pwcares.call_sign.status = 'A';

