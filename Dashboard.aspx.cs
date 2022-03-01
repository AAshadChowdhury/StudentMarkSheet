using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;

namespace EvidenceAsp.netdemo
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
         
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var p = SqlDataSource1.InsertParameters;
                p["Id"].DefaultValue = TextBox1.Text;
                p["Name"].DefaultValue = TextBox2.Text;
                p["Fee"].DefaultValue = TextBox3.Text;
                p["joindate"].DefaultValue = Calendar1.SelectedDate.ToShortDateString();
                p["stringphoto"].DefaultValue = "images/" + FileUpload1.FileName;
            }
            try
            {

                if (FileUpload1.HasFile)
                {
                    //string path = Server.MapPath("images/" + FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("images/" + FileUpload1.FileName));
                }
                SqlDataSource1.Insert();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";

            }
            catch (Exception ex)
            {
                Literal1.Text = ex.Message;
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            bool a;
            a = Regex.IsMatch(TextBox1.Text, @"^\d+$");
            args.IsValid = a;
            if (args.IsValid == false)
                return;

        }
    }
}