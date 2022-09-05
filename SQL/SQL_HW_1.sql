select * from students;

select id  from students;

select name from students;

select email  from students;

select "name" , email  from students;

select id, "name" , email, created_on from students;

select * from students
where "password"  = '12333';

select * from students
where created_on = '2021-03-26 00:00:00.000';

select * from students
where name like 'Anna_8';

select * from students
where name like '%_8%';

select * from students
where name like '%a%';

select * from students
where created_on = '2021-07-12 00:00:00.000';

select * from students
where created_on = '2021-07-12 00:00:00.000' and "password"  = '1m313';

select * from students
where  created_on = '2021-07-12 00:00:00.000' and "name" like 'Andrey%';

select * from students
where created_on = '2021-07-12 00:00:00.000' and "name" like '%8%';

select * from students
where id ='110';

select * from students
where id ='153';

select * from students
where id > '140';

select * from students
where id < '130';

select * from students
where id < '127' or id > '188';

select * from students
where id <= '137';

select * from students
where id >= '137';

select * from students
where id > '180' and id < '190';

select * from students
where id between '180' and '190';

select "name"  from students
where "password" in ('12333', '1m313', '123313');

select "name"  from students
where created_on in ('2020-10-03 00:00:00.000', '2021-05-19 00:00:00.000', '2021-03-26 00:00:00.000');

select min(id) from students;

select max(id) from students;

SELECT COUNT(*) as "name"  FROM students; 

select id, "name" , created_on from students
order by created_on asc ;

select id, "name" , created_on from students
order by created_on desc;




