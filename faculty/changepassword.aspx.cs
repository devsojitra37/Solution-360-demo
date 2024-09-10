using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class faculty_changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    string old_password;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty_id"] == null)
        {
            Response.Redirect("~/login.aspx/");
        }
    }
    protected void ch_pass_Click(object sender, EventArgs e)
    {
        con.Open();

        cmd = new SqlCommand("select * from faculty_login where faculty_id=" + int.Parse(Session["faculty_id"].ToString()) + "", con);
        cmd.CommandType = CommandType.Text;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);

        sd.Fill(dt);

        old_password = dt.Rows[0]["Password"].ToString();

        if (old_password == old_pass.Text)
        {
            cmd = new SqlCommand("update faculty_login set Password='" + renew.Text + "' where faculty_id=" + int.Parse(Session["faculty_id"].ToString()) + "", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Password Change Successfully...')</script>");
        }
        else
        {
            Response.Write("<script> alert('Old Password wrong...')</script>");
        }
        con.Close();

    }
}