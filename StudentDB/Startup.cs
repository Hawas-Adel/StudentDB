using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StudentDB.Startup))]
namespace StudentDB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
