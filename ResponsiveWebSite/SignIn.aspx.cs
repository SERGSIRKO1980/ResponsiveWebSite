using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ResponsiveWebSite
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["Uname"] != null && Request.Cookies["PWD"] != null)
                {
                    Username.Text = Request.Cookies["Uname"].Value;
                    Psssword.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * From Users where Usename='" + Username.Text + "' and Password='" + Psssword.Text + "'",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Uname"].Value = Username.Text;
                        Response.Cookies["PWD"].Value = Psssword.Text;

                        Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

                    }
                    else
                    {
                        Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    String Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "U")
                    {
                        Session["Usename"] = Username.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }

                    if (Utype == "A")
                    {
                        Session["Usename"] = Username.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }
                }
                else
                {
                    lblerror.Text = "Invalid Username or Password !";
                }
            }
        }

        protected void lbForgotPass_Click(object sender, EventArgs e)
        {

        }
    }
}