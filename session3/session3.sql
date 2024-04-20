create table testtable (
 id int identity(1,1),
 fname nvarchar(255),
 created_at datetime2
)



insert into testtable (fname, created_at) values ('test', GETDATE());
insert into testtable (fname, created_at) values ('name', GETDATE());
insert into testtable (fname, created_at) values ('name2', GETDATE());
insert into testtable (fname, created_at) values ('name3', GETDATE());
insert into testtable (fname, created_at) values ('aaaaa', GETDATE());
insert into testtable (fname, created_at) values ('bbbb', GETDATE());
insert into testtable (fname, created_at) values (N'علی', GETDATE());

select * from testtable;

alter table testtable
add email nvarchar(20) not null
default 'sample@sample.com'

select * from testtable
order by created_at asc

select * from testtable
where id > 4

select * from testtable
where id <> 4

select * from testtable
where id between 4 and 6

select * from testtable
where id >= 4 and id <=6

select * from testtable
order by fname desc


select * from testtable
where fname = 'name3 '

select * from testtable
where fname = N'علی'

select top 3 * from testtable
where fname like 'name%'


select * from testtable
where fname like 'n____'

alter table testtable
add lname nvarchar(20)


select id, CONCAT(fname, ' ', lname), created_at from testtable
where lname is not null