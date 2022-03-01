using EvidenceAsp.netdemo.App_Start;
using EvidenceAsp.netdemo.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvidenceAsp.netdemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var manager =
       Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signinManager =
            Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser()
            {
                UserName = TextBox1.Text,
                Email = TextBox2.Text
            };
            IdentityResult result = manager.Create(user, TextBox3.Text);
            if (result.Succeeded)
            {
                signinManager.SignIn(
            user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(
                Request.QueryString["ReturnUrl"], Response);
                
            }
            else
            {
                Label1.Text = result.Errors.FirstOrDefault();
            }
            
        }
    }
}