using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
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
            return new JsonResult(new { Works = true });
        }
    }
}
