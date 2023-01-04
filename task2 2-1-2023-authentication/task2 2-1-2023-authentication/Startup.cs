using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task2_2_1_2023_authentication.Startup))]
namespace task2_2_1_2023_authentication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
