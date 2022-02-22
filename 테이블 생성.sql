##데이터베이스 생성
create database visitors;

show databases;

use visitors;

##테이블 생성
create table age ( date DATE, nation VARCHAR(30), visitor INT, growth FLOAT(30,20), share FLOAT(30,20), age20 INT, age30 INT, age40 INT, age50 INT, age60 INT, age61 INT) ;
create table gender ( date DATE, nation VARCHAR(30), visitor INT, growth FLOAT(30,20), share FLOAT(30,20), male INT, female INT, crewman INT);
create table purpose ( date DATE, nation VARCHAR(30), visitor INT, growth FLOAT(30,20), share FLOAT(30,20), tourism INT,business INT, official_affairs INT, studying INT, others INT);
create table nation ( nation VARCHAR(30), nation_code INT, PRIMARY KEY(nation_code));

##생성 확인 
show columns from age;
show columns from gender;
show columns from purpose;
show columns from nation;

select * from age;
select * from gender;
select * from purpose;
select * from nation;

##커밋
commit;

#테이블 재생성을 위한 삭제 
drop table age;
drop table purpose;
drop table gender;
drop table nation;


#테이블 재생성 
create table age ( id INT, age20 INT, age30 INT, age40 INT, age50 INT, age60 INT, age61 INT, nation_id INT, PRIMARY KEY(id)) ;
create table purpose ( id INT, tourism INT,business INT, official_affairs INT, studying INT, others INT, nation_id INT, PRIMARY KEY(id));
create table gender ( id INT  PRIMARY KEY, male INT, female INT, crewman INT, nation_id INT);
create table nations ( id INT, date DATE, year INT, month INT, nation VARCHAR(100), visitor INT, growth FLOAT(30,20), share FLOAT(30,20), PRIMARY KEY(id));
ALTER TABLE nations RENAME nation;

#외래키 지정
alter table age add foreign key(nation_id) references nations(id);
alter table purpose add foreign key(nation_id) references nations(id);
alter table gender add foreign key(nation_id) references nations(id);

# 재생성 확인
show tables from visitors;
show columns from age;
show columns from purpose;
show columns from gender;
show columns from nation;

select * from age;
select * from purpose;
select * from gender;
select * from nation;

commit;

