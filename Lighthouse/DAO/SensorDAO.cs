using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public class SensorDAO
    {
        public SensorViewModel RowToViewModel(DataRow row)
        {
            return new SensorViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                BrokerId = Convert.ToInt32(row["BrokerId"]),
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
                new SqlParameter("brokerId", sensor.BrokerId),
                new SqlParameter("longitude", sensor.Longitude),
                new SqlParameter("latitude", sensor.Latitude),
                new SqlParameter("range", sensor.Range)
            };

            HelperDAO.ExecuteProcedure("spInsertSensor", parameters);
        }

        public void Delete(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("id", id)
            };

            HelperDAO.ExecuteProcedure("spDeleteSensor", parameters);
        }

        public void Update(SensorViewModel sensor)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("id", sensor.Id),
                new SqlParameter("brokerId", sensor.BrokerId),
                new SqlParameter("longitude", sensor.Longitude),
                new SqlParameter("latitude", sensor.Latitude),
                new SqlParameter("range", sensor.Range)
            };

            HelperDAO.ExecuteProcedure("spUpdateSensor", parameters);
        }
    }
}
