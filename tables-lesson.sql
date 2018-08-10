CREATE DATABASE IF NOT EXISTS tables_lesson_db;

-- migration: A program that creates a database structure

USE tables_lesson_db;
-- Create the flights table
CREATE TABLE IF NOT EXISTS flights(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
destination CHAR(3) NOT NULL,
departs CHAR(3) NOT NULL,
price FLOAT NOT NULL,
num_tickets_sold INT UNSIGNED NOT NULL,
gate_no VARCHAR (256)NOT NULL,
description TEXT,
departs_at DATETIME NOT NULL, -- '2018-08-10 14:05:55'
arrives_at DATETIME NOT NULL,
PRIMARY KEY(id)
);

-- SHOW TABLES;

-- DESCRIBE flights;

SHOW CREATE TABLE flights;