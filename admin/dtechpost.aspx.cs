using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_dtechpost : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin_name"] == null)
            {
                Response.Redirect("../admin/Default.aspx");
            }
            ddl_bind();
            
            grid_bind();

        }
    }
    public void grid_bind()
    {
        con.Open();

        cmd = new SqlCommand("select * from techpost", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv1.DataSource = dt;
        postgv1.DataBind();

        con.Close();
    }

    protected void postgv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv1.PageIndex = e.NewPageIndex;
        grid_bind();

    }
    protected void postgv1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete1")
        {
            int id = int.Parse(e.CommandArgument.ToString());

            con.Open();

            cmd = new SqlCommand("delete_post", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();

            con.Close();
            grid_bind();

        }
    }
    public void ddl_bind()
    {
        con.Open();
        cmd = new SqlCommand("selectfaculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        ddl.DataSource = dt;
        ddl.DataBind();
        con.Close();
    }
    protected void postbtn_Click(object sender, EventArgs e)
    {
        if (IsValid == true)
        {
            con.Open();
            cmd = new SqlCommand("search_techpost_title", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@title", txt_vn1.Text);
            cmd.Parameters.AddWithValue("@faculty_id", ddl.SelectedValue.ToString());
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);
            postgv1.DataSource = dt;
            postgv1.DataBind();
            con.Close();
        }
    }
    protected void postgv1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i=0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                i++;
                string s = cell.Text;
                if (cell.Text.Length > 20 && (i == 1))
                    cell.Text = cell.Text.Substring(0, 20) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 15 && (i == 2))
                    cell.Text = cell.Text.Substring(0, 15) + "...";
                cell.ToolTip = s;
            }
        }
    }
    protected void postgv1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}