using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Lighthouse.DAO
{
    public class AttributeDAO : AbstractCrudDAO<AttributeViewModel>
    {
        protected override SqlParameter[] GetParameters(AttributeViewModel model)
        {
            return new SqlParameter[]
             {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Name", model.Name),
                new SqlParameter("Type", model.Type)
             };
        }

        protected override AttributeViewModel RowToModel(DataRow row)
        {
            return new AttributeViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                Name = row["Name"].ToString(),
                Type = row["Type"].ToString()
            };
        }

        protected override void SetAttributes()
        {
            _tableName = "Attribute";
            _hasLocation = false;
        }
    }
}
