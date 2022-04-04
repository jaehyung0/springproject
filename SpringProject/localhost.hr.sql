insert into tblfeectg values (1,'선불');

select * from tbladultctg;
insert into tbladultctg values (1,'학생');

insert into tblmethod values (1,'공통');

insert into tblfee values (1,'학생천원가격','60','1000',1,1,1);

drop table tblscom;

create table tblScom (
    scom_seq number primary key,
    scom_name varchar2(100) not null,
    scom_tel varchar2(100) not null    
);

alter table tblpurchase add purchase_time date default sysdate not null;

drop table tblboard;

create table tblboard(
    borad_seq number primary key,
    board_content varchar2(300) not null
);

drop table tblWorker;

create table tblWorker(
    worker_seq number primary key,
    work_name varchar2(100) not null,
    worker_time varchar2(30) not null,
    worker_pay number not null,
    worker_account varchar2(100) not null,
    worker_pic varchar2(100) not null    
);

create table tblDay(
    day_seq number primary key,
    day varchar2(9) not null
);

insert into tblDay values (1,'월');

create table tblDaywork(
    day_seq references tblDay(day_seq),
    worker_seq REFERENCES tblworker(worker_seq)
);

select * from tblworkworker;

insert into tblpartscategory values (1,'마우스');

insert into tblpc values (1,'PC1');

commit;

select worker_seq as seq, work_name as name from tblworker;

create or replace view vwWorkplan as
select tw.work_name as name, tw.worker_time as time, td.day as day,td.day_seq as seq from tblWorker tw inner join tblDaywork tdw on tw.worker_seq = tdw.worker_seq
inner join tblDay td on td.day_seq=tdw.day_seq;

select * from vwWorkplan where day='화';

select * from tblday;
update  tblday set day='토' where day_seq=7;

select * from tblboard;

alter table tblboard rename column borad_seq to board_seq;

select * from tblpurchase;



alter table tblpayment rename column key3 to fee_seq;
alter table tblpayment add(payment_time date default sysdate);

create or replace view vwFee as
select tm.member_name as name, tp.payment_time as time, tf.fee_price as price from tblMember tm inner join tblpayment tp on tm.member_id=tp.member_id
inner join tblFee tf on tp.fee_seq = tf.fee_seq;

select tm.member_name as name, tp.payment_time as time, tf.fee_price as price from tblMember tm inner join tblpayment tp on tm.member_id=tp.member_id
inner join tblFee tf on tp.fee_seq = tf.fee_seq;


select * from vwFee;
select count(distinct(name)) from vwFee where time like '%22/02/16%'; --오늘 온 인원
select distinct(name) from vwFee where time like '%22/02/16%'; --오늘 온 인원


select * from vwFee where time like '%22/02/16%';
select * from vwFee where time like '%21/12/24%';
select sum(price) from vwFee where time like '%21/12/24%';

create or replace view vwFsales as
select ts.stock_name as name,ts.stock_price as price,tp.purchase_time as time from tblstock ts inner join tblMenu tm on ts.stock_seq=tm.stock_seq
inner join tblPurchase tp on tp.menu_seq = tm.menu_seq;

select * from vwFsales order by time asc;
select sum(price) from vwFsales where time like '%22/02/16%' ;

select ((select sum(price) from vwFee where time like '%22/02/16%')+(select sum(price) from vwFsales where time like '%22/02/16%' )) as totalsales from dual;

select * from tblpayment order by payment_time;

select (select count(payment_time) from tblpayment where payment_time between to_date('"2022-02-17"|| 00:00:00','yyyy-mm-dd hh24:mi:ss') 
and to_date("'2022-02-17"|| 01:59:59','yyyy-mm-dd hh24:mi:ss')) from dual;

select count(payment_time) from tblpayment where payment_time