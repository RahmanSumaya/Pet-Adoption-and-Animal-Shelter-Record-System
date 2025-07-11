create table pet(
	pet_id int primary key,
	description varchar(300),
	age int,
	health_status varchar(10),
	vaccinated varchar(3),
	date_registered date,
	shelter_id int unique,
	pet_owner_id int
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