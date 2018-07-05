using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class SanctionLoan : System.Web.UI.Page
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
            Response.Redirect("AdminLogin.aspx");
        }
    }
    protected void ButtonShowSanctionLoan_Click(object sender, EventArgs e)
    {
      /*  SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Loan where ID_Card='" + TextBoxSction_ID.Text.Trim() + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
               
            }
        }
        else
        {
            Response.Write("This id is invalid");
        }
        cn.Close();*/
    }
    protected void ButtonSanctionLoan_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();

        string searxch = "select * from Loan where ID_Card='" + TextBoxSction_ID.Text.Replace("'", "''") + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);
        xcmsd.ExecuteNonQuery();
        cn.Close();
        try
        {
        if (GridViewSanctionLoan.SelectedRow.Cells[13].Text.ToString().Trim() == "Accepted")
        {
            // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();

            string sanction = "delete from Loan where ID_Card='" + TextBoxSction_ID.Text.Replace("'", "''") + "'";

            SqlCommand xcmd2 = new SqlCommand(sanction, cn);
            int result = xcmd2.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Sanctioned successfully");
            }
            else
            {
                Response.Write("Sanctioned not successful");
            }
            
        }

        else if (GridViewSanctionLoan.SelectedRow.Cells[13].Text.ToString().Trim() == "Rejected")
        {
            // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();

            string sanction = "delete from Loan where ID_Card='" + TextBoxSction_ID.Text.Replace("'", "''") + "'";

            SqlCommand xcmd2 = new SqlCommand(sanction, cn);
            int result = xcmd2.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Write("Your Request is Rejected");
            }
            else
            {
                Response.Write("Rejection is not successful");
            }
            //  
        }
        }
        catch(Exception ex)
        {
            Response.Write("Select first");
        
        }
       
        cn.Close();
    }
    protected void GridViewSanctionLoan_SelectedIndexChanged(object sender, EventArgs e)
    {
       // TextBoxSction_ID.Text=GridViewSanctionLoan.SelectedRow.Cells[4].Text;
    }
}