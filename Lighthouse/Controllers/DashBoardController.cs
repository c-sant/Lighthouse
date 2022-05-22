﻿using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lighthouse.Controllers
{
    public class DashBoardController : AbstractCrudController<SensorViewModel>
    {
        public DashBoardController()
        {
            GetNextId = false;
            DAO = new SensorDAO();
            RequiresLogin = true;
        }

        public IActionResult GetSensors()
        {
            var sensors = DAO.ReadAll();
            return Json(new { data = sensors });
        }
 
    }
}
