namespace Lighthouse.Models
{
    public class UserViewModel : AbstractCrudViewModel
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public byte[] Password { get; set; }
        public byte[] Picture { get; set; }
    }
}
