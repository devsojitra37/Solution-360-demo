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

public partial class Regesation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        dosclist();
        techpostlist();
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
    public void techpostlist()
    {
        con.Open();
        cmd = new SqlCommand("techpost_top", con);
        cmd.CommandType = CommandType.StoredProcedure;

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
        cmd = new SqlCommand("dosc_top", con);
        cmd.CommandType = CommandType.StoredProcedure;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        dos1.DataSource = dt;
        dos1.DataBind();

        con.Close();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (fup1.HasFile)
        {
            string[] ext = { ".png", ".JPEG", ".jpg" };
            string ext1 = System.IO.Path.GetExtension(fup1.FileName);

         
                for (int i = 0; i < 3; i++)
                {
                    if (ext1 == ext[i])
                    {
                        if ((fup1.PostedFile.ContentLength)/1024 < 600)
                        {
                            string filename = Path.GetFileName(fup1.FileName);
                            fup1.SaveAs(Server.MapPath("~/photo/") + filename);
                            string path1 = "~/photo/" + filename;
                            
                            con.Open();

        cmd = new SqlCommand("insert_faculty_detail", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@faculty_name",E_name.Text);
        cmd.Parameters.AddWithValue("@department",Department.Text);
        cmd.Parameters.AddWithValue("@qualification",Qut.Text);
        cmd.Parameters.AddWithValue("@subject",sub.Text);
        cmd.Parameters.AddWithValue("@image",path1);
        cmd.Parameters.AddWithValue("@e_mail",TextBox1.Text);
        cmd.Parameters.AddWithValue("@address",ads.Text);
        cmd.ExecuteNonQuery();
        con.Close();

        con.Open();
        cmd = new SqlCommand("faculty",con);
        cmd.CommandType = CommandType.StoredProcedure;
        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
               
        cmd = new SqlCommand("insert_faculty_login", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@user_name", E_name.Text);
        cmd.Parameters.AddWithValue("@password", txt_pass.Text);
        cmd.Parameters.AddWithValue("@faculty_id", dt.Rows[0]["faculty_id"].ToString());
        cmd.Parameters.AddWithValue("@status", "unapprove");
        cmd.ExecuteNonQuery();

        con.Close();
        E_name.Text = "";
        Department.Text = "";
        Qut.Text = "";
        sub.Text = "";
        path1 = "";
        TextBox1.Text = "";
        ads.Text = "";
        txt_pass.Text="";

        Response.Write("<script>alert('insert successfully')</script>");
                            break;
                        }
                        else
                        {
                            Response.Write("<script>alert('Upload status: The file has to be less than 100 kb!')</script>");
                        
                        }

                    }
                    else
                    {
                        if(i==2)
                        {
                        Response.Write("<script>alert('Upload status: Only JPEG files are accepted!')</script>");
                        }
                    }
                }
            
            

        }
        else
        {
            Response.Write("select File");
        }   
    }
}