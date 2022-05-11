using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace Lighthouse.Controllers
{
    public class SensorController : AbstractCrudController<SensorViewModel>
    {

        public SensorController()
        {
            GetNextId = false;
            DAO = new SensorDAO();
        }

        protected override void Validate(char op, SensorViewModel sensor)
        {
            base.Validate(op, sensor);

            if (sensor.Latitude < -90 || sensor.Latitude > 90)
                ModelState.AddModelError("Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (sensor.Longitude < -180 || sensor.Longitude > 180)
                ModelState.AddModelError("Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (sensor.Range < 0)
                ModelState.AddModelError("Range", "O alcance não pode ser menor que zero.");
        }
    }
}
