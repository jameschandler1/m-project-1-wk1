-- Database setup script
-- Run this to create database and initial data

CREATE DATABASE IF NOT EXISTS hello_world_db;
USE hello_world_db;

CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  message VARCHAR(255) NOT NULL
);

-- Insert hello world message
INSERT INTO messages (message) VALUES ('Hello, World!')
ON DUPLICATE KEY UPDATE message = 'Hello, World!';

-- Create application user (not root for security)
CREATE USER IF NOT EXISTS 'app_user'@'localhost' IDENTIFIED BY 'app_password123';
GRANT ALL PRIVILEGES ON hello_world_db.* TO 'app_user'@'localhost';
FLUSH PRIVILEGES;