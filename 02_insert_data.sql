INSERT INTO customers (name, email, city, signup_date) VALUES
('Alice Johnson', 'alice@example.com', 'New York', '2023-01-15'),
('Bob Smith', 'bob@example.com', 'Los Angeles', '2023-02-20'),
('Carol Davis', 'carol@example.com', 'Chicago', '2023-03-10'),
('David Wilson', 'david@example.com', 'Miami', '2023-04-05');

INSERT INTO products (name, price) VALUES
('Laptop', 999.99),
('Smartphone', 699.99),
('Headphones', 149.99),
('Tablet', 399.99);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-05-01'),
(2, '2023-05-02'),
(3, '2023-05-03'),
(4, '2023-05-04');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),  
(1, 3, 2),  
(2, 2, 1),  
(3, 4, 1),
(3, 3, 1), 
(4, 1, 1); 
