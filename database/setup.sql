-- Create database
CREATE DATABASE IF NOT EXISTS hello_world_db;

-- Use the database
USE hello_world_db;

-- Create table
CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  message VARCHAR(255) NOT NULL
);

-- Insert hello world message
INSERT INTO messages (message) VALUES ('Hello, World!');

CREATE USER IF NOT EXISTS 'root'@'localhost' IDENTIFIED BY 'my_new_pass';
GRANT ALL PRIVILEGES ON hello_world_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;