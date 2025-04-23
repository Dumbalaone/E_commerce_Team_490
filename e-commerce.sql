-- philip's code --
-- Table to store product image information
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Table to manage available color options
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50) NOT NULL
);

-- Table to classify products into categories
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Table to store general product details
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand_id INT,
    base_price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Insert sample data for product categories
INSERT INTO product_category (category_name) VALUES 
('Clothing'),
('Electronics'),
('Home & Kitchen'),
('Books'),
('Toys');

-- Insert sample data for colors
INSERT INTO color (color_name) VALUES 
('Red'),
('Blue'),
('Green'),
('Black'),
('White');

-- Insert sample data for products
INSERT INTO product (name, brand_id, base_price, category_id) VALUES
('T-Shirt', 1, 9.99, 1),
('Smartphone', 2, 699.99, 2),
('Microwave Oven', 3, 89.99, 3),
('Novel: Mystery Edition', 4, 14.99, 4),
('Building Blocks Toy Set', 5, 29.99, 5);

-- Insert sample data for product images
INSERT INTO product_image (image_url, product_id) VALUES
('https://images.pexels.com/photos/2294342/pexels-photo-2294342.jpeg?auto=compress&cs=tinysrgb&w=600', 1),
('https://images.pexels.com/photos/1092644/pexels-photo-1092644.jpeg?auto=compress&cs=tinysrgb&w=600', 2),
('https://images.pexels.com/photos/4686822/pexels-photo-4686822.jpeg?auto=compress&cs=tinysrgb&w=600', 3),
('https://images.pexels.com/photos/207636/pexels-photo-207636.jpeg?auto=compress&cs=tinysrgb&w=600', 4),
('https://images.pexels.com/photos/7269674/pexels-photo-7269674.jpeg?auto=compress&cs=tinysrgb&w=600', 5);