using System.Web;
using System.Web.Mvc;

namespace FabrykaSPTI_PJ
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
