﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class techvalley : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("~/Login.aspx", true);
        }

        if (!Page.IsPostBack)
        {
            if (Session["DisplayName"] != null)
            {
                lblUserName.Text = "Hi " + Session["DisplayName"] + "!";
            }
        }
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/Login.aspx", true);
    }
}
