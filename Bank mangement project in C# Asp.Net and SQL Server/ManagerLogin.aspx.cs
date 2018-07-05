using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class ManagerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
           // cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("StartPage.aspx");
        }
        
    }
    protected void ButtonManager_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string usercheck2 = "select count(*) from Manager where ManagerName='" + TextBoxMName.Text + "'";
        SqlCommand cmd = new SqlCommand(usercheck2, cn);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        cn.Close();
        if (temp == 1)
        {
            cn.Open();
            string password = "select ManagerPassword from Manager where ManagerName='" + TextBoxMName.Text + "'";
            SqlCommand cmd1 = new SqlCommand(password, cn);
            string pass = cmd1.ExecuteScalar().ToString().Replace(" ", "");
            if (pass == TextBoxMPassword.Text)
            {
                Session["new"] = TextBoxMName.Text;
                Response.Redirect("ManagerMain.aspx");

            }
            else
            {
                Response.Write("Password is not correct");
            }


        }
        else
        {
            Response.Write("User Name is not correct");
        }
    }
}