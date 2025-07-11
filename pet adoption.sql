CREATE TABLE pet (
  pet_id INT PRIMARY KEY DEFAULT pet_seq.NEXTVAL,
  description VARCHAR2(300),
  age INT,
  health_status VARCHAR2(10),
  vaccinated VARCHAR2(3),
  date_registered DATE,
  shelter_id INT,
  pet_owner_id INT unique
);


drop table pet;

create table pet_type(
	pet_id int primary key,
	pet_type varchar(50),
	pet_breed varchar(50),
    foreign key (pet_id) REFERENCES pet(pet_id)
);

drop table pet_type;

create table pet_shelter(
	shelter_id int primary key,
	fullname varchar(100),
	address varchar(200),
	phone_number varchar(20),
	email varchar(100),
    pet_id int
);
drop table pet_shelter;
create table pet_owner(
	pet_owner_id int primary key,
    pet_id int,
	name varchar(100),
	contact varchar(50),
	username varchar(50),
	password varchar(50),
    foreign key (pet_id) REFERENCES pet(pet_id)
);

create table pet_staff(
	staff_id int primary key,
	staff_name varchar(100),
	roles varchar(50),
	hire_date date,
	shelter_id int,
    foreign key (shelter_id) REFERENCES pet_shelter(shelter_id)
);

alter table pet add foreign key (pet_owner_id) REFERENCES pet_owner (pet_owner_id);

CREATE SEQUENCE pet_seq
START WITH 1
INCREMENT BY 1;

ALTER TABLE pet
MODIFY pet_id DEFAULT pet_seq.NEXTVAL;

-- Data Input for pet table --
INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'good cat, shy but cause chaos', 2, 'Sick', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'not a friendly cat, shy but affectionate', 3, 'Healthy', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'good dog, shy but cause chaos', 2, 'Healthy', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'not a friendly dog, shy but affectionate', 4, 'Healthy', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'good cat, shy but cause chaos', 5, 'Sick', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'not a friendly cat, shy but affectionate', 7, 'Sick', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'good dog, shy but cause chaos', 1, 'Healthy', 'NO',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'not a friendly dog, shy but affectionate', 4, 'Healthy', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );


INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'good cat, shy but cause chaos', 5, 'Sick', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );

INSERT INTO pet (
  description, age, health_status, vaccinated, date_registered, shelter_id, pet_owner_id ) VALUES (
  'not a friendly cat, shy but affectionate', 7, 'Healthy', 'Yes',
  TO_DATE('2025-07-11', 'YYYY-MM-DD'), 111, NULL );