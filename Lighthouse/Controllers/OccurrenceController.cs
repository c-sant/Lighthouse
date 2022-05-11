using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System;

namespace Lighthouse.Controllers
{
    public class OccurrenceController : AbstractCrudController<OccurrenceViewModel>
    {
        public OccurrenceController()
        {
            GetNextId = false;
            DAO = new OccurrenceDAO();
        }
        protected override void Validate(char op, OccurrenceViewModel sensor)
        {
            base.Validate(op, sensor);

            if (sensor.Latitude < -90 || sensor.Latitude > 90)
                ModelState.AddModelError("Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (sensor.Longitude < -180 || sensor.Longitude > 180)
                ModelState.AddModelError("Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (sensor.DateReference > DateTime.Now)
                ModelState.AddModelError("DateReference", "A data da ocorrência não pode ser futura.");
        }
    }
}
