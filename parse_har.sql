select * from real_acct
where site_addr_1 = upper('2414 Del Norte St')

select * from real_acct
where site_addr_1 = like('%PARK%')


upper('4535 Park')



select * from real_acct
where str_num = 4535 AND STR = 'PARK';

select * from real_acct
where str_num = '2414' AND STR = 'DEL NORTE'

and site_addr_3 = '77018'


and str = 'Del Norte';

select count(*) from har

select * from har

str_num integer
str text
str_sfx text
site_addr_2 text - city 
site_addr_3 - zip 

alter table har
add column house_number integer,
add column str_sfx text,
add column city text;



select position(' ' in address ) as "start", position(',' in address) - position(' ' in address ) as "length" from har;
select substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name from har
select split_part(address,',',2)  as city from har;

select length(address) from har;
select positon(',' in address ) from har;
select positon(' ' address ) from har;

drop table har2;
create table har2 as select mls, cast(substring(address,1,position(' ' in address)-1) as integer) as str_num ,
substring(address, position(' ' in address),position(',' in address) - position(' ' in address )) as street_name,
split_part(address, ',',2) as city from har;
select * from har2;

select * from har;
update har
set house_number = har2.str_num,
str_sfx=har2.street_name,
city=har2.city
from har2
where har.mls = har2.mls


