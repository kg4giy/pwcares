CREATE TABLE training
( train_id INT(5) NOT NULL, 
  cwxmt INT(2), 
  cwrcv INT(2), 
  areccv1 INT(1), 
  skywarn VARCHAR(10), 
  rc_intro INT(1), 
  rc_shelter INT(1), 
  rc_dat INT(1), 
  cpr_adult INT(1),
  cpr_ic INT(1),
  cpr_aed INT(1),
  first_aid INT(1),
  cert VARCHAR(20),
  is_700 INT(1),
  is_800 INT(1),
  is_100 INT(1),
  is_200 INT(1),
  is_300 INT(1),
  is_400 INT(1),
  is_706 INT(1),
  is_546 INT(1),
  eoc_101 INT(1),
  g_191 INT(1),
  g_775 INT(1),
  is_702 INT(1),
  is_703 INT(1),
  is_120 INT(1),
  is_230 INT(1),
  e_969 INT(1),
  is_29 INT(1)
);

SELECT pwcares.call_sign.call_sign, pwcares.call_sign.last, pwcares.call_sign.first, pwcares.call_sign.appointment, pwcares.training.is_100, pwcares.training.is_200,pwcares.training.is_300, pwcares.training.is_400, pwcares.training.is_700, pwcares.training.is_800, pwcares.training.g_191, pwcares.training.g_775, pwcares.training.eoc_101  
INTO OUTFILE '/tmp/training_status.txt' 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM pwcares.call_sign right join pwcares.training on pwcares.call_sign.call_sign_id=pwcares.training.train_id WHERE pwcares.call_sign.status = 'A';
