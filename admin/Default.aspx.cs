using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd = new SqlCommand("select_admin_uname", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@name", txt_un.Text);
        cmd.Parameters.AddWithValue("@password", txt_pw.Text);
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);

        sd.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            Session["admin_name"] = txt_un.Text;
            Session["admin_id"] = dt.Rows[0]["admin_id"].ToString();
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            Response.Write("<script> alert('username and Password wrong')</script>");
        }

        con.Close();
    }
}