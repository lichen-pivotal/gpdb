-- start_ignore
SET gp_create_table_random_default_distribution=off;
-- end_ignore
--
-- SYNC1 AO TABLE 1
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part1 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part1_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part1 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part1_A values ( generate_series(1,10),generate_series(21,30));



--
-- SYNC1 AO TABLE 2
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part2 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part2_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part2 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part2_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 3
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part3 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part3_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part3 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part3_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 4
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part4 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part4_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part4 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part4_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 5
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part5 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part5_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part5 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part5_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 6
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part6 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part6_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part6 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part6_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 7
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part7 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part7_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part7 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part7_A values ( generate_series(1,10),generate_series(21,30));

--
-- SYNC1 AO TABLE 8
--
CREATE TABLE sync1_ao_alter_part_exchange_default_part8 (
        unique1         int4,
        unique2         int4
)     with ( appendonly='true') partition by range (unique1)
( partition aa start (0) end (500) every (100), default partition default_part );



CREATE TABLE sync1_ao_alter_part_exchange_default_part8_A (
        unique1         int4,
        unique2         int4)   with ( appendonly='true')  ;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part8 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part8_A values ( generate_series(1,10),generate_series(21,30));





--
--
-- ALTER SYNC1 AO EXCHANGE DEFAULT PART
--
--

--
-- ALTER PARTITION TABLE EXCHANGE DEFAULT PARTITION
--
alter table sync1_ao_alter_part_exchange_default_part1 exchange default partition with table sync1_ao_alter_part_exchange_default_part1_A;
--
-- Insert few records into the table
--
insert into sync1_ao_alter_part_exchange_default_part1 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part1_A values ( generate_series(1,10),generate_series(21,30));
--
-- select from the Table
--
select count(*) from sync1_ao_alter_part_exchange_default_part1;

--
-- ALTER PARTITION TABLE EXCHANGE DEFAULT PARTITION 
--
alter table sync1_ao_alter_part_exchange_default_part1 exchange default partition with table sync1_ao_alter_part_exchange_default_part1_A with validation;
--
-- Insert few records into the table
--

insert into sync1_ao_alter_part_exchange_default_part1 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part1_A values ( generate_series(1,10),generate_series(21,30));
--
-- select from the Table
--
select count(*) from sync1_ao_alter_part_exchange_default_part1;

--
-- ALTER PARTITION TABLE EXCHANGE DEFAULT PARTITION
--
alter table sync1_ao_alter_part_exchange_default_part1 exchange default partition with table sync1_ao_alter_part_exchange_default_part1_A without validation;

--
-- Insert few records into the table
--

insert into sync1_ao_alter_part_exchange_default_part1 values ( generate_series(5,50),generate_series(15,60));
insert into sync1_ao_alter_part_exchange_default_part1_A values ( generate_series(1,10),generate_series(21,30));

--
-- select from the Table
--
select count(*) from sync1_ao_alter_part_exchange_default_part1;

