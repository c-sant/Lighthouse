-- database

-- DROP DATABASE LighthouseDB
CREATE DATABASE LighthouseDB
GO

USE LighthouseDB
GO

-- tables

CREATE TABLE [dbo].[Location] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Longitude] DECIMAL(9, 6) NOT NULL,
	[Latitude] DECIMAL(8, 6) NOT NULL
)
GO

CREATE TABLE [dbo].[Sensor] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[LocationId] INT NOT NULL FOREIGN KEY REFERENCES [Location](Id),
	[RangeKM] DECIMAL(5, 2) NOT NULL
)
GO

CREATE TABLE [dbo].[UserType] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Description] VARCHAR(50) NOT NULL
)
GO

CREATE TABLE [dbo].[User] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[TypeId] INT NOT NULL FOREIGN KEY REFERENCES [UserType](Id),
	[Name] VARCHAR(100) NOT NULL,
	[LocationId] INT NOT NULL FOREIGN KEY REFERENCES [Location](Id)
)
GO

CREATE TABLE [dbo].[EnvironmentStatus] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Temperature] DECIMAL(5, 2) NULL,
	[AirPressure] DECIMAL(8, 4) NULL,
	[HumidityLevel] DECIMAL(5, 2) NULL,
	[WaterLevel] DECIMAL(5, 2) NULL
)
GO

CREATE TABLE [dbo].[EnvironmentInteraction] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[SensorId] INT NOT NULL FOREIGN KEY REFERENCES [Sensor](Id),
	[StatusId] INT NOT NULL FOREIGN KEY REFERENCES [EnvironmentStatus](Id),
	[DateReference] DATETIME NOT NULL
)
GO

CREATE TABLE [dbo].[Occurrence] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[LocationId] INT NOT NULL FOREIGN KEY REFERENCES [Location](id),
	[DateReference] DATETIME NOT NULL
)

-- general procedures

CREATE PROC spRead(@id INT, @tableName VARCHAR(50))
AS BEGIN
	SELECT 
		s.Id AS [Id],
		l.Latitude AS [Latitude],
		l.Longitude AS [Longitude],
		s.RangeKM AS [RangeKM]
	FROM [Sensor] s
	LEFT JOIN [Location] l ON s.LocationId = l.Id 
	WHERE s.Id = @id
END
GO

CREATE PROC spReadAll(@tableName VARCHAR(50))
AS BEGIN
	EXEC('SELECT * FROM [' + @tableName + ']')
END
GO

CREATE PROC spDelete(@id INT, @tableName VARCHAR(50))
AS BEGIN
	DECLARE @locationId INT

	SELECT @locationId = s.LocationId
	FROM Sensor s
	WHERE s.Id = @id

	DELETE Sensor WHERE Id = @id
	
	DELETE FROM [Location]
	WHERE Id = @locationId
END
GO

CREATE PROC spGetNextId(@tableName VARCHAR(50)) 
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
	FROM Sensor s
	WHERE s.Id = @id

	UPDATE [Location]
	SET 
		Latitude = @latitude,
		Longitude = @longitude
	WHERE Id = @locationId

	UPDATE Sensor 
	SET
		RangeKM = @range
	WHERE Id = @id
END
GO

-- occurrences

CREATE PROC spInsert_Occurrence (
	@longitude DECIMAL(9, 6),
	@latitude DECIMAL(8, 6),
	@dateReference DATETIME
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
	VALUES (@locationId, @dateReference)

	SELECT ID FROM @ID
END