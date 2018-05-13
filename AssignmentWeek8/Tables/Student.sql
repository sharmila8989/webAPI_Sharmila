CREATE TABLE [dbo].[Student]
(
	[StudentId] INT NOT NULL,
	[StudentFirstname] NVARCHAR(50) NOT Null, 
    [StudentLastname] NVARCHAR(50) NOT NULL, 
    [StudentEmail] NVARCHAR(50) NOT NULL, 
    [StudentPhoneNumber] INT NOT NULL,
	CONSTRAINT PK_STUDENT PRIMARY KEY(StudentId)
)
