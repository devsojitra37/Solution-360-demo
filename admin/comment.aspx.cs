using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_comment : System.Web.UI.Page
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

        cmd = new SqlCommand("join_tech_approve_cmt", con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
       app_grid1.DataSource = dt;
        app_grid1.DataBind();

        con.Close();
    }
    public void grid1_bind()
    {
        con.Open();

        cmd = new SqlCommand("join_post_cmt", con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        appgrid2.DataSource = dt;
        appgrid2.DataBind();

        con.Close();
    }
    protected void app_grid1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        app_grid1.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void app_grid1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "approve12")
        {
            int cmt_id = int.Parse(e.CommandArgument.ToString());
            Response.Write(cmt_id);
            con.Open();

            cmd = new SqlCommand("update_cmt_approve", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cmt_id", cmt_id);
            cmd.ExecuteScalar();

            con.Close();
            grid1_bind();
            grid_bind();
        }
    }
   
    protected void app_grid1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        //int i = 0;
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    foreach (TableCell cell in e.Row.Cells)
        //    {
        //        i++;
        //        string s = cell.Text;
        //        if (cell.Text.Length > 20 && (i == 1))
        //            cell.Text = cell.Text.Substring(0, 20) + "...";
        //        cell.ToolTip = s;
        //        if (cell.Text.Length > 15 && (i == 2))
        //            cell.Text = cell.Text.Substring(0, 15) + "...";
        //        cell.ToolTip = s;
        //    }
        //}
    }
    protected void app_grid1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
        //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        //}
    }
    protected void appgrid2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        appgrid2.PageIndex = e.NewPageIndex;
        grid1_bind();
    }
    protected void appgrid2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Unapprove12")
        {
            int cmt_id = int.Parse(e.CommandArgument.ToString());
            
            con.Open();

            cmd = new SqlCommand("update_cmt_unapprove", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cmt_id", cmt_id);
            cmd.ExecuteScalar();

            con.Close();
            grid1_bind();
            grid_bind();
        }
    }
    protected void appgrid2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //int i = 0;
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    foreach (TableCell cell in e.Row.Cells)
        //    {
        //        i++;
        //        string s = cell.Text;
        //        if (cell.Text.Length > 20 && (i == 1))
        //            cell.Text = cell.Text.Substring(0, 20) + "...";
        //        cell.ToolTip = s;
        //        if (cell.Text.Length > 20 && (i == 2))
        //            cell.Text = cell.Text.Substring(0, 20) + "...";
        //        cell.ToolTip = s;
        //    }
        //}
    }
    protected void appgrid2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
        //    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        //}
    }
    protected void buttonsearch1_Click(object sender, EventArgs e)
    {

    }
    protected void buttonsearch3_Click(object sender, EventArgs e)
    {

    }

    
}