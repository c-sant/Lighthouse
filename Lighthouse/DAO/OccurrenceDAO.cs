using Lighthouse.Models;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Lighthouse.DAO
{
    public class OccurrenceDAO : AbstractCrudDAO<OccurrenceViewModel>
    {
        protected override void SetTable()
        {
            _tableName = "Occurrence";
        }

        protected override OccurrenceViewModel RowToModel(DataRow row)
        {
            return new OccurrenceViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Location = new LocationViewModel()
                {
                    Longitude = Convert.ToDouble(row["Longitude"]),
                    Latitude = Convert.ToDouble(row["Latitude"]),
                },
                DateReference = Convert.ToDateTime(row["DateReference"]),
                Details = row["Details"].ToString()
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
    }
}
