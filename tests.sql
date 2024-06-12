-- Tests

-- Test 1
SELECT *  
FROM dealerships
;

-- Test 2
SELECT v.* 
FROM vehicles v 
JOIN inventory i ON v.vin = i.vin
WHERE i.dealership_id = (SELECT dealership_id FROM dealerships WHERE NAME = 'Flower Power Motors') 
; -- sub query 

-- Test 3
SELECT * 
FROM vehicles 
WHERE vin = 123
;

-- Test 4
SELECT * 
FROM dealerships 
WHERE dealership_id = (SELECT dealership_id FROM inventory WHERE vin = 123)
;

-- Test 5
SELECT * 
FROM dealerships 
WHERE dealership_id IN (SELECT dealership_id FROM vehicles WHERE make = 'volkswagen')
;

-- Test 6 
SELECT * 
FROM sales_contract WHERE dealership_id = (SELECT dealership_id FROM dealerships WHERE dealership = 'Flower Power Motors')
AND sale_date BETWEEN '2024-01-01'
AND '2023-01-01'
;