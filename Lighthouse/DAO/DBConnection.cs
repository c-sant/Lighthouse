using System.Data.SqlClient;

namespace Lighthouse.DAO
{
    public static class DBConnection
    {
        public static SqlConnection GetConnection()
        {
            //string connStr = "Data Source=DESKTOP-TGVLOUK\\SQLEXPRESS;Database=LighthouseDB;Integrated Security=True";
            string connStr = "Data Source=LOCALHOST;Database=LighthouseDB;user id=sa;password=123456";
            //string connStr = "Data Source=COMPUTER\\SQLEXPRESS;Database=LighthouseDB;user id=sa;password=123456789";//user id=sa;password=123456";
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            return conn;
        }
    }
}
