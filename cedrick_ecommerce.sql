 USE ecommerce;
 
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