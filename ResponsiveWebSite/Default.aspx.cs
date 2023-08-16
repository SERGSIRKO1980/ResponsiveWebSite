using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResponsiveWebSite
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            BindCartNumber();
            if (Session["Usename"] != null)
            {
                btnSigin.Visible = false;
                btnSignup.Visible = false;
                btnSignOut.Visible = true;
            }
            else
            {
                btnSignup.Visible = true;
                btnSigin.Visible = true;
                btnSignOut.Visible = false;
            }
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

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session["Usename"] = null;
            Response.Redirect("~/Default.aspx");
        }
    }
}