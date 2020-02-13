CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
 name VARCHAR(30),
 email varchar(40)
);

INSERT INTO users 
(name, email)
VALUES
('Johnny', 'johnyjohn@john.com'),
('Alex', 'Alex@alex.com'),
('Pablo', 'pablocito@pablo.com')

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  price INT
  );

INSERT INTO products 
(name, price)
VALUES
('Apple', 2.50),
('Orange', 3.25),
('Strawberry', 4.50);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  product_id INT REFERENCES products(product_id));

INSERT INTO orders
(product_id)
VALUES
(1),
(2),
(3);

SELECT * FROM users;
SELECT * FROM products;
SELECT * FROM orders;
 
SELECT * FROM products
WHERE product_id IN (SELECT product_id FROM orders WHERE order_id = 1);

  SELECT SUM(price) AS total
  FROM products WHERE product_id IN (SELECT product_id FROM orders WHERE order_id = 1);

ALTER TABLE orders
ADD COLUMN user_id INT REFERENCES users(user_id);
 
UPDATE orders
SET user_id = 1
WHERE order_id = 1;

UPDATE orders
SET user_id = 3
WHERE order_id = 1;

UPDATE orders
SET user_id = 2
WHERE order_id = 3;

-- SELECT * FROM orders
-- WHERE order_id IN ( SELECT order_id FROM users WHERE user_id = 1);