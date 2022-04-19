using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;
using System.Net;


namespace MasterPage1
{
    public partial class passOublier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where email = '" + TextBox1.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            Boolean exist = false;
            if (dr.Read())
                exist = true;



            dr.Close();
            dr = null;


            if (!exist)
                Label1.Visible = true;
            else
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("tdi2022@outlook.fr");
                mail.Subject = "Récupération du mot e passe.";
                mail.Body = "cliquez sur le lien suivant pour Récupérer votre mot de passe <br /><br /><a href = 'https://localhost:44325/RestPass.aspx?email=" + TextBox1.Text + "</ a > ";


                mail.IsBodyHtml = true;


                mail.To.Add(TextBox1.Text);

                SmtpClient smtp = new SmtpClient("smtp.live.com", 587);

                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("tdi2022@outlook.fr", "ISMO@2022");

                try
                {
                    smtp.Send(mail);
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}