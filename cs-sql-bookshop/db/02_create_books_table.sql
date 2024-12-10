USE MyBookshop;
GO

-- create the Books table here
CREATE TABLE Books(
    BookId int PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    PriceInPence int NOT NULL,
    Quantity int NOT NULL,
    ReleaseDate DATE NOT NULL,
    IsFiction BIT NOT NULL
);
GO