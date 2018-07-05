using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class LoanData : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
            //cookie.Expires = DateTime.Now.AddMilliseconds(2);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("AdminLogin.aspx");
        }
       
        }

    protected void BtnAccept_Click(object sender, EventArgs e)
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
    cn.Open();
    string searxch = "select * from Loan where ID_Card='" + TextBoxLoanShowID.Text.Replace("'", "''") + "'";
    SqlCommand xcmsd = new SqlCommand(searxch, cn);
    xcmsd.ExecuteNonQuery();
    cn.Close();
              if (GridView1.SelectedRow.Cells[13].Text.ToString().Trim() == "pending")             
              {
                // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string update1 = "update Loan set Status='Accepted' where ID_Card='" +TextBoxLoanShowID.Text.Replace("'", "''") + "'";
        SqlCommand xcmd2 = new SqlCommand(update1, cn);
        int result = xcmd2.ExecuteNonQuery();
        if (result > 0)
        {
            Response.Write("Loan Accepted");
        }
        else
        {
            Response.Write("Loan is not accepted");
        }
              }
          
          else
          {
              Response.Write("This id is invalid");
          }
             cn.Close();
          }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxLoanShowName.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBoxLoanShowAddress.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBoxLoanShowMobile.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBoxLoanShowID.Text = GridView1.SelectedRow.Cells[4].Text;
       DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[5].Text;
        TextBoxLoanShowIncome.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBoxLoanShowRef.Text = GridView1.SelectedRow.Cells[7].Text;
        TextBoxLoanShowRefContact.Text = GridView1.SelectedRow.Cells[8].Text;
        DropDownList2.SelectedValue = GridView1.SelectedRow.Cells[9].Text;
        TextBoxLoanShowRefAddress.Text = GridView1.SelectedRow.Cells[10].Text;
       DropDownList3.SelectedValue = GridView1.SelectedRow.Cells[11].Text;
        TextBoxLoanShowAmount.Text = GridView1.SelectedRow.Cells[12].Text;
        TextBoxLoanStatus.Text = GridView1.SelectedRow.Cells[13].Text;
    }
    protected void BtnReject_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Loan where ID_Card='" + TextBoxLoanShowID.Text.Replace("'", "''") + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);
        xcmsd.ExecuteNonQuery();
        cn.Close();
        if (GridView1.SelectedRow.Cells[13].Text.ToString().Trim() == "pending")
        {
            // SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string update1 = "update Loan set Status='Rejected' where ID_Card='" + TextBoxLoanShowID.Text.Replace("'", "''") + "'";
            SqlCommand xcmd2 = new SqlCommand(update1, cn);
            int result = xcmd2.ExecuteNonQuery();
            if (result > 0)
            {
                Response.Redirect("LoanRequest.aspx");
                
            }
            else
            {
                Response.Write("Can not be rejected");
            }
        }

        else
        {
            Response.Write("This id is invalid");
        }
        cn.Close();
    }
}
    
