use ms2_db;


DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    userid int auto_increment primary key,
    email varchar(255) unique NOT NULL ,
    `password` varchar(255) NOT NULL ,
    username varchar(255) default 'Badminton Player',
    sex	ENUM('Female', 'Male', 'Others'),
    birthday DATE,
    preference ENUM('Double', 'Single'),
    credits	int default 100
);

INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test5@test.com', '123456', 'panda', 'female', '2014-01-01', '90');
INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test4@test.com', '123456', 'zebra', 'female', '2014-01-01', '60');
INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test3@test.com', '123456', 'orange', 'female', '2015-01-01', '0');
INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test2@test.com', '123456', 'apple', 'male', '2017-01-01', '40');
INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test1@test.com', '123456', 'banana', 'male', '2022-01-01', '100');
INSERT INTO users (email, password, username, sex, birthday, credits ) VALUES ('test@test.com', '123456', 'mushroom', 'male', '2021-01-01', '100');
INSERT INTO users (email, password, username, sex, birthday) VALUES ('test6@test.com', '123456', 'panda', 'female', '2010-01-01');

SELECT * FROM users;
