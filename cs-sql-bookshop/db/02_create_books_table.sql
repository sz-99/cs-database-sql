USE MyBookshop;
GO

DROP TABLE IF EXISTS Genres
DROP TABLE IF EXISTS Books
-- create the Books table here
CREATE TABLE Books(
    BookId INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    PriceInPence INT NOT NULL,
    Quantity INT NOT NULL,
    ReleaseDate DATE NOT NULL,
    IsFiction BIT NOT NULL
);
GO

ALTER TABLE Books
ADD DiscountApplied BIT DEFAULT 0;
GO