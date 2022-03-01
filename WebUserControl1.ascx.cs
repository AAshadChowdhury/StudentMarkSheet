using EvidenceAsp.netdemo.App_Start;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvidenceAsp.netdemo
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var manager =
            Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signinManager =
            Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var result = signinManager.PasswordSignIn(TextBox1.Text,
            TextBox2.Text, RememberMe.Checked, shouldLockout: false);
            switch (result)
            {
                case SignInStatus.Success:
                    //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                    Response.Redirect("~/Dashboard.aspx");
                    break;
                case SignInStatus.LockedOut:
                    Response.Redirect("/Account/Lockout");
                    break;
                case SignInStatus.RequiresVerification:
                    Response.Redirect(String.Format("~/ Account/TwoFactorAuthenticationSignin?ReturnUrl = {0}&RememberMe={1}",
                    Request.QueryString["ReturnUrl"], RememberMe.Checked), true);
                    break;
                case SignInStatus.Failure:
                    Label1.Text = " Failure login attempt ";
                    break;
                default:
                    Label1.Text = " Invalid login attempt ";
                    break;
            }

        }
    }
}