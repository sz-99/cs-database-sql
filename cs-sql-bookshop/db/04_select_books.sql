USE MyBookshop;
GO

PRINT 'Here are all the books that we have in stock:';
SELECT Title, Quantity
FROM Books
WHERE Quantity > 0
GO

PRINT 'Here are all the non-fiction books:';
SELECT Title, IsFiction
FROM Books
WHERE IsFiction = 0


PRINT 'Here are all the books released in the 1900s:';
SELECT Title, ReleaseDate
FROM Books
WHERE ReleaseDate 
BETWEEN '1900-01-01' AND '1999-12-31'


PRINT 'Here are all the books with "The" in the title:';
SELECT Title
FROM Books
WHERE Title LIKE '%The%'


PRINT 'Here are the books sorted in alphabetical order:';
SELECT Title, PriceInPence
FROM Books
ORDER BY Title 


PRINT 'Here is the most expensive book:';
SELECT Title, PriceInPence
FROM Books
WHERE PriceInPence = (SELECT Max(PriceInPence) FROM BOOKS);
