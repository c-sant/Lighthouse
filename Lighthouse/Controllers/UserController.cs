using Lighthouse.DAO;
using Lighthouse.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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
                model.Picture.BytePicture = ConvertImageToByte(@"wwwroot\images\defaultprofile.png");
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
                if (model.Picture != null && model.Picture.PictureFile != null)
                    model.Picture.BytePicture = ConvertImageToByte(model.Picture.PictureFile);
                else
                {
                    if (model.Picture == null)
                        model.Picture = new PictureViewModel();

                    model.Picture.BytePicture = ConvertImageToByte(@"wwwroot\images\defaultprofile.png");
                }

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
                    {
                        model.EncryptedPassword = EncryptPassword(model.RawPassword);

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

        public IActionResult Login()
        {
            try
            {
                var model = new UserViewModel();
                ViewBag.Op = 'L';

                return View(model);
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public IActionResult SubmitLogin(char op, UserViewModel model)
        {
            try
            {

                Validate(op, model);

                if (!ModelState.IsValid)
                {
                    ViewBag.Op = op;
                    return View("Login", model);
                }

                HttpContext.Session.SetString("Logged", "true");

                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                return View("Error", new ErrorViewModel(ex.ToString()));
            }
        }

        public IActionResult LogOff()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        protected override void Validate(char op, UserViewModel model)
        {
            // todos os casos

            base.Validate(op, model);

            if (string.IsNullOrEmpty(model.UserName))
                ModelState.AddModelError("UserName", "É obrigatório inserir o nome de usuário.");

            if (string.IsNullOrEmpty(model.RawPassword))
                ModelState.AddModelError("RawPassword", "É obrigatório inserir uma senha.");

            model.EncryptedPassword = model.RawPassword != null ? EncryptPassword(model.RawPassword) : null;

            if (op != 'L') // inserção e atualização
            {
                if (string.IsNullOrEmpty(model.FirstName))
                    ModelState.AddModelError("FirstName", "É obrigatório inserir seu primeiro nome.");

                if (string.IsNullOrEmpty(model.LastName))
                    ModelState.AddModelError("LastName", "É obrigatório inserir seu sobrenome.");

                if (string.IsNullOrEmpty(model.Email))
                    ModelState.AddModelError("Email", "É obrigatório inserir seu e-mail.");

                if ((int)model.Gender < 1)
                    ModelState.AddModelError("Gender", "É obrigatório selecionar um gênero.");
            }
            else // login
            {
                List<UserViewModel> users = DAO.ReadAll();

                List<string> usernames = null;

                if (users != null)
                    usernames = users.Select(user => user.UserName).ToList();

                if (usernames == null || !usernames.Contains(model.UserName))
                    ModelState.AddModelError("UserName", "Nome de usuário não encontrado.");

                else if (!(DAO as UserDAO).ValidateLogin(model))
                    ModelState.AddModelError("Password", "Senha inválida.");
            }

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

        private byte[] ConvertImageToByte(string imagePath)
        {
            return System.IO.File.ReadAllBytes(imagePath);
        }
    }
}
