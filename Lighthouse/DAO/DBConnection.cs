using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public static class DBConnection
    {
        public static SqlConnection GetConnection()
        {
            // string connStr = "Data Source=DESKTOP-TGVLOUK\\SQLEXPRESS;Database=LighthouseDB;Integrated Security=True";//user id=sa;password=123456";
            string connStr = "Data Source=LOCALHOST;Database=LighthouseDB;Integrated Security=True";//user id=sa;password=123456";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            return conn;
        }
    }
}
