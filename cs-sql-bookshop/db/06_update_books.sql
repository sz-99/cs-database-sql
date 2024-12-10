USE MyBookshop;
GO


PRINT 'These books have been put on sale, due to excess stock:'
UPDATE Books 
SET PriceInPence = PriceInPence * 0.9
WHERE Quantity > 10;


SELECT * 
FROM Books; 
GO


