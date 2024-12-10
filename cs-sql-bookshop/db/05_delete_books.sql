USE MyBookshop;
GO


PRINT 'These books have been removed from the data as they are out of stock:';
DELETE FROM Books
WHERE Quantity = 0
SELECT * FROM Books
Go