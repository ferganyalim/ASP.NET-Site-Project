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
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayıt_Click(object sender, EventArgs e)
        {
            using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["SQL TutorialConnectionString"].ConnectionString))
            {
                string query1 = "Insert into [dbo].[Login] (username,password) Values (@username,@password)";
                string query2 = "Select username from [dbo].[Login] where username = @username";

                SqlCommand insertCommand = new SqlCommand(query1, myConnection);
                SqlCommand selectCommand = new SqlCommand(query2, myConnection);

                insertCommand.Parameters.AddWithValue("@username", txtKullanıcıAdı.Text);
                insertCommand.Parameters.AddWithValue("@password", txtŞifre.Text);
                selectCommand.Parameters.AddWithValue("@username", txtKullanıcıAdı.Text);

                myConnection.Open();

                String result = selectCommand.ExecuteScalar() as String;

                if (String.IsNullOrEmpty(result))
                {
                    insertCommand.ExecuteNonQuery();
                    lblSonuç.Text = "Hesabınız Başarıyla Açıldı";
                }

                else
                {
                    lblSonuç.Text = "Bu Kullanıcı Adı Zaten Alınmış";
                }
            }

        }
    }
}