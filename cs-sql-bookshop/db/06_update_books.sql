USE MyBookshop;
GO


PRINT 'These books have been put on sale, due to excess stock:'
UPDATE Books 
SET PriceInPence = PriceInPence * 0.9, DiscountApplied = 1
WHERE Quantity > 10 AND DiscountApplied = 0;


SELECT * 
FROM Books; 
GO


