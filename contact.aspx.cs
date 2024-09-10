using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;


public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        artlist();
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
    protected void btn_Click(object sender, EventArgs e)
    {
        string str = "Name:" + name.Text + "\n" + "Email:" + email.Text + "\n" + "Message:" + msg.Text;
        if (SendEmailUsingGmail("solution3601@gmail.com", "solution3601@gmail.com", name.Text.Trim(), str.Trim(), "360soluti"))
        {
            Response.Write("<Script>alert('Mail send')</Script>");
        }
        else
        {
            Response.Write("<Script>alert('Error in sending mail')</Script>");
        } name.Text = "";
        email.Text = "";
        msg.Text = "";
    }
    private static Boolean SendEmailUsingGmail(string fromEmailAddress, string toEmailAddress, string subject, string messageBody, string gmailPassword)
    {
        try
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new NetworkCredential(fromEmailAddress, gmailPassword);
            smtp.Port = 587;
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;

            MailMessage message = new MailMessage();
            message.From = new MailAddress(fromEmailAddress);
            message.To.Add(toEmailAddress);
            message.Subject = subject;
            message.Body = messageBody;
            smtp.Send(message);
            return true;
        }
        catch
        {
            return false;
        }
    }
}