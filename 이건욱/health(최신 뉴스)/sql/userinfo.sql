CREATE TABLE userinfo(
id VARCHAR(25) PRIMARY KEY not null,
pw VARCHAR(25) not null,
name VARCHAR(25) not null,
gender VARCHAR(50) not null,
age INT not null
);

SELECT * FROM userinfo;

INSERT INTO userinfo (id, pw, name, gender, age) VALUES 
   ('lEE', '1234', '이건욱', 'Male', 20),
   ('Cheon', '5678', '천예준', 'Male', 21),
   ('Yoo', '91011', '유현진', 'Male', 22),
   ('Jung', '010210', '정수현', 'Female', 23);