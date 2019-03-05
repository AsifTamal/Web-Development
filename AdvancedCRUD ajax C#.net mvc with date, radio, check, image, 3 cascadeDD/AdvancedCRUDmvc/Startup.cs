using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AdvancedCRUDmvc.Startup))]
namespace AdvancedCRUDmvc
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
