using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MasterPage1
{
    public partial class lstOuvrages2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-NL5CNOU\SQLEXPRESS;Initial Catalog=librairie;User ID=sa;Password=123456");
                cn.Open();
                SqlCommand comm = new SqlCommand("select * from classification", cn);
                SqlDataReader dr = comm.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                DropDownList1.DataTextField = "LIBRUB";
                DropDownList1.DataValueField = "NUMRUB";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();


                dt = null;
                dr.Close();
                dr = null;
                comm = null;
                cn.Close();
                cn = null;
            }
            chargerOuvrages();









        }
        private void chargerOuvrages()
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-NL5CNOU\SQLEXPRESS;Initial Catalog=librairie;User ID=sa;Password=123456");
            cn.Open();
            SqlCommand comm = new SqlCommand("select * from ouvrage where NUMRUB = "+DropDownList1.SelectedValue, cn);
            SqlDataReader dr = comm.ExecuteReader();
            lstOuvrages3.InnerHtml= "";
            while (dr.Read())
            {
                lstOuvrages3.InnerHtml += dr["nomouvr"]+"<br/>\n";
            }


            dr = null;
            comm = null;
            cn.Close();
            cn = null;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            chargerOuvrages();
        }
    }
}