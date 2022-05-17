using Lighthouse.Models;
using Microsoft.AspNetCore.Http;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Lighthouse.DAO
{
    public class PictureDAO : AbstractCrudDAO<PictureViewModel>
    {
        protected override void SetAttributes()
        {
            _tableName = "Picture";
            _hasLocation = false;
        }

        protected override PictureViewModel RowToModel(DataRow row)
        {
            return new PictureViewModel()
            {
                Id = Convert.ToInt32(row["Id"]),
                BytePicture = row["Content"] != DBNull.Value ? (row["Content"] as byte[]) : null
            };
        }

        protected override SqlParameter[] GetParameters(PictureViewModel model)
        {
            return new SqlParameter[] {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Content", model.BytePicture)
            };
        }
    }
}
