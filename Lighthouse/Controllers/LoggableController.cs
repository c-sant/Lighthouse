using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using System;

namespace Lighthouse.Controllers
{
    public class LoggableController : Controller
    {
        protected bool RequiresLogin { get; set; } = false;
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            ViewBag.IsLogged = HelperController.IsLogged(HttpContext.Session);
            if (RequiresLogin && !ViewBag.IsLogged) 
            {
                context.Result = RedirectToAction("Login", "User");
            }
            else
            {
                base.OnActionExecuting(context);
            }

        }
    }
}
