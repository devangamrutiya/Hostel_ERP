﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hostel_ERP.security
{
    public partial class security : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["security_name"] == null)
                {
                    Response.Redirect("../index.aspx");
                }
                else
                {
                    lblSecurityName.Text = Session["security_name"].ToString();
                }
            }
            catch (Exception)
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void btnLogoutSecurity_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "showConfirm();", true);
        }
    }
}