using Microsoft.AspNetCore.Http;
using System;

namespace Lighthouse.Models
{
    public enum Gender { Male = 1, Female, Other }
    public class UserViewModel : AbstractCrudViewModel
    {
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public Gender Gender { get; set; }
        public string RawPassword { get; set; }
        public byte[] EncryptedPassword { get; set; }
        public PictureViewModel Picture { get; set; }
    }
}
