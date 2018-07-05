using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class LoanRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
            // cookie.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("ManagerLogin.aspx");
        }
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("LoanCustomer.aspx");
    }
}