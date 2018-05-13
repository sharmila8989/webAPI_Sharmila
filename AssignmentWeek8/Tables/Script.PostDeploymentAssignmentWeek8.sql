/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN

-- ENSURE THERE IS NOT DATA IN THE TABLEES BWFIRE DEPLOYING TEST DATA
DELETE FROM Book;
DELETE FROM Author;
DELETE FROM Student;

-- insert test data
INSERT INTO Student (StudentId, StudentFirstname, StudentLastname, StudentEmail, StudentPhoneNumber) VALUES
(101585870, 'Sharmila', 'Fathima', 'sharmi8989@gmail.com', 0431105608),
(101589568, 'Michael', 'Jackson', 'mike_jack@hotmail.com', 0435678908),
(101678924, 'Sam', 'Smith', 'sam.smith@gmail.com', 0432115678);

INSERT INTO Author (AuthorID, AuthorFirstname, AuthorLastname, AuthorTFN) VALUES
(10125, 'Katy', 'Perry', 116589),
(10367, 'Shawn', 'Mendes', 113567),
(12456, 'Ed', 'Shreen', 116732);
INSERT INTO Book (BookTitle, BookYear, ISBN, StudentId, AuthorID) VALUES
('C# Programming', 2015, 1167895623, 101585870, 10125),
('Android Programming', 2016, 1234567889, Null, 10367);

End;
