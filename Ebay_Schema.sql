use ebay_dataset;
drop table if exists ebay_data;
create table ebay_data
(
Date_	date null,
Open_	decimal(10,3) null,
High	decimal(10,3) null,
Low		decimal(10,3) null,
Close_	decimal(10,3) null,
Adj_Close decimal(10,3) null, 
Volume	int null,
Years int null,
months varchar(9) null,
weeks varchar(9) null
);