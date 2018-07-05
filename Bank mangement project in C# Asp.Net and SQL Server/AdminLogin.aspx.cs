using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
          //  cookie.Expires = DateTime.Now.AddMinutes(5);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("StartPage.aspx");
        }
    }
    protected void btnadmin_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string usercheck1 = "select count(*) from Admin where AdminName='" + TextBoxAdminName.Text + "'";
        SqlCommand cmd = new SqlCommand(usercheck1, cn);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        cn.Close();
        if (temp == 1)
        {
            cn.Open();
            string password = "select AdminPassword from Admin where AdminName='" + TextBoxAdminName.Text + "'";
            SqlCommand cmd1 = new SqlCommand(password, cn);
            string pass = cmd1.ExecuteScalar().ToString().Replace(" ", "");
            if (pass == TextBoxAdminPassword.Text)
            {
                Session["new"] = TextBoxAdminName.Text;
                Response.Redirect("AdminMain.aspx");

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