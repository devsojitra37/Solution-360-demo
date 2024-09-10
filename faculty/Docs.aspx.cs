using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class faculty_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty_id"] == null)
        {
            Response.Redirect("~/login.aspx/");
        }

    }
   
   protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        string[] ext = { ".pdf", ".docx"};
        string get_ext = Path.GetExtension(ful.FileName);
        string filename = ful.FileName;
        for (int i = 0; i < 2; i++)
        {
            if (ext[i] == get_ext)
            {
                if (ful.PostedFile.ContentLength / 1024 < 1024)
                {

                    ful.SaveAs(Server.MapPath("~/docs/" + filename));
                    string file_path = "~/docs/" + filename;
                    con.Open();

                    cmd = new SqlCommand("doc", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("faculty_id", int.Parse(Session["faculty_id"].ToString()));
                    cmd.Parameters.AddWithValue("@title", txt_vn.Text);
                    cmd.Parameters.AddWithValue("@file_url", file_path.ToString());
                    cmd.Parameters.AddWithValue("@subject", TextBox1.Text);

                    cmd.ExecuteNonQuery();

                    con.Close();

                    txt_vn.Text = "";
                    TextBox1.Text = "";
                    Response.Write("<Script>alert('insert record')</script>");
                    break;
                }
                else
                {
                    Response.Write("<Script>alert('file size is long')</script>");
                    break;
                }
            }
            else
            {
                if (i == 1)
                {
                    Response.Write("<Script>alert('upload only .pdf .docx')</script>");
                }
            }
        }
        
    }
}