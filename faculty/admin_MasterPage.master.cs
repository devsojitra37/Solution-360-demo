﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["faculty_id"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        if(!IsPostBack)
        {
            login.Text = Session["user_name"].ToString();
        }
    }
}
