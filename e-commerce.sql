USE ecommerce;
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


-- Cedrick's code --
 CREATE TABLE product_item(
	 item_id INT AUTO_INCREMENT PRIMARY KEY,
	 product_id INT,
	 color_id INT,
	 size_option_id INT,
	 variation_price DECIMAL(10, 2),
	 quantity_available INT,
	 FOREIGN KEY (product_id) REFERENCES product(product_id),
	 FOREIGN KEY (color_id) REFERENCES color(color_id),
	 FOREIGN KEY (size_option_id) REFERENCES size_option(option_id)
 ); 
 
 CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL,
    brand_description TEXT
);

CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    item_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (item_id) REFERENCES product_item(item_id)
);

CREATE TABLE size_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);
-- rest of the code --
CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_label VARCHAR(20) NOT NULL,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_type_id INT,
    value VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT,
    type_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES attribute_category(attribute_category_id)
);

-- Size Options
INSERT INTO size_option (size_category_id, size_label) VALUES 
(1, 'S'),
(1, 'M'),
(1, 'L'),
(2, '42'),
(2, '43');

-- Attribute Categories
INSERT INTO attribute_category (category_name) VALUES 
('Physical'),
('Technical');

-- Attribute Types
INSERT INTO attribute_type (category_id, type_name) VALUES 
(1, 'Material'),
(1, 'Weight'),
(2, 'Battery Life'),
(2, 'Processor');

-- Product Attributes
INSERT INTO product_attribute (product_id, attribute_type_id, value) VALUES 
(1, 1, 'Cotton'),
(1, 2, '200g'),
(2, 3, '24 hours'),
(2, 4, 'Quad-Core'),
(3, 1, 'Steel');
