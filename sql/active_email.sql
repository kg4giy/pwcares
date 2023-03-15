//Active Email

use pwcares;

SELECT pwcares.call_sign.call_sign, pwcares.home_address.email1
INTO OUTFILE '/tmp/email_status.txt' 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'
FROM pwcares.call_sign right join pwcares.home_address on pwcares.call_sign.call_sign_id=pwcares.home_address.home_id WHERE pwcares.call_sign.status = 'A';

