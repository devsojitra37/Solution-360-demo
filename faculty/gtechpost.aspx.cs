using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class faculty_gtechpost : System.Web.UI.Page
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

        cmd = new SqlCommand("selectfrom_techpost", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv.DataSource = dt;
        postgv.DataBind();

        con.Close();
    }
    protected void btns_Click(object sender, EventArgs e)
    {
        if (IsValid == true)
        {
        int id = int.Parse(ViewState["id"].ToString());

        pal_grid.Visible = true;
        Pal_form.Visible = false;
        
            con.Open();

            cmd = new SqlCommand("update_techpost", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@title", txt_vn.Text);
            cmd.Parameters.AddWithValue("@description", RadEditor1.Content);
            cmd.ExecuteNonQuery();
            con.Close();
            grid_bind();

            Response.Write("<Script>alert('Update Record For TechPost...' )</script>");
        }
    }
    protected void postgv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void postgv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit1")
        {
            Pal_form.Visible = true;
            pal_grid.Visible = false;

            int id = int.Parse(e.CommandArgument.ToString());
            ViewState["id"] = id;
            con.Open();

            cmd = new SqlCommand("select_post_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);
            txt_vn.Text = dt.Rows[0]["title"].ToString();
            RadEditor1.Content = dt.Rows[0]["description"].ToString();
            con.Close();
        }
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
    protected void tectpostbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("search_techpost_title", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@title", txt_vn1.Text);
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv.DataSource = dt;
        postgv.DataBind();
        con.Close();
    }
    protected void postgv_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach(TableCell cell in e.Row.Cells)
            {
                i++;
                string s = cell.Text;
                if (cell.Text.Length > 30 && (i == 1))
                    cell.Text = cell.Text.Substring(0, 30) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 15 && (i == 2))
                    cell.Text = cell.Text.Substring(0, 15) + "...";
                cell.ToolTip = s;
            }
        }
    }
    protected void postgv_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}