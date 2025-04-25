# E_commerce_Team_490

# E-Commerce Database Schema

This repository contains the SQL scripts for the E-Commerce database schema designed by Team 490. The schema is structured to support an e-commerce platform with features such as product management, brand categorization, color options, size variations, and more.

## The ERD 
![alt text](<ecommerce ERD.drawio-1.png>)

## Database Structure

The database includes the following tables:

### 1. `product_item`
- Stores individual product items with attributes such as color, size, price variations, and available quantity.

### 2. `brand`
- Stores information about product brands.

### 3. `product_variation`
- Links products to their variations (e.g., different sizes or colors).

### 4. `size_category`
- Stores size categories for products (e.g., Small, Medium, Large).

### 5. `product_image`
- Stores URLs for product images.

### 6. `color`
- Stores available color options for products.

### 7. `product_category`
- Categorizes products into groups (e.g., Clothing, Electronics).

### 8. `product`
- Stores general product details such as name, brand, price, and category.

## Sample Data

The schema includes sample data for:
- Product categories
- Colors
- Products
- Product images

## How to Use

1. Create a database named `ecommerce`:
   ```sql
   CREATE DATABASE ecommerce.sql;
   USE ecommerce;
2. Run the SQL script ecommerce.sql to create the tables and insert sample data:

3. Verify the database structure and data using SQL queries.

## Contributors
. Cedrick
. Philip
. Team 490

## License
This project is for educational purposes and is not licensed for commercial use.