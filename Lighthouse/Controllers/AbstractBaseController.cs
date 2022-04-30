using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System;

namespace Lighthouse.Controllers
{
    public abstract class AbstractBaseController<T> : Controller where T : AbstractBaseViewModel
    {
        protected AbstractBaseDAO<T> DAO { get; set; }
        protected bool GetNextId { get; set; }
        protected string IndexViewName { get; set; } = "Index";
        protected string FormViewName { get; set; } = "Form";

        public virtual IActionResult Index()
        {
            try
            {
                var data = DAO.ReadAll();
                return View(IndexViewName, data);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public virtual IActionResult Create()
        {
            try
            {
                ViewBag.Op = 'I';
                T model = Activator.CreateInstance(typeof(T)) as T;
                FillViewData('I', model);

                return View(FormViewName, model);
            }
            catch(Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        protected virtual void FillViewData(char op, T model)
        {
            if (op == 'I' && GetNextId)
                model.Id = DAO.GetNextId();
        }

        public virtual IActionResult Save(char op, T model)
        {
            try
            {
                Validate(op, model);

                if (!ModelState.IsValid)
                {
                    ViewBag.Op = op;
                    FillViewData(op, model);
                    return View(FormViewName, model);
                }
                else
                {
                    if (op == 'I')
                        DAO.Insert(model);
                    else
                        DAO.Update(model);

                    return RedirectToAction(IndexViewName);
                }
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        protected virtual void Validate(char op, T model)
        {
            ModelState.Clear();

            if (model.Id < 0)
                ModelState.AddModelError("Id", "Id inválido.");

            if (op == 'I' && DAO.Read(model.Id) != null)
                ModelState.AddModelError("Id", "Id já existente.");

            if (op == 'U' && DAO.Read(model.Id) == null)
                ModelState.AddModelError("Id", "Registro não encontrado.");
        }

        public virtual IActionResult Edit(int id)
        {
            try
            {
                ViewBag.Op = 'U';
                T model = DAO.Read(id);

                if (model == null)
                    return RedirectToAction(IndexViewName);
                else
                {
                    FillViewData('U', model);
                    return View(FormViewName, model);
                }
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public virtual IActionResult Delete(int id)
        {
            try
            {
                DAO.Delete(id);
                return RedirectToAction(IndexViewName);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }
    }
}
