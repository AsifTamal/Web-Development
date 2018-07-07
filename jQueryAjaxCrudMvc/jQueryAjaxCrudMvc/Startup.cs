using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(jQueryAjaxCrudMvc.Startup))]
namespace jQueryAjaxCrudMvc
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
