using Lighthouse;
using MongoDB.Driver;

namespace LighthouseAPI.DAO.MongoDB
{
    public class DBConnection
    {
        public static IMongoDatabase GetConnection()
        {
            IMongoClient client = new MongoClient(GlobalConfig.MongoDBConnectionString);
            return client.GetDatabase("sth_helixiot");
        }
    }
}
