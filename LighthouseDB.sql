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

CREATE TABLE [dbo].[User] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Username] VARCHAR(MAX) NOT NULL,
	[FirstName] VARCHAR(MAX) NOT NULL,
	[LastName] VARCHAR(MAX) NOT NULL,
	[Email] VARCHAR(MAX) NOT NULL,
	[Password] VARCHAR(256) NOT NULL,
	[Gender] INT NOT NULL,
	[PictureId] INT FOREIGN KEY REFERENCES [Picture](Id) NOT NULL
)
GO

CREATE TABLE [dbo].[Attribute] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	[Type] VARCHAR(50) NOT NULL,
)
GO

INSERT INTO [Attribute]
([Name], [Type])
VALUES
('temperature', 'Float'),
('humidity', 'Float'),
('rainPower', 'Integer')

GO

CREATE TABLE [dbo].[EnvironmentInteraction] (
	[Id] INT PRIMARY KEY IDENTITY NOT NULL,
	[SensorId] INT FOREIGN KEY REFERENCES [Sensor](Id) NOT NULL,
	[AttributeId] INT FOREIGN KEY REFERENCES [Attribute](Id) NOT NULL,
	[Value] VARCHAR(MAX) NOT NULL,
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
	@genderId INT,
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

CREATE PROC spInsert_EnvironmentInteraction( 
	@sensorId INT,
	@type VARCHAR(50),
	@value VARCHAR(MAX),
	@dateReference DATETIME
)
AS BEGIN
	-- Validação
	IF (SELECT COUNT(1) FROM Sensor s WHERE s.Id = @sensorId) <> 1
	BEGIN
		PRINT 'SENSOR INEXISTENTE!'
		RETURN
	END

	IF (SELECT COUNT(1) FROM Attribute a WHERE lower(a.[Name]) = lower(@type)) <> 1
	BEGIN
		PRINT 'TIPO INVÁLIDO!'
	END

	DECLARE @typeId INT
	SELECT @typeId = a.Id FROM Attribute a WHERE lower(a.[Name]) = lower(@type)

	-- Criando Status Interaction
	DECLARE @interectionIdTable TABLE (ID int)

	INSERT EnvironmentInteraction
	(SensorId, AttributeId, [Value], DateReference)
	OUTPUT inserted.Id INTO @interectionIdTable
	VALUES
	(@sensorId, @typeId, @value, @dateReference)

	SELECT ID FROM @interectionIdTable
END
GO

-- NOTA: NÃO HÁ INTEGRAÇÃO COM O HELIX
-- SOMENTE PARA TESTES INTERNOS
-- NÃO USAR PARA PRODUÇÃO

GO
CREATE PROC spInsertTestMock AS
BEGIN
	DECLARE @idSensor1 INT
	DECLARE @idSensor1Table TABLE (ID int) 
	INSERT INTO @idSensor1Table 
	EXEC spInsert_Sensor -20, 10.2, 5
	SELECT @idSensor1 = s.ID FROM @idSensor1Table s


	DECLARE @idSensor2 INT
	DECLARE @idSensor2Table TABLE (ID int) 
	INSERT INTO @idSensor2Table 
	EXEC spInsert_Sensor -20, 10.2, 5
	SELECT @idSensor2 = s.ID FROM @idSensor2Table s
	
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'temperature', '9.3', '2002-08-22 13:10:49'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'humidity', '8.9', '2002-09-22 13:10:51'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'temperature', '1.2', '2002-07-22 13:10:50'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'rainPowwer', '13.5', '2002-10-22 13:10:52'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'humidity', '27.9', '2002-11-22 13:10:53'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'rainPowwer', '24.9', '2002-11-22 13:10:57'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'humidity', '23.9', '2002-11-22 13:10:56'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'temperature', '22.9', '2002-11-22 13:10:55'
	EXEC spInsert_EnvironmentInteraction @idSensor1, 'rainPowwer', '21.9', '2002-11-22 13:10:54'

	EXEC spInsert_EnvironmentInteraction @idSensor2, 'temperature', '9.3', '2002-08-22 13:10:49'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'humidity', '8.9', '2002-09-22 13:10:51'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'temperature', '1.2', '2002-07-22 13:10:50'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'rainPowwer', '13.5', '2002-10-22 13:10:52'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'humidity', '27.9', '2002-11-22 13:10:53'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'rainPowwer', '24.9', '2002-11-22 13:10:57'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'humidity', '23.9', '2002-11-22 13:10:56'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'temperature', '22.9', '2002-11-22 13:10:55'
	EXEC spInsert_EnvironmentInteraction @idSensor2, 'rainPowwer', '21.9', '2002-11-22 13:10:54'

END
GO