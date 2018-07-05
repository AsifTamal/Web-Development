using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;

public partial class ManagerDataBase : System.Web.UI.Page
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
                                                                 
        if (IsPostBack)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string usercheck2 = "select count(*) from Manager where ManagerName='" + TextBoxManagerName.Text + "'";
            SqlCommand cmd = new SqlCommand(usercheck2, cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("Already exists");
            }
            cn.Close();
        }
    }
    protected void btnManagerInsert_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string insert = "insert into Manager(Serial_No,Guid,ManagerName,ManagerPassword,ManagerBranch)values(@serial,@guid,@name,@password,@branch)";
            SqlCommand cmd = new SqlCommand(insert, cn);
            cmd.Parameters.AddWithValue("@serial", TextBoxMSerial.Text);
            cmd.Parameters.AddWithValue("@guid", newGuid.ToString());
          
            cmd.Parameters.AddWithValue("@name", TextBoxManagerName.Text);
            cmd.Parameters.AddWithValue("@password", TextBoxManagerPassword.Text);
            cmd.Parameters.AddWithValue("@branch",DropDownListManagerBranch.SelectedItem.ToString());
            
            cmd.ExecuteNonQuery();
                Response.Redirect("ManagerDataBase.aspx");
               cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}