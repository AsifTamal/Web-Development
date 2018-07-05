using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
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
            Response.Redirect("StartPage.aspx");
        }





        if (IsPostBack)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string usercheck = "select count(*) from Registration where NameE='" + TextBoxContactName.Text + "'";
            SqlCommand cmd = new SqlCommand(usercheck, cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("Already exists");
            }
            cn.Close();
        }
    }
    protected void btnCntctSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //Guid newGuid = Guid.NewGuid();
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string insert = "insert into Contact(Serial_No,ContactName,ContactMobile,ContactEmail,ContactSms)values(@serial,@name,@mobile,@email,@sms)";
            SqlCommand cmd = new SqlCommand(insert, cn);

            cmd.Parameters.AddWithValue("@serial", TextBoxContactSerial.Text);
            cmd.Parameters.AddWithValue("@name", TextBoxContactName.Text);
            cmd.Parameters.AddWithValue("@mobile", TextBoxContactMobile.Text);
            cmd.Parameters.AddWithValue("@email", TextBoxContactEmail.Text);
            cmd.Parameters.AddWithValue("@sms", TextBoxContactSms.Text);
           
            cmd.ExecuteNonQuery();
           // Response.Redirect("ContactDatabase.aspx");
            Response.Write("Your Massage is sent successfully");
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}