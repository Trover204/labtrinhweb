
-- Table: users
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_pass VARCHAR(255) NOT NULL,
    updated_at DATETIME,
    created_at DATETIME
);

-- Table: products
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_price DOUBLE NOT NULL,
    product_description TEXT,
    updated_at DATETIME,
    created_at DATETIME
);

-- Table: orders
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    updated_at DATETIME,
    created_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Table: order_details
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    updated_at DATETIME,
    created_at DATETIME,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO users (user_name, user_email, user_pass, created_at) VALUES
('Nguyen Van A', 'vana@gmail.com', '123456', NOW()),
('Tran Thi B', 'thib@yahoo.com', '123456', NOW()),
('Le Van C', 'vanc@gmail.com', '123456', NOW()),
('Pham Thi D', 'thid@gmail.com', '123456', NOW()),
('Hoang Van E', 'vane@hotmail.com', '123456', NOW());
INSERT INTO products (product_name, product_price, product_description, created_at) VALUES
('iPhone 14', 20000000, 'Apple smartphone', NOW()),
('Samsung S23', 18000000, 'Samsung smartphone', NOW()),
('MacBook Pro', 35000000, 'Apple laptop', NOW()),
('Dell XPS', 30000000, 'Dell laptop', NOW()),
('AirPods Pro', 5000000, 'Apple earphones', NOW());
INSERT INTO orders (user_id, created_at) VALUES
(1, NOW()),
(2, NOW()),
(3, NOW()),
(1, NOW());
INSERT INTO order_details (order_id, product_id, created_at) VALUES
(1, 1, NOW()),
(1, 5, NOW()),
(2, 2, NOW()),
(3, 3, NOW()),
(4, 4, NOW()),
(4, 2, NOW());
