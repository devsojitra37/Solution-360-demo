using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class faculty_gdocs : System.Web.UI.Page
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

        cmd = new SqlCommand("selectfrom_docs", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv2.DataSource = dt;
        postgv2.DataBind();

        con.Close();
    }
    protected void postgv2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        postgv2.PageIndex = e.NewPageIndex;
        grid_bind();
    }
    protected void postgv2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit3")
        {
            pal_form2.Visible = true;
            pal_grid2.Visible = false;

            int id = int.Parse(e.CommandArgument.ToString());
            ViewState["id"] = id;
            con.Open();

            cmd = new SqlCommand("select_docs", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);
            txt_vn.Text = dt.Rows[0]["title"].ToString();
            hpl.NavigateUrl = dt.Rows[0]["file_url"].ToString();
            TextBox1.Text = dt.Rows[0]["subject"].ToString();
            con.Close();
        }
    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(ViewState["id"].ToString());

        pal_grid2.Visible = true;
        pal_form2.Visible = false;

         string[] ext = { ".pdf", ".doc" };
        string get_ext = Path.GetExtension(ful.FileName);
        string filename = ful.FileName;
        for (int i = 0; i < 2; i++)
        {
            if (ext[i] == get_ext)
            {
                if(ful.PostedFile.ContentLength/1024<1024)
                {
                    
                    ful.SaveAs(Server.MapPath("~/docs/" +filename));
                    string file_path="~/docs/"+filename;

                    con.Open();

                    cmd = new SqlCommand("update_docs", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.Parameters.AddWithValue("@title", txt_vn.Text);
                    cmd.Parameters.AddWithValue("@file_url", file_path.ToString());
                    cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<Script>alert('Update Record For Document' )</script>");
                    break;
                }
                else
                {
                    Response.Write("<Script>alert('file size is long')</script>");
                    break;
                }
            }
            else
            {
                Response.Write("<Script>alert('upload only .pdf .doc')</script>");
            }
        }
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
    protected void docubtn_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from document where " + ddl1.SelectedValue.ToString() + " like '%" + txt_vn2.Text + "%' and faculty_id=@faculty_id", con);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@faculty_id", int.Parse(Session["faculty_id"].ToString()));
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        postgv2.DataSource = dt;
        postgv2.DataBind();
        con.Close();
    }
    protected void postgv2_RowDataBound(object sender, GridViewRowEventArgs e)
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
                if (cell.Text.Length > 15 && (i == 3))
                    cell.Text = cell.Text.Substring(0, 20) + "...";
                cell.ToolTip = s;
            }
        }
    }
    protected void postgv2_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "this.previous_color=this.style.backgroundColor;this.style.backgroundColor='#c0c0c0'");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.previous_color;");
        }
    }
}