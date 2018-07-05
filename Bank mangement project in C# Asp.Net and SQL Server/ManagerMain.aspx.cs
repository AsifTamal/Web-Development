using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class ManagerMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];

        if (Session["new"] != null)
        {
            if (cookie == null)
            {
                cookie = new HttpCookie("Preference");


                //cookie["Name"] = Session["new"];
                LabelManager.Text = "Welcome," + Session["new"];
               // cookie.Expires = DateTime.Now.AddHours(2);
                Response.Cookies.Add(cookie);
            }

        }
        else
        {
            Response.Redirect("ManagerLogin.aspx");
        }
    }
    
    protected void ButtonMLogout_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("ManagerLogin.aspx");
    }
}