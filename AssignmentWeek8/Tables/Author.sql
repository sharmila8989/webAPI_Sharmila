CREATE TABLE [dbo].[Author]
(
	[AuthorID] INT NOT NULL,
    [AuthorFirstname] NVARCHAR(50) NOT NULL, 
    [AuthorLastname] NVARCHAR(50) NOT NULL, 
    [AuthorTFN] INT NOT NULL,
	CONSTRAINT PK_AUTHOR PRIMARY KEY (AuthorID)
)
