USE MyBookshop;
GO

DROP TABLE IF EXISTS Reviews;

CREATE TABLE Reviews(
    ReviewId INT IDENTITY(1,1) PRIMARY KEY,
    BookId INT FOREIGN KEY REFERENCES Books(BookId),
    Rating INT NOT NULL
);

INSERT INTO Reviews(BookId, Rating)
VALUES
(1, 4),
(1, 9),
(1, 8),
(3, 9),
(3, 7),
(4, 3),
(5, 8);
SELECT * FROM Reviews;

PRINT 'All reviews of a Book';
SELECT Books.Title AS Books,
STRING_AGG(Reviews.Rating, ',')
FROM Books
INNER JOIN Reviews ON Books.BookId = Reviews.BookId
GROUP BY Books.Title;

PRINT 'Average Rating of Books';
SELECT AVG(Reviews.Rating) AS AverageRating, Books.Title
FROM Reviews
INNER JOIN Books ON Reviews.BookId = Books.BookId
GROUP BY Books.Title;

PRINT 'Highest and Lowest Rating of a book';
SELECT MIN(Reviews.Rating) as Lowest, MAX(Reviews.Rating) as Highest, Books.Title
FROM Reviews
INNER JOIN Books ON Reviews.BookId = Books.BookId
GROUP BY Books.Title;

PRINT 'List all books above a certain rating'
SELECT Books.Title, Reviews.Rating
FROM Books
INNER JOIN Reviews ON Reviews.BookId = Books.BookId
WHERE Reviews.Rating > 7;