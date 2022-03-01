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

namespace EvidenceAsp.netdemo
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImages();


        }

        private void LoadImages()
        {
            string cs = ConfigurationManager.ConnectionStrings["cnstringConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from student", con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //    string cs = ConfigurationManager.ConnectionStrings["cnstringConnectionString"].ConnectionString;
            //    using (SqlConnection con = new SqlConnection(cs))
            //    {
            //        FileUpload1.SaveAs(Server.MapPath("~/Studentpic/") + Path.GetFileName(FileUpload1.FileName));
            //        string link = "Studentpic" + Path.GetFileName(FileUpload1.FileName);

            //        string query = "Insert into student(ID,Name,Fee,joindate,photo) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4 + "','" + link + "')";
            //        SqlCommand cmd = new SqlCommand(query, con);
            //        con.Open();
            //        cmd.ExecuteNonQuery();
            //        con.Close();

            //        Label8.Text = "Data Has been saved Successfully";
            //        TextBox1.Text = "";
            //        TextBox2.Text = "";
            //        TextBox3.Text = "";
            //        TextBox4.Text = "";




            //    }
            if (!FileUpload1.HasFile)
            {
                Label8.Visible = true;
                Label8.Text = "Please Select Image File";    //checking if file uploader has no file selected


            }
            else
            {
                //FileUpload1.SaveAs(Server.MapPath("~/Studentpic/") + Path.GetFileName(FileUpload1.FileName));
                //string link = "Studentpic" + Path.GetFileName(FileUpload1.FileName);
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];


                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                string constr = ConfigurationManager.ConnectionStrings["cnstringConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd1 = new SqlCommand("insert into student" + "(Id,Name,Fee,joindate,photo) values(@Id,@Name,@Fee,@date,@photo)", con);
                con.Open();
                cmd1.Parameters.AddWithValue("@Id", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@Name", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@Fee", TextBox3.Text);

                cmd1.Parameters.AddWithValue("@date", Calendar1.SelectedDate.ToString());
                cmd1.Parameters.AddWithValue("@photo", pic);





                try
                {
                cmd1.ExecuteNonQuery();
                Label8.Visible = true;
                Label8.Text = "Image Uploaded Sucessfully";
                con.Close();//after Sucessfully uploaded image
            }
            catch
            {
            }
        }


       
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            if (GridView1.HeaderRow != null)
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;//tfoot,tbody,thead will be added to the gridview table
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }
    }
}