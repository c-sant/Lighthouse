using Lighthouse.Models;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public class UserDAO : AbstractCrudDAO<UserViewModel>
    {
        protected override void SetAttributes()
        {
            _tableName = "User";
            _hasLocation = false;
        }

        protected override UserViewModel RowToModel(DataRow row)
        {
            return new UserViewModel()
            {
                Id = Convert.ToInt32(row["id"]),
                Name = row["name"].ToString(),
                Password = row["Password"] as byte[],
                Picture = row["Picture"] != DBNull.Value ? (row["Picture"] as byte[]) : null
            };
        }

        protected override SqlParameter[] GetParameters(UserViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Name", model.Name),
                new SqlParameter("Password", model.Password),
                new SqlParameter("Picture", model.Picture ?? (object)DBNull.Value)
            };
        }


    }
}
