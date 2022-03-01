using EvidenceAsp.netdemo.Models;
using EvidenceAsp.netdemo.App_Start;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Owin;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(EvidenceAsp.netdemo.Startup))]

namespace EvidenceAsp.netdemo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=316888
            ConfigureAuth(app);

        } 
    }
}
