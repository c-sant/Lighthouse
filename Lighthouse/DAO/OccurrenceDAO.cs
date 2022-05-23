using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Lighthouse.DAO
{
    public class OccurrenceDAO : AbstractCrudDAO<OccurrenceViewModel>
    {
        protected override void SetAttributes()
        {
            _tableName = "Occurrence";
            _hasLocation = true;
        }

        protected override OccurrenceViewModel RowToModel(DataRow row)
        {
            return new OccurrenceViewModel()
            {
              
                Id = Convert.ToInt32(row.Table.Columns.Contains("Id") != true ? 0 : row["Id"]),
                Location = new LocationViewModel()
                {
                    Longitude = Convert.ToDouble(row["Longitude"]),
                    Latitude = Convert.ToDouble(row["Latitude"]),
                },
                DateReference = Convert.ToDateTime(row["DateReference"]),
                Details = row["Details"].ToString()
            };
        }

        public OccurrenceGroupViewModel RowToModelGroup(DataRow row)
        {
            return new OccurrenceGroupViewModel()
            {
                DateReference = Convert.ToDateTime(row["Date"]),
                Total = Convert.ToInt32(row["Total"])
            };
        }

        protected override SqlParameter[] GetParameters(OccurrenceViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Longitude", model.Location.Longitude),
                new SqlParameter("Latitude", model.Location.Latitude),
                new SqlParameter("DateReference", model.DateReference),
                new SqlParameter("Details", model.Details)
            };
        }

        public override void Insert(OccurrenceViewModel model)
        {
            SqlParameter[] parameters = GetParameters(model).Skip(1).ToArray();

            HelperDAO.ExecuteProcedure($"spInsert_{_tableName}", parameters);

        }

        public List<OccurrenceViewModel> SearchOccurrences(double latitude, double longitude, DateTime initialDate, DateTime endDate)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("latitude", latitude),
                new SqlParameter("longitude", longitude),
                new SqlParameter("initialDate", initialDate),
                new SqlParameter("endDate", endDate)
            };

            var list = new List<OccurrenceViewModel>();
            DataTable entries = HelperDAO.ExecuteQueryProcedure("spSearchOccurrences", parameters);

            foreach (DataRow row in entries.Rows)
                list.Add(RowToModel(row));

            return list;
        }

        public List<OccurrenceGroupViewModel> SearchOccurrencesAroundSensor(double sensorLatitude, double sensorLongitude, double sensorRange)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("sensorLatitude", sensorLatitude),
                new SqlParameter("sensorLongitude", sensorLongitude),
                new SqlParameter("sensorRange", sensorRange)
            };

            var list = new List<OccurrenceGroupViewModel>();
            DataTable entries = HelperDAO.ExecuteQueryProcedure("spGetOccurrencesAroundSensor", parameters);

            foreach (DataRow row in entries.Rows)
                list.Add(RowToModelGroup(row));

            return list;
        }
    }
}
