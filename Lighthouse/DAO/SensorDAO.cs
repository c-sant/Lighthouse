using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Lighthouse.Helix;
using Lighthouse.Helpers;

namespace Lighthouse.DAO
{
    public class SensorDAO
    {
        // Vai ser overrride pois se tornará abstrato na classe pai
        protected string _tableName { get => "Sensor"; }

        // Se tornará somente um método na classe pai
        public int GetNextId()
        {
            DataTable dtResult = HelperDAO.ExecuteQueryProcedure("spGetNextId",
                new SqlParameter[] 
                {
                    new SqlParameter("tableName", _tableName)
                }
            );

            return (int)dtResult.Rows[0][0];
        }

        public SensorViewModel RowToViewModel(DataRow row)
        {
            return new SensorViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Longitude = Convert.ToDouble(row["Longitude"]),
                Latitude = Convert.ToDouble(row["Latitude"]),
                Range = Convert.ToDouble(row["RangeKM"])
            };
        }

        public List<SensorViewModel>? ReadAllEntries()
        {
            var entries = new List<SensorViewModel>();
            DataTable table = HelperDAO.ExecuteQueryProcedure("spListSensors");

            if (table.Rows.Count == 0)
                return null;

            foreach (DataRow row in table.Rows)
                entries.Add(RowToViewModel(row));

            return entries;
        }

        public SensorViewModel Read(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("id", id)
            };

            DataTable table = HelperDAO.ExecuteQueryProcedure("spReadSensor", parameters);

            if (table.Rows.Count == 0)
                return null;

            return RowToViewModel(table.Rows[0]);
        }

        public void Insert(SensorViewModel sensor)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("longitude", sensor.Longitude),
                new SqlParameter("latitude", sensor.Latitude),
                new SqlParameter("range", sensor.Range)
            };
            
            DataTable queryResponse = HelperDAO.ExecuteQueryProcedure("spInsertSensor", parameters);
            int createdId = (int)queryResponse.Rows[0][0];

            // O MqttAgent já cria automaticamente o sensor no Broker.
            var mqttAgentInteractor = new MqttAgentInteractor(GlobalConfig.HelixIp, GlobalConfig.MqttAgentPort);
            mqttAgentInteractor.RegisterSensor(createdId, new Point(sensor.Latitude, sensor.Longitude));
        }

        public void Delete(int id)
        {

            SqlParameter[] parameters =
            {
                new SqlParameter("id", id)
            };

            new MqttAgentInteractor(GlobalConfig.HelixIp, GlobalConfig.MqttAgentPort).DeleteSensor(id);
            new BrokerInteractor(GlobalConfig.HelixIp, GlobalConfig.BrokerPort).DeleteSensor(id);

            HelperDAO.ExecuteProcedure("spDeleteSensor", parameters);
        }

        public void Update(SensorViewModel sensor)
        {
            new BrokerInteractor(GlobalConfig.HelixIp, GlobalConfig.BrokerPort).UpdateSensor(sensor);

            SqlParameter[] parameters =
            {
                new SqlParameter("id", sensor.Id),
                new SqlParameter("longitude", sensor.Longitude),
                new SqlParameter("latitude", sensor.Latitude),
                new SqlParameter("range", sensor.Range)
            };

            HelperDAO.ExecuteProcedure("spUpdateSensor", parameters);
        }
    }
}
