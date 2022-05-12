-- database

-- DROP DATABASE LighthouseDB
CREATE DATABASE LighthouseDB
GO

USE LighthouseDB
GO

-- tables

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

CREATE TABLE [dbo].[User] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] VARCHAR(MAX) NOT NULL,
	[Email] VARCHAR(MAX) NOT NULL,
	[Password] VARCHAR(256) NOT NULL,
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

-- general procedures

CREATE PROC spRead(@id INT, @tableName VARCHAR(MAX))
AS BEGIN
	EXEC('SELECT * FROM [' + @tableName + '] WHERE [Id] = ' + @id)
END
GO

CREATE PROC spReadWithLocation(@id INT, @tableName VARCHAR(MAX))
AS BEGIN
	EXEC (
		'''
		SELECT
			t.*, 
			l.[Latitude],
			l.[Longitude]
		FROM [''' + @tableName + ''']
		LEFT JOIN [Location] l ON t.[LocationId] = l.[Id]
		WHERE t.[Id] = ''' + @id
	)
END
GO

CREATE PROC spReadAll(@tableName VARCHAR(MAX))
AS BEGIN
	EXEC('SELECT * FROM [' + @tableName + ']')
END
GO

CREATE PROC spReadAllWithLocation(@tableName VARCHAR(MAX))
AS BEGIN
	EXEC (
		'''
		SELECT
			t.*,
			l.[Latitude],
			l.[Longitude]
		FROM [''' + @tableName + ''']
		LEFT JOIN [Location] l ON t.[LocationId] = l.[Id]
		'''
	)
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

-- specific procedures

-- sensors

CREATE PROC spListSensors
AS BEGIN
	SELECT 
		s.Id AS [Id],
		l.Latitude AS [Latitude],
		l.Longitude AS [Longitude],
		s.RangeKM AS [RangeKM]
	FROM [Sensor] s
	LEFT JOIN [Location] l ON s.LocationId = l.Id 
END
GO

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

-- occurrences

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
	VALUES (@locationId, @dateReference, @details)d

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

-- User

CREATE PROC spInsert_User (
	@name VARCHAR(MAX),
	@email VARCHAR(MAX),
	@password VARCHAR(256),
	@picture VARBINARY(MAX)
)
AS BEGIN
	DECLARE @pictureId INT

	IF NOT EXISTS(SELECT TOP(1) 1 FROM [Picture] WHERE [Content] = @picture)
		INSERT INTO [Picture] VALUES (@picture)

	SELECT @pictureId = [Id] FROM [Picture] WHERE [Content] = @picture

	INSERT INTO [User]
	VALUES(@name, @email, @password, @pictureId)
END
GO

CREATE PROC spUpdate_User (
	@id INT,
	@name VARCHAR(MAX),
	@email VARCHAR(MAX),
	@password VARCHAR(256),
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
		[Name] = @name,
		[Email] = @email,
		[Password] = @password,
		[PictureId] = @pictureId
	WHERE
		[Id] = @id
END
GO

-- triggers

CREATE TRIGGER trgDelete_Sensor ON [Sensor]
FOR DELETE
AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = [LocationId] FROM deleted

	DELETE [Location] WHERE [Id] = @locationId
END
GO

CREATE TRIGGER trgDelete_Occurrence ON [Occurrence]
FOR DELETE
AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = [LocationId] FROM deleted

	DELETE [Location] WHERE [Id] = @locationId
END
GO