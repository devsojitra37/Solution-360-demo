using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class faculty_gvideo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["faculty_id"] == null)
            {
                Response.Redirect("../login.aspx");
            }
            //ddl_bind();
            grid_bind();
        }
    }
    public void grid_bind()
    {
        con.Open();

        cmd = new SqlCommand("selectfrom_video", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv3.DataSource = dt;
        postgv3.DataBind();

        con.Close();
    }
    protected void postgv3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete4")
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
    protected void postgv3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv3.PageIndex = e.NewPageIndex;
        grid_bind();

    }
    //public void ddl_bind()
    //{
    //    con.Open();
    //    cmd = new SqlCommand("selectfaculty", con);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    dt = new DataTable();
    //    sd = new SqlDataAdapter(cmd);
    //    sd.Fill(dt);
    //    ddl.DataSource = dt;
    //    ddl.DataBind();
    //    con.Close();
    //}
    protected void vidbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from video where " + ddl1.SelectedValue.ToString() + " like '%" + txt_vn3.Text + "%' and faculty_id=@faculty_id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        //cmd.Parameters.AddWithValue("@faculty_id", ddl.SelectedValue.ToString());
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv3.DataSource = dt;
        postgv3.DataBind();
        con.Close();
    }
    protected void postgv3_RowDataBound(object sender, GridViewRowEventArgs e)
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
                 if (cell.Text.Length > 20 && (i == 3))
                     cell.Text = cell.Text.Substring(0, 20) + "...";
                 cell.ToolTip = s;
             }
         }
    }
    protected void postgv3_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}