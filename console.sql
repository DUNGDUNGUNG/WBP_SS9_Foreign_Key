CREATE TABLE customers(
  id INT AUTO_INCREMENT PRIMARY KEY ,
  name VARCHAR(40),
  address VARCHAR(255),
  email VARCHAR(255)
);

SELECT * FROM customers;

CREATE TABLE orders(
  order_id INT AUTO_INCREMENT,
  staff VARCHAR(50),
  customer_id INT,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(id)
);

SELECT * FROM orders;

# CREATE TABLE orders(
#   id_order INT AUTO_INCREMENT PRIMARY KEY ,
#   staff VARCHAR(50),
#   customer_id INT REFERENCES customers(id)
# );