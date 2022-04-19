using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MasterPage1
{
    public partial class lstOuvrages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-NL5CNOU\SQLEXPRESS;Initial Catalog=librairie;User ID=sa;Password=123456");
            cn.Open();
            SqlCommand com = new SqlCommand("select * from ouvrage",cn);
            SqlDataReader dr = com.ExecuteReader();
            lstOuvragess.InnerHtml = "<select id=oubrage>";
            while (dr.Read())
            {
                lstOuvragess.InnerHtml +="<option>"+dr["nomouvr"]+"<option/>";
            }
            dr.Close();
            com = null;
            cn.Close();
            cn = null;



        }
    }
}