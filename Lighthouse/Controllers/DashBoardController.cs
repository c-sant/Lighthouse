using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

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

        public override IActionResult Index()
        {
            return View();
        }

        public IActionResult ShowInformationSensor(int Id)
        {
            SensorViewModel sensor = DAO.Read(Id);
            return View("Index", sensor);
        }

        public IActionResult GetData(int sensorId)
        {
            EnvironmentInteractionDAO DAOInformation = new EnvironmentInteractionDAO();
            List<EnvironmentInteractionViewModel> list = DAOInformation.GetDataSensors(sensorId);


            return Json(new { data = list });
        }

        public IActionResult GetSensors()
        {
            var sensors = DAO.ReadAll();
            return Json(new { data = sensors });
        }

        public IActionResult GetOccurrences(double sensorLatitude, double sensorLongitude, double sensorRange)
        {
            var occurrences = (new OccurrenceDAO()).SearchOccurrencesAroundSensor(sensorLatitude, sensorLongitude, sensorRange);

            return Json(new { data = occurrences });
        }
 
    }
}
