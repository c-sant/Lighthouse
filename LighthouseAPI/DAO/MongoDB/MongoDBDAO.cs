using Lighthouse.DAO;
using LighthouseAPI.Views.MongoDB;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LighthouseAPI.DAO.MongoDB
{
    public class MongoDBDAO
    {
        public List<InteractionViewModel> GetFromDate(string collectionName, DateTime date)
        {
            IMongoDatabase db = DBConnection.GetConnection();
            IMongoCollection<InteractionViewModel> colInteraction = db.GetCollection<InteractionViewModel>(collectionName);
            var documents = colInteraction.Find(x=> x.Date >= date).ToListAsync().Result;
            return documents;
        }

        public List<(string collectionName, int sqlServerId)> GetAllSensorCollections()
        {
            IMongoDatabase db = DBConnection.GetConnection();
            SensorDAO sensorDAO = new SensorDAO();

            var sensors = sensorDAO.ReadAll();
            var collections = db.ListCollectionNames().ToList();

            return sensors
                    .FindAll(s => collections.Contains($"sth_/_{s.BrokerId}_Motion"))
                    .Select(s => (collectionName: $"sth_/_{s.BrokerId}_Motion", sqlServerId: s.Id))
                    .ToList();
        }
    }
}
