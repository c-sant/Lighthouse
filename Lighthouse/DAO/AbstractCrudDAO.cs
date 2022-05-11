using Lighthouse.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Lighthouse.DAO
{
    public abstract class AbstractCrudDAO<T> where T : AbstractCrudViewModel
    {
        public AbstractCrudDAO()
        {
            SetTable();
        }

        protected string _tableName;
        protected abstract SqlParameter[] GetParameters(T model);
        protected abstract T RowToModel(DataRow row);
        protected abstract void SetTable();

        public virtual void Insert(T model)
        {
            SqlParameter[] parameters = GetParameters(model).Skip(1).ToArray();

            HelperDAO.ExecuteProcedure($"spInsert_{_tableName}", parameters);
        }

        public virtual void Update(T model)
        {
            HelperDAO.ExecuteProcedure($"spUpdate_{_tableName}", GetParameters(model));
        }

        public virtual void Delete(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("id", id),
                new SqlParameter("tableName", _tableName)
            };

            HelperDAO.ExecuteProcedure("spDelete", parameters);
        }

        public virtual T Read(int id)
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("id", id),
                new SqlParameter("tableName", _tableName)
            };

            DataTable table = HelperDAO.ExecuteQueryProcedure("spRead", parameters);

            if (table.Rows.Count == 0)
                return null;

            return RowToModel(table.Rows[0]);
        }

        public virtual List<T> ReadAll()
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("tableName", _tableName)
            };

            DataTable table = HelperDAO.ExecuteQueryProcedure("spReadAll", parameters);

            if (table.Rows.Count == 0)
                return null;

            List<T> entries = new List<T>();

            foreach(DataRow row in table.Rows)
                entries.Add(RowToModel(row));

            return entries;
        }

        public virtual int GetNextId()
        {
            SqlParameter[] parameters =
            {
                new SqlParameter("tableName", _tableName)
            };

            DataTable dt = HelperDAO.ExecuteQueryProcedure("spGetNextId", parameters);

            return Convert.ToInt32(dt.Rows[0][0]);
        }
    }
}
