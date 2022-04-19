using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MasterPage1
{
    public partial class login : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["MyLogin"];
            if (cookie != null)
            {
                TextBox1.Text = cookie["email"];
                TextBox2.Text = cookie["mot de passe"];
                connexion();
            }

        }
        private void connexion()
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-NL5CNOU\SQLEXPRESS;Initial Catalog=librairie;User ID=sa;Password=123456");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where valide=1 and email = '" + TextBox1.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            Session["pass"] = "";
            if (dr.Read())
            {
                if (dr["password"].ToString() == TextBox2.Text)
                {
                    Session["pass"] = "ok";
                }

            }


            dr.Close();
            dr = null;
            cmd = null;
            cn.Close();
            cn = null;

            if (Session["pass"].ToString() == "ok")
            {
                if (CheckBox1.Checked)
                {
                    HttpCookie c = new HttpCookie("MyLogin");
                    c["email"] = TextBox1.Text;
                    c["mot de passe"] = TextBox2.Text;
                    c.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(c);


                }


                Response.Redirect("lstOuvrages.aspx");
            }

            else
                Label1.Visible = true;

        }

        protected void btnconnecte_Click(object sender, EventArgs e)
            {
            
            connexion();
                
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("passOublier.aspx");
        }
    }
    } 
