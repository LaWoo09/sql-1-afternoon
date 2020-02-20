
-- .1
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    height INT,
    city VARCHAR(20),
    favorite_color VARCHAR(20)

);
--.2
INSERT INTO person (name, age, height, city, favorite_color) VALUES ('John Jacob', 19, 234, 'MoTown', 'Gold'), 
('Man Kind', 32, 245, 'Gobugu', 'Dark Green'), 
('Mark Pamper', 22, 220, 'UglyVille', 'Brown'), 
('Zorro Escobar', 30, 267, 'Gigantum', 'Bronze'), 
('Sue Sue', 18, 200, 'Ninjago', 'Red');
--.3
SELECT * FROM person 
ORDER BY height;
--.4
SELECT * FROM person 
ORDER BY height DESC;
--.5
SELECT * FROM person 
ORDER BY age DESC;
--.6
SELECT * FROM person 
WHERE age > 20;
--.7
SELECT * FROM person 
WHERE age = 18;
 --.8
SELECT * FROM person 
WHERE age > 20 AND age < 30;
--.9
SELECT * FROM person
WHERE age != 27;
--.10
SELECT * FROM person 
WHERE favorite_color != 'Red';
--.11
SELECT * FROM person 
WHERE favorite_color != 'Red' AND favorie_color != "Blue";
--.12
SELECT * FROM person 
WHERE favorie_color = 'Green' OR favorie_color = 'Orange';
--.13
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );
--.14
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' );





CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    product_price NUMERIC,
    quantity INT,
    person_id INT
);


INSERT INTO orders (product_name, product_price, quantity, person_id) VALUES('TV', 100.99, 2, 4), ('Laptop', 299.99, 1, 4),('IPhone', 799.99, 2, 4), ('Chritsmas Tree', 139.99, 2, 2), ('XL Christmas Light', 39.99, 4, 4);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 4;






INSERT INTO artist (name) VALUES ('Adrian Omega'),('10 TOES MARVIN'),('Samantha Portsworth');

SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name LIMIT 5;

SELECT * FROM artist
WHERE name 'Black%'

SELECT * FROM artist
WHERE name '%Black%'




SELECT first_name, last_name FROM employees 
WHERE city = 'Calgary';

SELECT MAX(birth_date) from employee;

SELECT MIN(birth_date) from employee;

SELECT * FROM employee 
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'





SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT COUNT(*) FROM invoice 
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;