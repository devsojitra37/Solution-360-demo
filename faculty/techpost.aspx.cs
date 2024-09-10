using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_form_test : System.Web.UI.Page
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
        if (IsValid == true)
        {
            con.Open();

            cmd = new SqlCommand("techpost1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
            cmd.Parameters.AddWithValue("@title", txt_vn.Text);
            cmd.Parameters.AddWithValue("@description", RadEditor1.Content);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("<Script>alert('insert record')</script>");
            txt_vn.Text = "";
            RadEditor1.Content = "";
        }
    }
}