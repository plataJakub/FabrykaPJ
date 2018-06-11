using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FabrykaSPTI_PJ.Startup))]
namespace FabrykaSPTI_PJ
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
