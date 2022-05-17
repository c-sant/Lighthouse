using Microsoft.AspNetCore.Http;
using System;

namespace Lighthouse.Models
{
    public class PictureViewModel : AbstractCrudViewModel
    {
        public IFormFile PictureFile { get; set; }
        public byte[] BytePicture { get; set; }
        public string Base64Picture
        {
            get
            {
                if (BytePicture == null)
                    return string.Empty;
                else
                    return Convert.ToBase64String(BytePicture);
            }
        }
    }
}
