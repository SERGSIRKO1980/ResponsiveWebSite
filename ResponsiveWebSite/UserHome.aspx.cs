﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResponsiveWebSite
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();

            if (Session["Usename"] != null ) 
            {
                btnSignOut.Visible = true;
                btnSignIn.Visible = false;
                lblSuccess.Text = "Login Success, Welcome "+ Session["Usename"].ToString()+"";
            }
            else
            {
                btnSignOut.Visible = false;
                btnSignIn.Visible = true;
            }
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["Usename"] = null;
            Response.Redirect("~/Default.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
        public void BindCartNumber()
        {
            if (Request.Cookies["CartPID"] != null)
            {
                string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                string[] ProductArray = CookiePID.Split(',');
                int ProductCount = ProductArray.Length;
                pCount.InnerText = ProductCount.ToString();
            }
            else
            {
                pCount.InnerText = 0.ToString();
            }
        }
    }
    
}