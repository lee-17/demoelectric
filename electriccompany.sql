CREATE DATABASE IF NOT EXISTS electriccompany CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE electriccompany;

CREATE TABLE IF NOT EXISTS users (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(20) NULL,
  address TEXT NULL,
  city VARCHAR(100) NULL,
  state VARCHAR(50) NULL,
  zip_code VARCHAR(10) NULL,
  password VARCHAR(255) NOT NULL,
  user_type ENUM('customer', 'admin') DEFAULT 'customer',
  is_active BOOLEAN DEFAULT TRUE,
  email_verified BOOLEAN DEFAULT FALSE,
  created_at DATETIME NULL,
  updated_at DATETIME NULL
);
