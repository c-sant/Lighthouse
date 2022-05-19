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
            RequiresLogin = true;
        }

        protected override void Validate(char op, SensorViewModel model)
        {
            base.Validate(op, model);

            if (model.Location.Latitude < -90 || model.Location.Latitude > 90)
                ModelState.AddModelError("Location.Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (model.Location.Longitude < -180 || model.Location.Longitude > 180)
                ModelState.AddModelError("Location.Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (model.Range < 0)
                ModelState.AddModelError("Range", "O alcance não pode ser menor que zero.");
        }
    }
}
