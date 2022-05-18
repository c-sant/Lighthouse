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
            int picId = Convert.ToInt32(row["PictureId"]);

            return new UserViewModel()
            {
                Id = Convert.ToInt32(row["id"]),
                UserName = row["Username"].ToString(),
                FirstName = row["FirstName"].ToString(),
                LastName = row["LastName"].ToString(),
                Email = row["email"].ToString(),
                Gender = (Gender)Convert.ToInt32(row["Gender"]),
                EncryptedPassword = row["Password"] as byte[],
                Picture = new PictureDAO().Read(picId)
            };
        }

        protected override SqlParameter[] GetParameters(UserViewModel model)
        {
            return new SqlParameter[]
            {
                new SqlParameter("Id", model.Id),
                new SqlParameter("Username", model.UserName),
                new SqlParameter("FirstName", model.FirstName),
                new SqlParameter("LastName", model.LastName),
                new SqlParameter("email", model.Email),
                new SqlParameter("Gender", (int)model.Gender),
                new SqlParameter("Password", model.EncryptedPassword),
                new SqlParameter("Picture", model.Picture.BytePicture)
            };
        }

        public bool ValidateLogin(UserViewModel model)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("UserName", model.UserName),
                new SqlParameter("Password", model.EncryptedPassword)
            };

            DataTable result = HelperDAO.ExecuteQueryProcedure("spValidateLogin", parameters);

            if (result.Rows.Count == 0)
                return false;

            return Convert.ToBoolean(result.Rows[0][0]);
        }
    }
}
