using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage1
{
    public partial class Déconnecter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pass"] = "";
            HttpCookie cookie = Request.Cookies["MyLogin"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("login.aspx");
        }
    }
}