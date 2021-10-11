-- test query hcad data for known addresses
select * from real_acct
where site_addr_1 = upper('2414 Del Norte St')

select * from real_acct
where site_addr_1 = like('%PARK%')

select * from real_acct
where str_num = 4535 AND STR = 'PARK';

select * from real_acct
where str_num = '2414' AND STR = 'DEL NORTE'


select count(*) from har
select * from har;
select * from real_acct limit(25);

-- additional data from har caused negative substring length not allowed
select substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name from har

select mls
from har
where length(address) =0;

-- hcad data address related
str_num integer
str text
str_sfx text
site_addr_2 text - city 
site_addr_3 - zip 

-- add columns to har to store address and city
alter table har
add column address2 varchar,
add column city varchar,
add column har_zip varchar;

alter table real_acct
alter column site_addr_3 type varchar;

select mls, split_part(address, ',',1) as address2,split_part(address, ',',2) as city from har;

select  mls, cast(substring(address,1,position(' ' in address)-1) as varchar(25)) as str_num, 
substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name,
split_part(address, ',',2) as city from har;

select position(' ' in address ) as "start", position(',' in address) - position(' ' in address ) as "length" from har;
select substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name from har
select split_part(address,',',2)  as city from har;

select length(address) from har;
select positon(',' in address ) from har;
select positon(' ' address ) from har;

drop table if exists har2;
create table har2 as select mls, cast(substring(address,1,position(' ' in address)-1) as string) as str_num ,
substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name,
split_part(address, ',',2) as city from har;

drop table if exists har2;
create table har2 as select mls, cast(substring(address,1,position(' ' in address)-1) as text) as str_num ,
substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name,
split_part(address, ',',2) as city from har;

drop table if exists har2;
create table har2 as 
select mls, split_part(address, ',',1) as address2,split_part(address, ',',2) as city,
right(address,5) as har_zip from har;

select right(address,5) from har

select * from har2;

select * from har;
update har
set address2 = har2.address2,
city=har2.city,
har_zip = har2.har_zip
from har2
where har.mls = har2.mls

select count(*) from har
select * from har limit 25;
select * from real_acct limit 25;
select * from har where address like ('2414%')

select r.str,r.site_addr_1 as "hcad_address",r.site_addr_3 as "hcad zip",h.mls,h.address as "har address",
h.address2 as "har address parse"
from real_acct r, har h
where r.site_addr_1 = h.har_zip
and h.har_zip = '77018'
limit 25

select r.site_addr_1 as "hcad_address",r.site_addr_3,h.mls,h.address2,h.address,h.city,h.har_zip
-- select count(*)
from real_acct r, har h
where upper(r.site_addr_1) = upper(h.address2)
and h.har_zip = '77018'

select r.site_addr_1
from real_acct r
where r.site_addr_3 = '77018'
-- and upper(r.site_addr_1) like ('%YALE%')
and upper(r.site_addr_1) = upper('4514 YALE')


select *
from har h
where h.har_zip = '77018'
-- and upper(h.address2) like ('%YALE%')
and h.address2 = '4514 Yale'

alter table real_acct 
alter column str_num type text;

-- columns we want 
select r.str_num,r.str,r.site_addr_1,r.site_addr_3
from real_acct r
where r.site_addr_3 ='77018'

-- addressnumber,streetname,zipcode

select ha."AddressNumber",ha."StreetName",ha."ZipCode" from har_address ha
where ha."ZipCode" = '77018';

select ha."mls",ha."AddressNumber",ha."StreetName",ha."ZipCode", r.str_num,r.str,r.site_addr_1,r.site_addr_3 
from har_address ha, real_acct r
where ha."ZipCode" = '77018'
and ha."ZipCode" = r.site_addr_3
and upper(ha."StreetName") = upper(r.str)
and ha."AddressNumber" = r.str_num
and r.str = 'DEL NORTE'
and ha.mls = 18712079

select ha."mls", r.str_num,r.str,r.site_addr_1,r.site_addr_3,ha.price as "har price", r.tot_appr_val as "hcad appraised value",
r.tot_mkt_val as "hcad total mkt value"
from har_address ha, real_acct r
where ha."ZipCode" = '77018'
and ha."ZipCode" = r.site_addr_3
and upper(ha."StreetName") = upper(r.str)
and ha."AddressNumber" = r.str_num
and r.str = 'DEL NORTE'
and ha.mls = 18712079

select ha."mls", r.str_num,r.str,r.site_addr_1,r.site_addr_3,ha.price as "har price", r.tot_appr_val as "hcad appraised value",
r.tot_mkt_val as "hcad total mkt value"
from har_address ha, real_acct r
where ha."ZipCode" = r.site_addr_3
and upper(ha."StreetName") = upper(r.str)
and ha."AddressNumber" = r.str_num
and r.str = 'DEL NORTE'







select * from har limit(25);
select * from har_address limit(25);
select * from real_acct limit(25);

