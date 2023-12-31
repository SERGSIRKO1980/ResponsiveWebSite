﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace ResponsiveWebSite
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btPassRec_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * From Users where Email='" + tbEmailId.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    String myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values ('" + myGUID + "','" +
                       Uid + "',getdate())", con);
                    cmd1.ExecuteNonQuery();

                    // send email
                    //String ToEmailAdress = dt.Rows[0][3].ToString();
                    //String UserName = dt.Rows[0][1].ToString();
                    //String EmailBody = "Hi " + UserName + ", <br /><br />Click the link bellow to reset your password <br /><br /> https://localhost:44343/RecoverPassword.aspx?Uid=" + myGUID;
                    //MailMessage PassRecMail = new MailMessage("yourmail@gmail.com", ToEmailAdress);
                    //PassRecMail.Body = EmailBody;
                    //PassRecMail.IsBodyHtml = true;
                    //PassRecMail.Subject = "Reset Password";

                    //SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    //// SMTP.UseDefaultCredentials = false;
                    //SMTP.Credentials = new NetworkCredential()
                    //{
                    //    UserName = "yourmail@gmail.com",
                    //    Password = "yourgmailpassword"
                    //};
                    //SMTP.EnableSsl = true;
                    //SMTP.Send(PassRecMail);
                    // send email end

                    lblPassRec.Text = "Check your email to reset your password";
                    lblPassRec.ForeColor = Color.Green;
                }
                else
                {
                    lblPassRec.Text = "OOps, this email id DOES NOT exist in our database ! ";
                    lblPassRec.ForeColor = Color.Red;
                }
            }
        }
    }
}