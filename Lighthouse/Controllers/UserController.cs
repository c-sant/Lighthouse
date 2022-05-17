using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace Lighthouse.Controllers
{
    public class UserController : AbstractCrudController<UserViewModel>
    {
        public UserController()
        {
            GetNextId = false;
            DAO = new UserDAO();
        }

        public override IActionResult Create()
        {
            try
            {
                ViewBag.Op = 'I';
                var model = new UserViewModel()
                {
                    Picture = new PictureViewModel()
                };
                FillViewData('I', model);

                return View(FormViewName, model);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public override IActionResult Save(char op, UserViewModel model)
        {
            try
            {
                model.Gender--;

                if (model.Picture.PictureFile != null)
                    model.Picture.BytePicture = ConvertImageToByte(model.Picture.PictureFile);

                Validate(op, model);

                if (!ModelState.IsValid)
                {
                    ViewBag.Op = op;
                    FillViewData(op, model);
                    return View(FormViewName, model);
                }
                else
                {
                    model.EncryptedPassword = EncryptPassword(model.RawPassword);

                    if (op == 'I')
                        DAO.Insert(model);
                    else
                    {
                        if (model.Picture.PictureFile == null)
                            model.Picture.BytePicture = DAO.Read(model.Id).Picture.BytePicture;

                        DAO.Update(model);
                    }

                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        protected override void Validate(char op, UserViewModel model)
        {
            base.Validate(op, model);

            if (string.IsNullOrEmpty(model.UserName))
                ModelState.AddModelError("UserName", "É obrigatório definir um nome de usuário.");

            if (string.IsNullOrEmpty(model.FirstName))
                ModelState.AddModelError("FirstName", "É obrigatório inserir seu primeiro nome.");

            if (string.IsNullOrEmpty(model.LastName))
                ModelState.AddModelError("LastName", "É obrigatório inserir seu sobrenome.");

            if (string.IsNullOrEmpty(model.RawPassword))
                ModelState.AddModelError("RawPassword", "É obrigatório definir uma senha.");

            if (string.IsNullOrEmpty(model.Email))
                ModelState.AddModelError("Email", "É obrigatório inserir seu e-mail.");

            if ((int)model.Gender < 0)
                ModelState.AddModelError("Gender", "É obrigatório selecionar um gênero.");
        }

        private byte[] EncryptPassword(string rawPassword)
        {
            byte[] myPasswordBytes = Encoding.UTF8.GetBytes(rawPassword);
            
            using var sha256 = SHA256.Create();
            return sha256.ComputeHash(myPasswordBytes);
        }

        private byte[] ConvertImageToByte(IFormFile file)
        {
            if (file == null)
                return null;

            using var ms = new MemoryStream();
            file.CopyTo(ms);

            return ms.ToArray();
        }
    }
}
