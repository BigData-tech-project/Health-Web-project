CREATE TABLE userinfo(
id VARCHAR(25) PRIMARY KEY not null,
pw VARCHAR(25) not null,
name VARCHAR(25) not null,
gender VARCHAR(50) not null,
age INT not null
);

SELECT * FROM userinfo;

INSERT INTO userinfo (id, pw, name, gender, age) VALUES 
   ('lEE', '1234', '�̰ǿ�', 'Male', 20),
   ('Cheon', '5678', 'õ����', 'Male', 21),
   ('Yoo', '91011', '������', 'Male', 22),
   ('Jung', '010210', '������', 'Female', 23);