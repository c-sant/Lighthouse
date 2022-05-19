using LighthouseAPI.DAO.MongoDB;
using LighthouseAPI.Views.MongoDB;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace LighthouseAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MongoDBController : ControllerBase
    {
        private readonly ILogger<MongoDBController> _logger;

        public MongoDBController(ILogger<MongoDBController> logger)
        {
            _logger = logger;
        }

        [HttpGet("MongoToSqlServer")]
        public IActionResult Get()
        {
            IMongoDatabase db = DBConnection.GetConnection();
            string sensorId = "urn:ngsi-ld:Motion:4";
            IMongoCollection<InteractionViewModel> colInteraction = db.GetCollection<InteractionViewModel>($"sth_/_{sensorId}_Motion");
            var documents = colInteraction.Find(_ => true).ToListAsync().Result;
            
            return new JsonResult(new { documents });
        }
    }
}
