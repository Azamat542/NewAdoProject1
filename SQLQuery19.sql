/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[Patronymic]
      ,[Iin]
      ,[DateOfBirht]
      ,[GenderId]
  FROM [Shop2].[dbo].[Clients]