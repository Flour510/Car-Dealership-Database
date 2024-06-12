DROP DATABASE IF EXISTS car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;

CREATE TABLE dealerships (
	dealership_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50),
	address VARCHAR(50),
	phone VARCHAR(12)
);
INSERT INTO dealerships (name, address, phone)
VALUES ('Flower Power Motors', '444 East Oakland', '510-444-4444');

CREATE TABLE vehicles (
	vin INT PRIMARY KEY,
	make VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	color VARCHAR(20) NOT NULL,
	price DECIMAL(7,2) NOT NULL,
	sold BOOLEAN NOT NULL
);
INSERT INTO vehicles
VALUES (123, 'Volkswagen', 'Beetle', 'Pink', 3000, true);

CREATE TABLE inventory (
	dealership_id INT,
	vin INT,
    PRIMARY KEY (dealership_id, vin),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)    
);
INSERT INTO inventory
VALUES (1, 123);

CREATE TABLE sales_contract (
	id INT AUTO_INCREMENT PRIMARY KEY,
    vin INT,
    customer_name VARCHAR(20),
    dealership_id INT,
    sale_date DATE,
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
	FOREIGN KEY (vin) REFERENCES vehicles(vin) 
);
INSERT INTO sales_contract (vin, customer_name, dealership_id, sale_date)
VALUES (123, 'Joe', 1, '2024-01-01');




