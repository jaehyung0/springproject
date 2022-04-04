create table tblAddress(
    seq number primary key,
    name varchar2(30) not null,
    age number not null,
    tel varchar2(15) not null,
    address varchar2(100) not null
);

insert into tblAddress (seq,name,age,tel,address) values (seqAddress.nextVal,'홍길동',20,'010-9208-5050','서울시 성북구 돈암동');
select * from tblAddress;
create sequence seqAddress;

commit;