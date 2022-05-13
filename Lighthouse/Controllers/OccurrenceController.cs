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
        protected override void Validate(char op, OccurrenceViewModel model)
        {
            base.Validate(op, model);

            if (model.Latitude < -90 || model.Latitude > 90)
                ModelState.AddModelError("Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (model.Longitude < -180 || model.Longitude > 180)
                ModelState.AddModelError("Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (model.DateReference > DateTime.Now)
                ModelState.AddModelError("DateReference", "A data da ocorrência não pode ser futura.");
        }
    }
}
