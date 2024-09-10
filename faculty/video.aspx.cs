using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


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
        con.Open();
        string s = TextBox2.Text;
        string g = "embed/";
        string o = "watch?v=";
        string m = s.Replace(o, g);
        string[] arrurl = s.Split('=');
        string h = arrurl[arrurl.GetUpperBound(0)];
        string r = "http://www.youtube.com/" + "embed/" + h;
        cmd = new SqlCommand("video1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("faculty_id", int.Parse(Session["faculty_id"].ToString()));
        cmd.Parameters.AddWithValue("@title", txt_vn.Text);
     
        cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
        cmd.Parameters.AddWithValue("@file_url", r);

        cmd.ExecuteNonQuery();

        con.Close();
        Response.Write("<Script>alert('insert record')</script>");
        txt_vn.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        
    }
}