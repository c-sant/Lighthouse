using System.Data;
using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public static class HelperDAO
    {
        public static void ExecuteSql(string sql, SqlParameter[] sqlParameters = null)
        {
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    if (sqlParameters != null)
                        cmd.Parameters.AddRange(sqlParameters);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static DataTable ExecuteQuery(string sql, SqlParameter[]? sqlParameters = null)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(sql, conn))
                {
                    if (sqlParameters != null)
                        adapter.SelectCommand.Parameters.AddRange(sqlParameters);

                    adapter.Fill(dt);
                }
            }

            return dt;
        }

        public static void ExecuteProcedure(string procName, SqlParameter[]? sqlParameters = null)
        {
            using (SqlConnection conn = DBConnection.GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(procName, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    if (sqlParameters != null)
                        cmd.Parameters.AddRange(sqlParameters);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public static DataTable ExecuteQueryProcedure(string procName, SqlParameter[]? sqlParameters = null)
        {
            DataTable dt = new DataTable();

            using (SqlConnection conn = DBConnection.GetConnection())
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(procName, conn))
                {
                    adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                    if (sqlParameters != null)
                        adapter.SelectCommand.Parameters.AddRange(sqlParameters);

                    adapter.Fill(dt);
                }
            }

            return dt;
        }
    }
}
