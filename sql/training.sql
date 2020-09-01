
use pwcares;

DROP TABLE training;

CREATE TABLE training
( train_id VARCHAR(5) NOT NULL, 
  cwxmt VARCHAR(2), 
  cwrcv VARCHAR(2), 
  areccv1 VARCHAR(1), 
  skywarn VARCHAR(10), 
  rc_intro VARCHAR(1), 
  rc_shelter VARCHAR(1), 
  rc_dat VARCHAR(1), 
  cpr_adult VARCHAR(1),
  cpr_ic VARCHAR(1),
  cpr_aed VARCHAR(1),
  first_aid VARCHAR(1),
  cert VARCHAR(20),
  is_700 VARCHAR(1),
  is_800 VARCHAR(1),
  is_100 VARCHAR(1),
  is_200 VARCHAR(1),
  is_300 VARCHAR(1),
  is_400 VARCHAR(1),
  is_706 VARCHAR(1),
  is_546 VARCHAR(1),
  is_1300 VARCHAR(1),
  eoc_101 VARCHAR(1),
  eoc_102 VARCHAR(1),
  g_191 VARCHAR(1),
  g_775 VARCHAR(1),
  is_702 VARCHAR(1),
  is_703 VARCHAR(1),
  is_120 VARCHAR(1),
  is_230 VARCHAR(1),
  is_235 VARCHAR(1),
  is_240 VARCHAR(1),
  is_241 VARCHAR(1),
  is_242 VARCHAR(1),
  is_244 VARCHAR(1),
  is_288 VARCHAR(1),
  is_2200 VARCHAR(1),
  is_29 VARCHAR(1),
  ec_969 VARCHAR(1),
  ec_016 VARCHAR(1),
  auxcomm VARCHAR(1)
);


//Load data 

LOAD DATA INFILE '/tmp/training.csv'
INTO TABLE pwcares.training
FIELDS TERMINATED BY ',';

//Join query to select entries for reporting

SELECT pwcares.call_sign.call_sign, pwcares.call_sign.last, pwcares.call_sign.first, pwcares.call_sign.appointment, pwcares.training.is_100, pwcares.training.is_200,pwcares.training.is_300, pwcares.training.is_400, pwcares.training.is_700, pwcares.training.is_800, pwcares.training.is_1300, pwcares.training.g_191, pwcares.training.g_775, pwcares.training.eoc_101, pwcares.training.eoc_102 
INTO OUTFILE '/tmp/training_status.txt' 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM pwcares.call_sign right join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id WHERE pwcares.call_sign.status = 'A';


//Headers for training

ID,CWXMT,CWRCV,ARECCv1,SKYWARN,RC_VARCHARRO,RC_SHELTER,RC_DAT,CPR_ADULT,CPR_IC,CPR_AED,FIRST_AID,CERT,IS-700,IS-800,IS-100,IS-200,ICS-300,ICS-400,IS-706,IS-546,EOC-101,G-191,G-775,IS-702,IS-703,IS-120,IS-230,IS-240,IS-241,IS-242,IS-244,IS-288,E-969,IS-29

//Rough work for join

Select * from pwcares.call_sign join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id;

//This pulls back all the training information, not the required information, so rewrite for the specifics//

SELECT pwcares.call_sign.call_sign, pwcares.call_sign.last, pwcares.call_sign.first, pwcares.training.* VARCHARO OUTFILE '/tmp/training_status.txt' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'from pwcares.call_sign right join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id WHERE pwcares.call_sign.status = 'A';

