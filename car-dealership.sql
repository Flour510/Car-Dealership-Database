DROP DATABASE IF EXISTS car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;

-- Note from Tiffany
-- CREATE TABLE Persons (
-- Personid int NOT NULL AUTO_INCREMENT,
-- LastName varchar(255) NOT NULL,
-- FirstName varchar(255),
-- Age int,
-- PRIMARY KEY (Personid)
-- );

CREATE TABLE dealerships (
	dealership_id int auto_increment primary key,
	name varchar(50),
	address varchar(50),
	phone varchar(12)
);
INSERT INTO dealerships (name, address, phone)
VALUES ('Flower Power Motors', '444 East Oakland', '510-444-4444');

CREATE TABLE vehicles (
	vin int primary key,
	make varchar(20) NOT NULL,
	model varchar(20) NOT NULL,
	color varchar(20) NOT NULL,
	price decimal(7,2) NOT NULL,
	sold boolean NOT NULL
);
INSERT INTO vehicles
VALUES (123, 'volkswagen', 'beetle', 'pink', 3000, true);

-- Insert into the table we created 
-- Insert into dealerships(default,'Hello','Testing','New table');
-- Left off here with Tiffany

CREATE TABLE inventory (
	dealership_id INT,
	vin INT,
    primary KEY (dealership_id, vin),
    foreign KEY (dealership_id) REFERENCES dealerships(dealership_id),
    foreign KEY (vin) REFERENCES vehicles(vin)    
);
INSERT INTO inventory
VALUES (1, 123);

CREATE TABLE sales_contracts (
	id int auto_increment primary key, 
    vin int,
    customer_name varchar(20),
    dealership_id int,
    sale_date DATE,
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
	FOREIGN KEY (vin) REFERENCES vehicles(vin) 
);
INSERT INTO sales_contracts (vin, customer_name, dealership_id, sale_date)
VALUES (123, 'Joe', 1, '2024-01-01');




