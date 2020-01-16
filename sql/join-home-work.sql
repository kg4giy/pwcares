


SELECT pwcares.call_sign.call_sign, pwcares.call_sign.last, pwcares.call_sign.first,pwcares.home_address.home1,pwcares.home_address.home2,pwcares.home_address.city,pwcares.home_address.state,pwcares.home_address.zip,pwcares.home_address.phone1,pwcares.home_address.h1primary,pwcares.home_address.cell1,pwcares.home_address.hc1primary,pwcares.work_address.work1,pwcares.work_address.work2,pwcares.work_address.work3,pwcares.work_address.city,pwcares.work_address.state,pwcares.work_address.zip,pwcares.work_address.phone1,pwcares.work_address.w1primary,pwcares.work_address.cell1,pwcares.work_address.wc1primary
INTO OUTFILE '/tmp/home-work-combine.txt'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM pwcares.call_sign inner join pwcares.home_address on pwcares.call_sign.call_sign_id=pwcares.home_address.id inner join pwcares.work_address on pwcares.call_sign.call_sign_id=pwcares.work_address.id;