using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_dvideo : System.Web.UI.Page
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

        cmd = new SqlCommand("select *from video", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv5.DataSource = dt;
        postgv5.DataBind();

        con.Close();
    }
    protected void postgv5_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv5.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void postgv5_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete5")
        {
            int id = int.Parse(e.CommandArgument.ToString());

            con.Open();

            cmd = new SqlCommand("delete_video", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();

            con.Close();
            grid_bind();
        }
        if (e.CommandName == "show1")
        {
            video.Visible = true;
            int id = int.Parse(e.CommandArgument.ToString());
            con.Open();

            cmd = new SqlCommand("showvideo", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);

            sd.Fill(dt);
            dl_video.DataSource = dt;
            dl_video.DataBind();
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
    protected void videobtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from video where " + ddl1.SelectedValue.ToString() + " like '%" + txt_vn3.Text + "%' and faculty_id=@faculty_id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@faculty_id", ddl.SelectedValue.ToString());
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv5.DataSource = dt;
        postgv5.DataBind();
        con.Close();
    }
    protected void postgv5_RowDataBound(object sender, GridViewRowEventArgs e)
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
                if (cell.Text.Length > 10 && (i == 2))
                    cell.Text = cell.Text.Substring(0, 10) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 20 && (i == 3))
                    cell.Text = cell.Text.Substring(0, 20) + "...";
                cell.ToolTip = s;
            }
        }
    }
    protected void postgv5_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}