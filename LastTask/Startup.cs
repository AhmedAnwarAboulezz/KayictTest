using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LastTask.Startup))]
namespace LastTask
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
