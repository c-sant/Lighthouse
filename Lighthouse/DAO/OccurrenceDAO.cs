using Lighthouse.Models;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public class OccurrenceDAO : AbstractCrudDAO<OccurrenceViewModel>
    {
        protected override void SetTable()
        {
            _tableName = "Ocurrence";
        }

        protected override OccurrenceViewModel RowToModel(DataRow row)
        {
            return new OccurrenceViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Longitude = Convert.ToDouble(row["Longitude"]),
                Latitude = Convert.ToDouble(row["Latitude"]),
                DateReference = Convert.ToDateTime(row["DateReference"])
            };
        }

        protected override SqlParameter[] GetParameters(OccurrenceViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Longitude", model.Longitude),
                new SqlParameter("Latitude", model.Latitude),
                new SqlParameter("DateReference", model.DateReference)
            };
        }
    }
}
