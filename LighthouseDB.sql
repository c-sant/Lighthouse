-- database

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
	[BrokerId] INT NOT NULL,
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

CREATE TABLE [EnvironmentInteraction] (
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[SensorId] INT NOT NULL FOREIGN KEY REFERENCES [Sensor](Id),
	[StatusId] INT NOT NULL FOREIGN KEY REFERENCES [EnvironmentStatus](Id),
	[DateReference] DATETIME NOT NULL
)
GO

-- procedures

CREATE PROC spListSensors
AS BEGIN
	SELECT 
		s.Id AS [Id],
		s.BrokerId AS [BrokerId],
		l.Latitude AS [Latitude],
		l.Longitude AS [Longitude],
		s.RangeKM AS [RangeKM]
	FROM [Sensor] s
	LEFT JOIN [Location] l ON s.LocationId = l.Id 
END
GO

CREATE PROC spInsertSensor(
	@brokerId INT, 
	@longitude DECIMAL(9, 6), 
	@latitude DECIMAL(8, 6),
	@range DECIMAL(5, 2)
)
AS BEGIN
	DECLARE @locationId INT

	IF NOT EXISTS(SELECT * FROM [Location] WHERE Longitude = @longitude AND Latitude = @latitude)
		INSERT INTO [Location] VALUES (@longitude, @latitude)

	SELECT @locationId = Id FROM [Location] WHERE Longitude = @longitude AND Latitude = @latitude

	INSERT INTO [Sensor] VALUES
	(@brokerId, @locationId, @range)
END
GO

CREATE PROC spDeleteSensor(@id INT)
AS BEGIN
	DELETE Sensor WHERE Id = @id
END
GO

CREATE PROC spReadSensor(@id INT)
AS BEGIN
	SELECT 
		s.Id AS [Id],
		s.BrokerId AS [BrokerId],
		l.Latitude AS [Latitude],
		l.Longitude AS [Longitude],
		s.RangeKM AS [RangeKM]
	FROM [Sensor] s
	LEFT JOIN [Location] l ON s.LocationId = l.Id 
	WHERE s.Id = @id
END
GO

CREATE PROC spUpdateSensor(
	@id INT,
	@brokerId INT,
	@longitude DECIMAL(9, 6), 
	@latitude DECIMAL(8, 6),
	@range DECIMAL(5, 2)
)
AS BEGIN
	DECLARE @locationId INT

	IF NOT EXISTS(SELECT * FROM [Location] WHERE Longitude = @longitude AND Latitude = @latitude)
		INSERT INTO [Location] VALUES (@longitude, @latitude)

	SELECT @locationId = Id FROM [Location] WHERE Longitude = @longitude AND Latitude = @latitude

	UPDATE Sensor 
	SET
		BrokerId = @brokerId,
		LocationId = @locationId,
		RangeKM = @range
	WHERE Id = @id
END
GO