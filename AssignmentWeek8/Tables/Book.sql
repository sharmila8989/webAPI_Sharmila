﻿CREATE TABLE [dbo].[Book]
(
	[BookTitle] NVARCHAR(50) NOT NULL, 
    [BookYear] INT NOT NULL, 
    [ISBN] INT NOT NULL,
	[StudentId] INT NULL,
	[AuthorID] INT NOT NULL,
	CONSTRAINT PK_BOOK PRIMARY KEY (ISBN),
	CONSTRAINT FK_BOOK_STUDENT FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
	CONSTRAINT FK_BOOK_AUTHOR FOREIGN KEY (AuthorID) REFERENCES Author (AuthorID)
	
)
