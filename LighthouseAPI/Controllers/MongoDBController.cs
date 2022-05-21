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
        public IActionResult Get(DateTime fromDate)
        {
            try
            {
                var mongoDAO = new MongoDBDAO();
                var collections = mongoDAO.GetAllSensorCollections();

                foreach ((string collection, int sqlServerId) in collections)
                {
                    var documents = mongoDAO.GetFromDate(collection, fromDate);
                    InsertDocumentsIntoSqlServer(documents, sqlServerId);
                }

                return Ok();
            }
            catch (Exception ex)
            {
                Response.StatusCode = 500;
                return new JsonResult(new { Error = ex.Message, StackTrace = ex.StackTrace });
            }
        }

        private void InsertDocumentsIntoSqlServer(List<InteractionViewModel> documents, int sqlServerId)
        {
            var sqlDAO = new Lighthouse.DAO.EnvironmentInteractionDAO();
            var attributesAvailable = new HashSet<string> { "temperature", "humidity", "rainpower" };

            foreach (InteractionViewModel doc in documents)
            {
                if (attributesAvailable.Contains(doc.AttributeName.ToLower()))
                {
                    var sqlModel = new Lighthouse.Models.EnvironmentInteractionViewModel()
                    {
                        Attribute = new Lighthouse.Models.AttributeViewModel() { Name = doc.AttributeName },
                        Sensor = new Lighthouse.Models.SensorViewModel() { Id = sqlServerId },
                        Value = doc.Valor,
                        DateReference = doc.Date,
                    };

                    sqlDAO.Insert(sqlModel);
                }
            }
        }
    }
}
