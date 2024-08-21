-- init.sql
-- Create a new database
CREATE DATABASE IF NOT EXISTS cocolabhub;

-- Use the created database
USE cocolabhub;

-- Create a new table
CREATE TABLE IF NOT EXISTS TableName (
    pk_id INT AUTO_INCREMENT PRIMARY KEY,
    column1 VARCHAR(255),
    column2 VARCHAR(255)
);

-- Insert values into the table
INSERT INTO TableName (column1, column2) VALUES ('value1', 'value2');
