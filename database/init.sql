-- Create database
CREATE DATABASE IF NOT EXISTS hello_world_db;

-- Use the database
USE hello_world_db;

-- Create messages table
CREATE TABLE IF NOT EXISTS messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  message VARCHAR(255) NOT NULL
);

-- Insert initial message
INSERT INTO messages (message) VALUES ('Hello, World!');
