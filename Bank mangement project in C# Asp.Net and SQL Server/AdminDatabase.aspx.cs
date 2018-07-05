using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class AdminDatabase : System.Web.UI.Page
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
            Response.Redirect("AdminLogin.aspx");
        }

        if (IsPostBack)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string usercheck6 = "select count(*) from Admin where AdminName='" + TextBoxAdminNameUpdate.Text + "'";
            SqlCommand cmd = new SqlCommand(usercheck6, cn);
          /*  int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("Already exists");
            }*/
            cn.Close();
        }
    }
    protected void btnAdminUpdate_Click(object sender, EventArgs e)
    {
        try
            
        {
            //Session["new"] = TextBoxAdminNameUpdate.Text;
            Guid newGuid = Guid.NewGuid();
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string insert = "insert into Admin(AdminGuid,AdminName,AdminPassword,Serial_no)values(@adminguid,@adminname,@adminpass,@Serialno)";
            SqlCommand cmd = new SqlCommand(insert, cn);
            cmd.Parameters.AddWithValue("@adminguid", newGuid.ToString());
            
            cmd.Parameters.AddWithValue("@adminname", TextBoxAdminNameUpdate.Text);
            
            cmd.Parameters.AddWithValue("@adminpass", TextBoxAdminPasswordUpdate.Text);
            cmd.Parameters.AddWithValue("@Serialno", TextBoxSerialUpdate.Text);
            cmd.ExecuteNonQuery();
           
                Response.Redirect("AdminDatabase.aspx");
            
             
                cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    
}