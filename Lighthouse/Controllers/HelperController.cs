using Microsoft.AspNetCore.Http;

namespace Lighthouse.DAO
{
    public class HelperController
    {
        public static bool IsLogged(ISession session)
        {
            string logged = session.GetString("Logged");

            if (logged == null)
                return false;
            else
                return true;
        }
    }
}
