using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class BalanceTransfer : System.Web.UI.Page
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
    protected void ButtonTransfer_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Registration where Accno='"+TextBoxTransferFromAcc.Text+"'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
                int data = read.GetInt32(18);
                BalanceTransFrom(data);
            }
        }

        cn.Close();
    }

    private void BalanceTransFrom(int data1)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);

        if (data1 > Convert.ToInt32(TextBoxTransferAmount.Text))
        {
            // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string transferFrom = "update Registration set Deposite=(Deposite - '" + TextBoxTransferAmount.Text + "') where Accno='" + TextBoxTransferFromAcc.Text.Replace("'", "''") + "'";
            string transferTo = "update Registration set Deposite=(Deposite + '" + TextBoxTransferAmount.Text + "') where Accno='" + TextBoxTransferToAcc.Text.Replace("'", "''") + "'";
            SqlCommand xcmd2 = new SqlCommand(transferFrom, cn);
            SqlCommand xcmd3 = new SqlCommand(transferTo, cn);
            int result1 = xcmd2.ExecuteNonQuery();
            int result2 = xcmd3.ExecuteNonQuery();
            if (result1 > 0)
            {
                Response.Write("Transfer Successfully");
            }
            else
            {
                Response.Write("Transfer fail");
            }


        }
        else
        {
            Response.Write("Amount must be smaller then Balance");
        }
        cn.Close();
    }

   
}