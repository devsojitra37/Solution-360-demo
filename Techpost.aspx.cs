using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Techpost : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dlist();
            dosclist();
            artlist();
            
        }
    }
    public void dosclist()
    {
        con.Open();
        cmd = new SqlCommand("dosc_top", con);
        cmd.CommandType = CommandType.StoredProcedure;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        dos1.DataSource = dt;
        dos1.DataBind();

        con.Close();
    }
    public void dlist()
    {
        con.Open();
        cmd = new SqlCommand("select top 50 * from techpost order by id desc", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        tech.DataSource = dt;
        tech.DataBind();

        con.Close();
    }
    public void artlist()
    {
        con.Open();
        cmd = new SqlCommand("select top 5 *from artical order by id desc", con);
        cmd.CommandType = CommandType.Text;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        art1.DataSource = dt;
        art1.DataBind();

        con.Close();
    }
    protected void tech_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "tech_post")
        {
            techpnl.Visible = false;
            postpnl.Visible = true;
            ViewState["tech_id"] = e.CommandArgument.ToString();
            con.Open();
            cmd = new SqlCommand("select * from dbo.techpost where id="+int.Parse(e.CommandArgument.ToString())+"", con);
            cmd.CommandType = CommandType.Text;
            dt = new DataTable();
            sd = new SqlDataAdapter(cmd);
            sd.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
            con.Close();
            cmt();
        }
    }
    public string Truncate(string input, int characterLimit)
    {
        string output = input;

        // Check if the string is longer than the allowed amount
        // otherwise do nothing
        if (output.Length > characterLimit && characterLimit > 0)
        {

            // cut the string down to the maximum number of characters
            output = output.Substring(0, characterLimit);

            // Check if the character right after the truncate point was a space
            // if not, we are in the middle of a word and need to remove the rest of it
            if (input.Substring(output.Length, 1) != " ")
            {
                int LastSpace = output.LastIndexOf(" ");

                // if we found a space then, cut back to that space
                if (LastSpace != -1)
                {
                    output = output.Substring(0, LastSpace);
                }
            }
            // Finally, add the "..."
            output += "...";
        }
        return output;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("cmt_post", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@tech_id", int.Parse(ViewState["tech_id"].ToString()));
        cmd.Parameters.AddWithValue("@comment",qus.Text);
        cmd.ExecuteNonQuery();

        con.Close();
        qus.Text = "";
        cmt();

    }
    public void cmt()
    {
        con.Open();
        cmd = new SqlCommand("selectcomt", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@tech_id", ViewState["tech_id"].ToString());
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        ques.DataSource = dt;
        ques.DataBind();

        con.Close();
    }
}