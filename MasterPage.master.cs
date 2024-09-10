using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        //if (Session["user_name"] != null)
        //{
        //    test.Visible = false;
        //    test1.Visible = true;
        //    lbluser.Text = Session["user_name"].ToString();
            
        //}
        //else
        //{
        //    test1.Visible = false;
        //    test.Visible = true;
            
        //}
    }
    protected void but_Click(object sender, EventArgs e)
    {
        
    }
    //protected void lnkbut_Click(object sender, EventArgs e)
    //{
    //    Session["user_name"] = null;
    //    Response.Redirect("Default.aspx");
    //}
}
