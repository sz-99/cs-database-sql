IF EXISTS (SELECT MyBookShop FROM sys.databases WHERE name = 'MyBookShop')
BEGIN
DROP DATABASE MyBookshop;
END;

CREATE DATABASE MyBookShop;
GO-- create your database here