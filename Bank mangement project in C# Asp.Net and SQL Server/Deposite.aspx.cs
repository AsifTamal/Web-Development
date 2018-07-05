using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class Deposite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
            // cookie.Expires = DateTime.Now.AddMilliseconds(2);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("ManagerLogin.aspx");
        }
    }
    protected void ButtonShowDeposite_Click(object sender, EventArgs e)
    {

        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Registration where Accno='" + TextBoxShowDeposite.Text.Trim() + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
                if (TextBoxShowDeposite.Text.Trim() == read.GetInt32(1).ToString())
                {
                    TextBoxDepositeName.Text = read.GetString(3).ToString();
                    TextBoxDepositeBalance.Text = read.GetInt32(18).ToString().Trim();
                    
                }
            }
        }
        else
        {
            Response.Write("This id is invalid");
        }
        cn.Close();
    }
    protected void ButtonDepositte_Click(object sender, EventArgs e)
    {
       
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string deposite = "update Registration set Deposite=('"+TextBoxDepositeAmount.Text+"'+ Deposite) where Accno='" + TextBoxShowDeposite.Text.Replace("'", "''") + "'";
            SqlCommand xcmd2 = new SqlCommand(deposite, cn);
            int result = xcmd2.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Deposite Successfully");
            }
            else
            {
                Response.Write("Deposite fail");
            }
        

      
        cn.Close();
    
}
}