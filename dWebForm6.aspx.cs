using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvidenceAsp.netdemo
{
    public partial class dWebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var p = SqlDataSource1.InsertParameters;
                p["VrNo"].DefaultValue = TextBox1.Text;
                p["Sl"].DefaultValue = TextBox2.Text;
                p["Studentid"].DefaultValue = DropDownList1.SelectedValue;

                p["headname"].DefaultValue = TextBox3.Text;
                p["amount"].DefaultValue = TextBox4.Text;

            }
            try
            {

               
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
    }
}