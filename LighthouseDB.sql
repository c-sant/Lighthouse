-- database

-- DROP DATABASE LighthouseDB
CREATE DATABASE LighthouseDB
GO

USE LighthouseDB
GO

-- tabelas

CREATE TABLE [dbo].[Location] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Longitude] DECIMAL(9, 6) NOT NULL,
	[Latitude] DECIMAL(8, 6) NOT NULL
)
GO

CREATE TABLE [dbo].[Sensor] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[LocationId] INT FOREIGN KEY REFERENCES [Location](Id) NOT NULL,
	[RangeKM] DECIMAL(5, 2) NOT NULL
)
GO

CREATE TABLE [dbo].[Picture] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Content] VARBINARY(MAX) NOT NULL
)
GO

CREATE TABLE [dbo].[Gender] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Description] VARCHAR(MAX) NOT NULL
)

CREATE TABLE [dbo].[User] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Username] VARCHAR(MAX) NOT NULL,
	[FirstName] VARCHAR(MAX) NOT NULL,
	[LastName] VARCHAR(MAX) NOT NULL,
	[Email] VARCHAR(MAX) NOT NULL,
	[Password] VARCHAR(256) NOT NULL,
	[GenderId] INT FOREIGN KEY REFERENCES [Gender](Id) NOT NULL,
	[PictureId] INT FOREIGN KEY REFERENCES [Picture](Id) NOT NULL
)
GO

CREATE TABLE [dbo].[EnvironmentStatus] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[IsRaining] BIT NOT NULL,
	[Temperature] DECIMAL(5, 4) NULL,
	[HumidityLevel] DECIMAL(5, 2) NULL
)
GO

CREATE TABLE [dbo].[EnvironmentInteraction] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[SensorId] INT FOREIGN KEY REFERENCES [Sensor](Id) NOT NULL,
	[StatusId] INT FOREIGN KEY REFERENCES [EnvironmentStatus](Id) NOT NULL,
	[DateReference] DATETIME NOT NULL
)
GO

CREATE TABLE [dbo].[Occurrence] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[LocationId] INT FOREIGN KEY REFERENCES [Location](id) NOT NULL,
	[DateReference] DATETIME NOT NULL,
	[Details] VARCHAR(MAX) NULL
)
GO

-- procedures genéricas

CREATE PROC spRead(@id INT, @tableName VARCHAR(MAX))
AS BEGIN
	EXEC('SELECT * FROM [' + @tableName + '] WHERE [Id] = ' + @id)
END
GO

CREATE PROC spReadWithLocation(@id INT, @tableName VARCHAR(MAX))
AS BEGIN
	EXEC ('SELECT t.*, l.[Latitude], l.[Longitude] FROM [' + @tableName + '] t LEFT JOIN [Location] l ON t.[LocationId] = l.[Id] WHERE t.[Id] =' + @id)
END
GO

CREATE PROC spReadAll(@tableName VARCHAR(MAX))
AS BEGIN
	EXEC('SELECT * FROM [' + @tableName + ']')
END
GO

CREATE PROC spReadAllWithLocation(@tableName VARCHAR(MAX))
AS BEGIN
	EXEC ('SELECT t.*, l.[Latitude], l.[Longitude] FROM [' + @tableName + '] t LEFT JOIN [Location] l ON t.[LocationId] = l.[Id]')
END
GO

CREATE PROC spDelete(@id INT, @tableName VARCHAR(MAX))
AS BEGIN
	EXEC('DELETE [' + @tableName + '] WHERE [Id] = ' + @id)
END
GO

CREATE PROC spGetNextId(@tableName VARCHAR(MAX)) 
AS BEGIN
	EXEC('SELECT IDENT_CURRENT(''' + @tableName + ''')')
END
GO

-- procedures específicas

-- sensores

CREATE PROC spInsert_Sensor(
	@longitude DECIMAL(9, 6), 
	@latitude DECIMAL(8, 6),
	@range DECIMAL(5, 2)
)
AS BEGIN
	DECLARE @locationIdTable TABLE (ID int)
	DECLARE @locationId int

	INSERT INTO [Location] 
	OUTPUT inserted.Id INTO @locationIdTable
	VALUES (@longitude, @latitude)

	DECLARE @ID TABLE (ID int)

	SELECT @locationId = Id FROM @locationIdTable

	INSERT INTO [Sensor] 
	OUTPUT inserted.Id INTO @ID
	VALUES (@locationId, @range)

	SELECT ID FROM @ID
END
GO

CREATE PROC spUpdate_Sensor(
	@id INT,
	@longitude DECIMAL(9, 6), 
	@latitude DECIMAL(8, 6),
	@range DECIMAL(5, 2)
)
AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = s.LocationId
	FROM [Sensor] s
	WHERE s.Id = @id

	UPDATE 
		[Location]
	SET 
		[Latitude] = @latitude,
		[Longitude] = @longitude
	WHERE
		Id = @locationId

	UPDATE 
		[Sensor] 
	SET
		[RangeKM] = @range
	WHERE 
		Id = @id
END
GO

-- ocorrências

CREATE PROC spInsert_Occurrence (
	@longitude DECIMAL(9, 6),
	@latitude DECIMAL(8, 6),
	@dateReference DATETIME,
	@details VARCHAR(MAX)
)
AS BEGIN
	DECLARE @locationIdTable TABLE (ID int)
	DECLARE @locationId int

	INSERT INTO [Location] 
	OUTPUT inserted.Id INTO @locationIdTable
	VALUES (@longitude, @latitude)

	DECLARE @ID TABLE (ID int)

	SELECT @locationId = Id FROM @locationIdTable

	INSERT INTO [Occurrence] 
	OUTPUT inserted.Id INTO @ID
	VALUES (@locationId, @dateReference, @details)

	SELECT ID FROM @ID
END
GO

CREATE PROC spUpdate_Occurrence (
	@id INT,
	@longitude DECIMAL(9, 6),
	@latitude DECIMAL(8, 6),
	@dateReference DATETIME,
	@details VARCHAR(MAX)
)
AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = s.LocationId
	FROM [Occurrence] s
	WHERE s.Id = @id

	UPDATE 
		[Location]
	SET 
		[Latitude] = @latitude,
		[Longitude] = @longitude
	WHERE
		Id = @locationId

	UPDATE 
		[Occurrence] 
	SET
		[DateReference] = @dateReference,
		[Details] = @details
	WHERE 
		Id = @id
END
GO

-- usuários

CREATE PROC spInsert_User (
	@userName VARCHAR(MAX),
	@firstName VARCHAR(MAX),
	@lastName VARCHAR(MAX),
	@email VARCHAR(MAX),
	@password VARBINARY(256),
	@genderId VARCHAR(1),
	@picture VARBINARY(MAX)
)
AS BEGIN
	DECLARE @pictureId INT

	IF NOT EXISTS(SELECT TOP(1) 1 FROM [Picture] WHERE [Content] = @picture)
		INSERT INTO [Picture] VALUES (@picture)

	SELECT @pictureId = [Id] FROM [Picture] WHERE [Content] = @picture

	INSERT INTO [User]
	VALUES(@userName, @firstName, @lastName, @email, @password, @genderId, @pictureId)
END
GO

CREATE PROC spUpdate_User (
	@id INT,
	@userName VARCHAR(MAX),
	@firstName VARCHAR(MAX),
	@lastName VARCHAR(MAX),
	@email VARCHAR(MAX),
	@password VARBINARY(256),
	@genderId INT(1),
	@picture VARBINARY(MAX)
)
AS BEGIN
	DECLARE @pictureId INT

	IF NOT EXISTS(SELECT TOP(1) 1 FROM [Picture] WHERE [Content] = @picture)
		INSERT INTO [Picture] VALUES (@picture)

	SELECT @pictureId = [Id] FROM [Picture] WHERE [Content] = @picture

	UPDATE 
		[User]
	SET
		[Username] = @userName,
		[FirstName] = @firstName,
		[LastName] = @lastName,
		[Email] = @email,
		[Password] = @password,
		[Gender] = @genderId,
		[PictureId] = @pictureId
	WHERE
		[Id] = @id
END
GO

-- triggers

-- localização é deletada quando a entidade à qual ela está atrelada é deletada

CREATE TRIGGER trgDelete_Sensor ON [Sensor]
FOR DELETE AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = [LocationId] FROM deleted

	DELETE [Location] WHERE [Id] = @locationId
END
GO

CREATE TRIGGER trgDelete_Occurrence ON [Occurrence]
FOR DELETE AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = [LocationId] FROM deleted

	DELETE [Location] WHERE [Id] = @locationId
END
GO

-- não pode haver usernames repetidos

CREATE TRIGGER trgInsert_User ON [User]
FOR INSERT, UPDATE AS BEGIN
	DECLARE @currentUserName VARCHAR(MAX)

	SELECT @currentUserName = [Username] FROM inserted

	IF (SELECT COUNT([Username]) FROM [User] WHERE [Username] = @currentUserName) > 1
	BEGIN
		PRINT 'Nome de usuário já está em uso'
		ROLLBACK TRAN
		RETURN
	END
END
GO

-- se ninguém estiver usando uma determinada foto (e ela não for a default), deleta essa foto

CREATE TRIGGER trgDelete_User ON [User]
FOR DELETE, UPDATE AS BEGIN
	DECLARE @pictureId INT
	
	SELECT @pictureId = [PictureId] FROM deleted

	IF NOT EXISTS(SELECT TOP(1) 1 FROM [User] WHERE [PictureId] = @pictureId) AND @pictureId <> 1
	BEGIN
		DELETE [Picture] WHERE [Id] = @pictureId
	END
END
GO

-- inserts

-- gêneros

INSERT INTO [Gender] VALUES
('Masculino'), ('Feminino'), ('Outro')