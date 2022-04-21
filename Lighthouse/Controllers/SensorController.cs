using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;

namespace Lighthouse.Controllers
{
    public class SensorController : Controller
    {
        public IActionResult Index()
        {
            try
            {
                List<SensorViewModel> sensors = new SensorDAO().ReadAllEntries();
                return View(sensors);
            }
            catch(Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public IActionResult Register()
        {
            try
            {
                ViewBag.Op = 'I'; // operação de inserção

                SensorViewModel sensor = new SensorViewModel();

                return View("Form", sensor);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public IActionResult Edit(int id)
        {
            try
            {
                ViewBag.Op = 'U'; // operação de atualização

                SensorViewModel sensor = new SensorDAO().Read(id);
                if (sensor == null)
                    throw new Exception("Registro de sensor não encontrado: Id inválido.");

                return View("Form", sensor);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public IActionResult Delete(int id)
        {
            try
            {
                new SensorDAO().Delete(id);

                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        private void Validate(SensorViewModel sensor, char op)
        {
            SensorDAO sensorDAO = new SensorDAO();


            if (op == 'I' && sensorDAO.Read(sensor.Id) != null)
                ModelState.AddModelError("Id", "Id já existente.");

            if (op == 'U' && sensorDAO.Read(sensor.Id) == null)
                ModelState.AddModelError("Id", "Id inexistente.");

            if (sensor.Id < 0)
                ModelState.AddModelError("Id", "Id inválido.");

            if (sensor.BrokerId < 0)
                ModelState.AddModelError("BrokerId", "Broker ID inválido.");

            if (sensor.Latitude < -90 || sensor.Latitude > 90)
                ModelState.AddModelError("Latitude", "Latidude fora de alcance: o valor deve estar entre -90 e 90.");

            if (sensor.Longitude < -180 || sensor.Longitude > 180)
                ModelState.AddModelError("Longitude", "Longitude fora de alcance: o valor deve estar entre -180 e 180.");

            if (sensor.Range < 0)
                ModelState.AddModelError("Range", "O alcance não pode ser menor que zero.");
        }

        public IActionResult Save(SensorViewModel sensor, char op)
        {
            try
            {
                Validate(sensor, op);

                if (!ModelState.IsValid)
                {
                    ViewBag.Op = op;
                    return View("Form", sensor);
                }

                if (op == 'I')
                    new SensorDAO().Insert(sensor);
                else
                    new SensorDAO().Update(sensor);

                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }
    }
}
