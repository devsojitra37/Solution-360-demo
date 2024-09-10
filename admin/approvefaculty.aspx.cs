using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_approvefaculty : System.Web.UI.Page
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
            grid_bind();
            grid1_bind();
        }
    }
    public void grid_bind()
    {
        con.Open();

        cmd = new SqlCommand("selectwherecondition_approve", con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        app_grid.DataSource = dt;
        app_grid.DataBind();

        con.Close();
    }
        protected void app_grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        app_grid.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void app_grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "approve1")
        {
            int user_id = int.Parse(e.CommandArgument.ToString());

            con.Open();

            cmd = new SqlCommand("update_approvefaculty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user_id", user_id);
            cmd.ExecuteNonQuery();

            con.Close();
            grid1_bind();
            grid_bind();
        }
    }

    public void grid1_bind()
    {
        con.Open();

        cmd = new SqlCommand("selectwhere_unapprove", con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        con.Close();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        grid1_bind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Unapprove1")
        {
            int user_id = int.Parse(e.CommandArgument.ToString());

            con.Open();

            cmd = new SqlCommand("update_unapprovefaculty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user_id", user_id);
            cmd.ExecuteNonQuery();

            con.Close();
            grid1_bind();
            grid_bind();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("searchlike_faculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@user_name", txt_vn.Text);
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<Script>alert('No record...' )</script>");
            app_grid.DataSource = dt;
            app_grid.DataBind();
        }
        else
        {
            app_grid.DataSource = dt;
            app_grid.DataBind();
        
        }
        con.Close();
       
        
    }
    
    protected void btnsearch1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("searchlike_unapprovefaculty", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@user_name",txt1.Text);
       
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<Script>alert('No record...' )</script>");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void app_grid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i = 0;
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
    protected void app_grid_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                i++;
                string s = cell.Text;
                if (cell.Text.Length > 20 && (i == 1))
                    cell.Text = cell.Text.Substring(0, 20) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 20 && (i == 2))
                    cell.Text = cell.Text.Substring(0, 20) + "...";
                cell.ToolTip = s;
            }
        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}