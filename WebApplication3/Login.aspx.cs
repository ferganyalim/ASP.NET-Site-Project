using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiriş_Click(object sender, EventArgs e)
        {
            if (txtKullanıcıAdı.Text == "" || txtŞifre.Text == "")
            {
                lblSonuç.Text = "Kullanıcı adı ya da şifre girmediniz";
                return;
            }

            using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["UserInfoConnectionString"].ConnectionString))
            {
                myConnection.Open();

                string query1 = "Select username, password from [dbo].[Login] where username = @username and password = @password";

                SqlCommand selectCommand = new SqlCommand(query1, myConnection);

                selectCommand.Parameters.AddWithValue("@username", txtKullanıcıAdı.Text);
                selectCommand.Parameters.AddWithValue("@password", txtŞifre.Text);

                String result = selectCommand.ExecuteScalar() as String;

                if (!String.IsNullOrEmpty(result))
                {
                    lblSonuç.Text = "Giriş yapıldı";
                }

                else
                {
                    lblSonuç.Text = "Kullanıcı adı ya da şifre yanlış";
                }
            }
        }
    }
}