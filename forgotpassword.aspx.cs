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

public partial class forgotpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    SqlDataAdapter sd;
    DataTable dt;
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
        cmd = new SqlCommand("select top 3 *from artical order by id desc", con);
        cmd.CommandType = CommandType.Text;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);
        sd.Fill(dt);
        art1.DataSource = dt;
        art1.DataBind();

        con.Close();
    }
    protected void forgot_Click(object sender, EventArgs e)
    {
        string s = "";
        Random random = new Random();
        int length = 6;
        for (int i = 0; i < length; i++)
        {
            if (random.Next(0, 3) == 0)                     //if random.Next() == 0 then we generate a random character
            {
                s += ((char)random.Next(65, 91)).ToString();
            }
            else                                            //if random.Next() == 0 then we generate a random digit
            {
                s += random.Next(0, 9);
            }
        }


        con.Open();

        cmd = new SqlCommand("select * from faculty_details where e_mail='" + mail_id.Text + "'", con);
        cmd.CommandType = CommandType.Text;

        dt = new DataTable();
        sd = new SqlDataAdapter(cmd);

        sd.Fill(dt);

        string email = dt.Rows[0]["e_mail"].ToString();
        string f_id = dt.Rows[0]["faculty_id"].ToString(); 
        if (email == mail_id.Text)
        {
            string str = "New Password:" + s.ToString() + "\n";
            if (SendEmailUsingGmail("solution3601@gmail.com", mail_id.Text.Trim(), "Password chaged mail", str.Trim(), "360soluti"))
            {
                cmd = new SqlCommand("update faculty_login set Password='" + s.ToString() + "' where faculty_id=" + int.Parse(f_id) + "", con);
                cmd.ExecuteNonQuery();
                Response.Write("<Script>alert('Mail send')</Script>");

            }
            else
            {
                Response.Write("<Script>alert('Error in sending mail')</Script>");
            }

        }
        else
        {
            Response.Write("<Script>alert('Your mail id not inserted')</Script>");
        }
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