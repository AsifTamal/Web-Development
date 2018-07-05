using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class LoanCustomer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        HttpCookie cookie = Request.Cookies["Preference"];
        if (cookie != null)
        {
            {
                cookie = new HttpCookie("Preference");
            }
          //  cookie.Expires = DateTime.Now.AddMilliseconds(2);
            Response.Cookies.Add(cookie);
            Response.Write("Cookie Is Created");
        }
        else
        {
            Response.Redirect("LoanRequest.aspx");
        }
        


        if (IsPostBack)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string usercheck = "select count(*) from Loan where Name='" + TextBoxLoanUserName.Text + "'";
            SqlCommand cmd = new SqlCommand(usercheck, cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("Already exists");
            }
            cn.Close();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
           
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string insert = "insert into Loan(Name,Address,Mobile_No,ID_Card,Profession,Annual_Income,Reference,Ref_Contact_No,Relation_With_Reference,Refer_Address,Loan_type,Amount,Status)values(@Name,@Address,@Mobile_No,@ID_Card,@Profession,@Annual_Income,@Reference,@Ref_Contact_No,@Relation_With_Reference,@Refer_Address,@Loan_type,@Amount,'pending')";
            SqlCommand cmd = new SqlCommand(insert, cn);
           
            cmd.Parameters.AddWithValue("@Name", TextBoxLoanUserName.Text);
          
            cmd.Parameters.AddWithValue("@Address", TextBoxLoanUserAddress.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", TextBoxLoanUserMobile.Text);
            cmd.Parameters.AddWithValue("@ID_Card", TextBoxLoanUserNationalID.Text);
            cmd.Parameters.AddWithValue("@Annual_Income", TextBoxLoanUserIncome.Text);
            cmd.Parameters.AddWithValue("@Reference", TextBoxLoanUserRefName.Text);
            cmd.Parameters.AddWithValue("@Ref_Contact_No", TextBoxLoanUserRefContact.Text);
            cmd.Parameters.AddWithValue("@Refer_Address", TextBoxLoanUserRefAddress.Text);
            cmd.Parameters.AddWithValue("@Amount", TextBoxLoanAmount.Text);
          
            cmd.Parameters.AddWithValue("@Profession", DropDownListLoanUserProfession.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Relation_With_Reference", DropDownListLoanUserRefRelation.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Loan_type", DropDownListLoanType.SelectedItem.ToString());
            
            cmd.ExecuteNonQuery();
            Session["new"] = TextBoxLoanUserNationalID.Text;
         //  Response.Redirect("LoanData.aspx");
            Response.Write("Successfully Requested");
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}