using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.DAO
{
    public class EnvironmentInteractionDAO : AbstractCrudDAO<EnvironmentInteractionViewModel>
    {
        protected override SqlParameter[] GetParameters(EnvironmentInteractionViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("SensorId", model.Sensor.Id),
                new SqlParameter("AttrName", model.Attribute.Name),
                new SqlParameter("Value", model.Value),
                new SqlParameter("DateReference", model.DateReference),
            };
        }

        protected override EnvironmentInteractionViewModel RowToModel(DataRow row)
        {
            return new EnvironmentInteractionViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Attribute = new AttributeDAO().Read((int)row["AttributeId"]), 
                Sensor = new SensorDAO().Read((int)row["SensorId"]),
                Value = row["Value"].ToString(),
                DateReference = (DateTime)row["DateReference"]
            };
        }

        protected override void SetAttributes()
        {
            _tableName = "EnvironmentInteraction";
            _hasLocation = false;
        }

        public override void Insert(EnvironmentInteractionViewModel model)
        {
            SqlParameter[] parameters = GetParameters(model).Skip(1).ToArray();
            HelperDAO.ExecuteProcedure($"spInsert_{_tableName}", parameters);
        }

        public List<EnvironmentInteractionViewModel> GetDataSensors(int sensorId)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("sensorId", sensorId)
            };
            List<EnvironmentInteractionViewModel> list = new List<EnvironmentInteractionViewModel>();
            DataTable entries = HelperDAO.ExecuteQueryProcedure("sp_InformationSensor", parameters);

            foreach (DataRow row in entries.Rows)
                list.Add(RowToModel(row));

            return list;
        }
    }
}
