using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class faculty_gartical : System.Web.UI.Page
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

        cmd = new SqlCommand("selectfrom_artical", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv1.DataSource = dt;
        postgv1.DataBind();

        con.Close();
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        if (IsValid == true)
        {
            int id = int.Parse(ViewState["id"].ToString());

            pal_grid1.Visible = true;
            pal_form1.Visible = false;

            con.Open();

            cmd = new SqlCommand("update_artical", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@title", txt_vn.Text);
            cmd.Parameters.AddWithValue("@date", TextBox2.Text);
            cmd.Parameters.AddWithValue("@description", RadEditor1.Content);
            cmd.ExecuteNonQuery();
            con.Close();
            grid_bind();

            Response.Write("<Script>alert('Update Record For Artical' )</script>");
        }
    }
    protected void postgv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv1.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void postgv1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit2")
        {
            pal_form1.Visible = true;
            pal_grid1.Visible = false;

            int id = int.Parse(e.CommandArgument.ToString());
            ViewState["id"] = id;
            con.Open();

            cmd = new SqlCommand("select_artical", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);
            txt_vn.Text = dt.Rows[0]["title"].ToString();
            TextBox2.Text = dt.Rows[0]["date"].ToString();
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
    protected void atcbtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("search_artical_title", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@title", txt_vn1.Text);
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv1.DataSource = dt;
        postgv1.DataBind();
        con.Close();
    }
    protected void postgv1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int i = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            foreach (TableCell cell in e.Row.Cells)
            {
                i++;
                string s = cell.Text;
                if (cell.Text.Length > 30 && (i == 1))
                    cell.Text = cell.Text.Substring(0, 30) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 15 && (i == 2))
                    cell.Text = cell.Text.Substring(0, 15) + "...";
                cell.ToolTip = s;
                if (cell.Text.Length > 15 && (i == 3))
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