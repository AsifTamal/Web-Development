using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StartPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie == null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
           // cookie.Expires = DateTime.Now.AddHours(2);
            Response.Cookies.Add(cookie);
            ///Response.Write("Cookie Is Created");
        }
    }
}