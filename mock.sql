USE LighthouseDB
GO


DECLARE @sensorCount INT = 0,
        @sensorTotal INT = 4

WHILE @sensorCount < @sensorTotal
BEGIN
    SET @sensorCount += 1

    
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 00:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 00:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 00:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 00:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 00:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 00:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 00:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 00:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 00:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 00:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 00:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 00:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 00:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 00:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 00:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 00:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 00:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 00:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 00:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 00:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 00:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 01:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 01:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 20.0, '20220522 01:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 01:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 01:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 01:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 01:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 01:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 01:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 01:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 01:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 01:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 01:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 01:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 01:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 01:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 01:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 01:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 02:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 02:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 02:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 02:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 02:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 02:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 02:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 02:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 20.0, '20220522 02:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 02:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 02:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 20.0, '20220522 02:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 02:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 02:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 02:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 02:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 20.0, '20220522 02:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 02:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 20.0, '20220522 02:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 02:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 02:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 02:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3695.0, '20220522 02:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 03:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 03:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 03:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 03:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 03:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 03:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 03:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 03:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 03:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 03:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 03:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 03:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 03:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 03:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 03:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 03:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 03:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 03:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 03:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 03:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 03:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 03:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 03:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 03:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 03:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 03:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 03:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 03:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 03:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 03:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 03:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 03:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 03:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 03:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 03:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 03:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 04:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 04:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 04:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 04:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 04:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 04:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 04:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 04:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 04:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 04:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 04:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 04:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 04:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 04:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 04:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 04:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 04:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 04:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 04:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 04:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 04:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 04:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 04:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 04:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 04:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 04:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 05:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 05:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 05:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 05:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 05:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 05:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 05:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 05:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 05:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 05:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 05:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 05:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 05:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 05:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 05:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 05:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 05:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 05:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 05:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 06:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 06:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 06:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 06:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 06:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 06:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 06:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 06:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 06:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 06:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 06:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 06:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 06:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 06:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 06:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 06:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 06:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 06:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 06:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 06:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 06:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 06:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 06:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 06:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 06:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 06:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 07:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 07:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 07:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 07:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 07:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 07:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 07:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 07:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 07:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 07:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 07:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 12.0, '20220522 07:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 07:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 07:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 07:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 07:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 07:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 07:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 07:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 10.0, '20220522 07:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 07:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 07:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 10.0, '20220522 08:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 08:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 38.0, '20220522 08:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 08:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 11.0, '20220522 08:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 12.0, '20220522 08:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 12.0, '20220522 08:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 08:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 08:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 08:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 08:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 08:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 08:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 08:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 08:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 08:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 08:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 08:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 08:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 08:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 09:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 09:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 09:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 09:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 09:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 09:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 09:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 09:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 09:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 09:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 09:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 09:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 09:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 39.0, '20220522 09:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 09:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 09:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 09:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 09:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 09:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 09:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 09:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 09:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 09:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 09:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 09:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 10:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 10:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 10:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 10:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 10:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 10:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 10:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 10:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 10:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 10:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 10:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 10:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 10:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 10:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 10:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 10:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 10:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 10:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 10:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 10:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 10:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 10:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 11:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 11:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 11:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 11:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 11:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 11:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 11:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 11:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 11:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 11:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 11:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 11:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 11:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 11:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 11:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 11:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 11:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 11:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 11:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 11:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 11:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 12:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 12:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 12:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 12:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 12:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 12:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 12:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 12:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 40.0, '20220522 12:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 12:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 12:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 12:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 12:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 12:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 12:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 12:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 41.0, '20220522 13:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 13:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 13:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 42.0, '20220522 13:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 13:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 13:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 13:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 13:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 13:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 13:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 13:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 43.0, '20220522 13:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 13:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 13:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 13:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 13:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 13:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 13:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 13:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 13:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 13:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 13:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 13:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 13:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 13:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 13:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 13:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 13:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 13:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 13:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 14:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 14:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 14:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 14:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 14:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 44.0, '20220522 14:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 45.0, '20220522 14:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 14:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 12.0, '20220522 14:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 14:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 14:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 14:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 14:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 14:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 14:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 14:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 48.0, '20220522 14:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 14:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 14:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 14:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 14:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 14:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 14:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 14:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 15:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 15:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 15:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 15:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 15:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 15:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 46.0, '20220522 15:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 15:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 48.0, '20220522 15:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 15:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 15:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 48.0, '20220522 15:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 15:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 47.0, '20220522 15:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 15:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 16:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 48.0, '20220522 16:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 16:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 16:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 49.0, '20220522 16:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 16:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 16:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 48.0, '20220522 16:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 16:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 16:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 49.0, '20220522 16:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 16:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 16:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 50.0, '20220522 16:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 16:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 16:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 51.0, '20220522 16:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 16:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 16:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 52.0, '20220522 16:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 16:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 16:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 53.0, '20220522 16:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 16:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 16:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 54.0, '20220522 16:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 16:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 16:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 54.0, '20220522 16:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 16:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 16:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 54.0, '20220522 16:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 16:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 16:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 16:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 16:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 17:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 17:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 17:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 17:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 17:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 17:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 17:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 17:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 17:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 17:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 17:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 17:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 17:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 17:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 17:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 17:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 17:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 17:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 17:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 17:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 17:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 17:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 17:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 17:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 17:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 17:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 18:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 18:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 18:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 18:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 18:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 18:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 18:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 18:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 18:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 18:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 18:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 18:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 18:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 18:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 18:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 18:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 18:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 18:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 18:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 18:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 18:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 18:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 18:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 18:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 18:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 19:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 19:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 19:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 19:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 19:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 19:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 19:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 19:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 19:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 19:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 19:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 62.0, '20220522 19:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 19:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 19:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 19:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 19:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 20:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 20:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 20:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 20:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 20:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 20:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 62.0, '20220522 20:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 20:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 63.0, '20220522 20:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 20:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 20:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 63.0, '20220522 20:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 20:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 20:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 62.0, '20220522 20:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 20:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 20:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 61.0, '20220522 20:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 20:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 20:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 20:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 20:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 20:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 20:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 20:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 20:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 20:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 20:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 20:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 20:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 20:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 19.0, '20220522 21:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 21:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 21:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 21:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 21:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 21:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 21:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 21:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 60.0, '20220522 21:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 21:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 18.0, '20220522 21:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 59.0, '20220522 21:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 17.0, '20220522 21:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 21:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 21:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 21:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 21:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 21:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 21:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 21:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 21:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 21:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 21:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 21:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 58.0, '20220522 21:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 21:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 21:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 21:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 21:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 22:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 22:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 4095.0, '20220522 22:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 22:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 22:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 22:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 22:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 22:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 22:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 22:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 22:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 22:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 22:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 22:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 22:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 22:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 22:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 22:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 22:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 22:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 13.0, '20220522 22:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 22:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 22:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 22:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 22:55:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 57.0, '20220522 23:00:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 23:00:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 23:05:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 23:05:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 23:10:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3995.0, '20220522 23:10:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 23:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:15:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:15:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 23:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 54.0, '20220522 23:20:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:20:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 16.0, '20220522 23:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:25:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 23:25:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 23:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:30:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:30:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 15.0, '20220522 23:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 54.0, '20220522 23:35:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 23:35:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:40:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:40:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:45:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3795.0, '20220522 23:45:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 55.0, '20220522 23:50:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:50:00')

    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 1, 14.0, '20220522 23:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 2, 56.0, '20220522 23:55:00')
    INSERT INTO [dbo].[EnvironmentInteraction] VALUES(@sensorCount, 3, 3895.0, '20220522 23:55:00')

END