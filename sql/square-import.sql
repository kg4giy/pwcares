First Name,Last Name,Company Name,Email Address,Phone Number,Street Address 1,Street Address 2,City,State,Postal Code,Reference ID,Birthday

select pwcares.call_sign.first, pwcares.call_sign.last, pwcares.home_address.email1, pwcares.home_address.phone1, pwcares.home_address.home1, pwcares.home_address.home2, pwcares.home_address.city, pwcares.home_address.state, pwcares.home_address.zip, pwcares.call_sign.call_sign INTO OUTFILE '/tmp/square-import.csv' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n'from pwcares.call_sign right join pwcares.home_address on pwcares.call_sign.call_sign_id=pwcares.home_address.id WHERE pwcares.call_sign.status = 'A';