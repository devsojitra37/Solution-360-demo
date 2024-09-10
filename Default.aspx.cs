using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
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
            techpostlist();
            dosclist();
            vdolist();
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
    public void vdolist()
    {
        con.Open();
        cmd = new SqlCommand("select top 3 *from video order by id desc", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        vdo1.DataSource = dt;
        vdo1.DataBind();

        con.Close();
    }
    public void dlist()
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
    public void techpostlist()
    {
        con.Open();
        cmd = new SqlCommand("select top 5 *from techpost order by id desc", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        tech1.DataSource = dt;
        tech1.DataBind();

        con.Close();
    }
    public void dosclist()
    {
        con.Open();
        cmd = new SqlCommand("select top 5 *from document order by id desc", con);
        cmd.CommandType = CommandType.Text;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        dos1.DataSource = dt;
        dos1.DataBind();

        con.Close();
    }
    protected void btn_Click(object sender, EventArgs e)
    {

        //qus.Text = "";
        //Response.Redirect("Techpost.aspx");
    }
}