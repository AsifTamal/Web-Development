using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class Withdraw : System.Web.UI.Page
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
    protected void ButtonShowWithdrawAcc_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Registration where Accno='" + TextBoxWithdrawID.Text.Trim() + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
                if (TextBoxWithdrawID.Text.Trim() == read.GetInt32(1).ToString())
                {
                    TextBoxWithdrawName.Text = read.GetString(3).ToString();
                    TextBoxWithdrawBalance.Text = read.GetInt32(18).ToString().Trim();

                }
            }
        }
        else
        {
            Response.Write("This id is invalid");
        }
        cn.Close();
    }
    protected void ButtonWithdraw_Click(object sender, EventArgs e)
    {
         SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Registration where Accno='" + TextBoxWithdrawID.Text.Trim() + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
                int data = read.GetInt32(18);
                WithdrawAmount(data);
            }
        }
        
        cn.Close();
    }

    private void WithdrawAmount(int dat)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        
        if (dat > Convert.ToInt32(TextBoxWithdrawAmount.Text))
        {
            // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string Withdraw = "update Registration set Deposite=(Deposite - '" + TextBoxWithdrawAmount.Text + "') where Accno='" + TextBoxWithdrawID.Text.Replace("'", "''") + "'";
            SqlCommand xcmd2 = new SqlCommand(Withdraw, cn);
            int result = xcmd2.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Withdraw Successfully");
            }
            else
            {
                Response.Write("Withdraw fail");
            }


        }
        else
        {
            Response.Write("Amount must be smaller then Balance");
        }
        cn.Close();
    }
}