using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;

namespace Lighthouse.Controllers
{
    public class OccurrenceController : AbstractCrudController<OccurrenceViewModel>
    {
        public OccurrenceController()
        {
            GetNextId = false;
            DAO = new OccurrenceDAO();
            RequiresLogin = true;
        }
        protected override void Validate(char op, OccurrenceViewModel model)
        {
            base.Validate(op, model);

            if (model.Location.Latitude < -90 || model.Location.Latitude > 90)
                ModelState.AddModelError("Location.Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (model.Location.Longitude < -180 || model.Location.Longitude > 180)
                ModelState.AddModelError("Location.Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (model.DateReference > DateTime.Now)
                ModelState.AddModelError("DateReference", "A data da ocorrência não pode ser futura.");
        }

        public IActionResult ExecuteAdvancedQuery(double latitude, double longitude, DateTime initialDate, DateTime endDate)
        {
            try
            {

                if (latitude > 90 || latitude < -90)
                    throw new Exception("Latitude fora de alcance. Insira um valor entre -90 e 90.");

                if (longitude > 180 || longitude < -180)
                    throw new Exception("Longitude fora de alcance. Insira um valor entre -180 e 180.");

                if (initialDate == DateTime.MinValue)
                    initialDate = SqlDateTime.MinValue.Value;

                if (endDate == DateTime.MinValue)
                    endDate = SqlDateTime.MaxValue.Value;

                if (endDate < initialDate)
                    throw new Exception("A data inicial deve anteceder a data final.");

                List<OccurrenceViewModel> OccurrenceList = new List<OccurrenceViewModel>();
                OccurrenceList = (DAO as OccurrenceDAO).SearchOccurrences(latitude, longitude, initialDate, endDate);

                return PartialView("pvGridOccurrence", OccurrenceList);
            }
            catch (Exception ex)
            {
                return Json(new { error = true, msg = ex.Message });
            }
        }
    }
}
