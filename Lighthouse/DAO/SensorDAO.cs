using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using Lighthouse.Helix;
using Lighthouse.Helpers;
using System.Linq;

namespace Lighthouse.DAO
{
    public class SensorDAO : AbstractCrudDAO<SensorViewModel>
    {
        protected override void SetTable()
        {
            _tableName = "Sensor";
        }

        protected override SensorViewModel RowToModel(DataRow row)
        {
            return new SensorViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Longitude = Convert.ToDouble(row["Longitude"]),
                Latitude = Convert.ToDouble(row["Latitude"]),
                Range = Convert.ToDouble(row["RangeKM"])
            };
        }

        protected override SqlParameter[] GetParameters(SensorViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Longitude", model.Longitude),
                new SqlParameter("Latitude", model.Latitude),
                new SqlParameter("Range", model.Range)
            };
        }

        public override List<SensorViewModel>? ReadAll()
        {
            DataTable table = HelperDAO.ExecuteQueryProcedure("spListSensors");

            if (table.Rows.Count == 0)
                return null;

            var entries = new List<SensorViewModel>();

            foreach (DataRow row in table.Rows)
                entries.Add(RowToModel(row));

            return entries;
        }

        public override void Insert(SensorViewModel sensor)
        {
            SqlParameter[] parameters = GetParameters(sensor).Skip(1).ToArray();

            DataTable queryResponse = HelperDAO.ExecuteQueryProcedure("spInsert_Sensor", parameters);
            int createdId = (int)queryResponse.Rows[0][0];

            var mqttAgentInteractor = new MqttAgentInteractor(GlobalConfig.HelixIp, GlobalConfig.MqttAgentPort);
            mqttAgentInteractor.CreateSensor(createdId, new Point(sensor.Latitude, sensor.Longitude));
            
            new BrokerInteractor(GlobalConfig.HelixIp, GlobalConfig.BrokerPort).RegisterSensor(sensor.Id);
        }

        public override void Delete(int id)
        {
            new MqttAgentInteractor(GlobalConfig.HelixIp, GlobalConfig.MqttAgentPort).DeleteSensor(id);
            new BrokerInteractor(GlobalConfig.HelixIp, GlobalConfig.BrokerPort).DeleteSensor(id);

            base.Delete(id);
        }

        public override void Update(SensorViewModel sensor)
        {
            new BrokerInteractor(GlobalConfig.HelixIp, GlobalConfig.BrokerPort).UpdateSensor(sensor);

            base.Update(sensor);
        }
    }
}
