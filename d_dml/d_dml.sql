### d_dml >>>> d_dml ###

# cf) ddl (definition 정의) - DB 정의 언어
# : CREATE(생성), ALTER(수정), DROP(삭제), TRUNCATE(데이터 삭제)

### DML(Data Mainpulation Language) - ###
# : 데이터 조작(관리) 언어
# - 데이터를 삽입, 조회, 수정, 삭제(CRUD)

CREATE DATABASE IF NOT EXISTS `company`;
USE `company`;

CREATE TABLE `example01` (
	name varchar(100),
    age int,
    major varchar(100)
);

/*
	1. 데이터 삽입 (insert)
    : 테이블 행 데이터(레코드)를 입력
    
    # 기본 형식 #
    insert into 테이블명 (열1, 열2, ... )
	values (값1, 값2, ... );
    
    cf) 테이블명 뒤 열 이름의 나열을 생략할 경우
		: values 뒤의 값 순서는 테이블 정의 시 작성한 열의 순서 & 개수와 동일 
        >> name(문자), age(숫자), major(문자) 순
        
    cf) 전체 테이블의 컬럼 순서 & 개수와 차이가 나는 경우 반드시! 원하고자하는 열 이름 나열!    
*/

# 1) 컬럼명 지정 X
insert into `example01`
values
	('오신혁',20,'IT');
    
-- insert into `example01`
-- values
--    ('박진영',25); 
# > major 값 누락 오류!

-- insert into `example1`
-- values
-- ('박진영','cooking',30);
# > 컬럼 정렬 순에 맞지 않는 오류!

# 2) 컬럼명 지정 o
insert into `example01` (major, name)
values
	('Health','손태경');
    
# 데이터 삽입 시 NULL 허용 컬럼에 값 입력이 이루어지지 않은 경우
# : 자동으로 NULL값 지정(삽입)

# cf) "auto_increment"
# : 열을 정의할 때 1부터 1씩 증가하는 값을 입력
# - insert에서는 해당 열이 없다고 가정하고 입력
# - 해당 옵션이 지정된 컬럼은 반드시! PK값으로 지정! (하나의 테이블에 한 번만 지정 가능!)
create table `example02` (
	# 컬럼명 데이터타입 [primary key] [auto_increment]/ 옵션 순서 상관 없음
    id bigint auto_increment primary key,
    name varchar(50)
);

insert into `example02`(name)
values
	('최광섭'),
    ('정은혜'),
    ('정지훈');
   





