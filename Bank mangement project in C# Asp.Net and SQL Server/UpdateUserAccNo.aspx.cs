using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
//using System.Data;
public partial class UpdateUserAccNo : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
        cn.Open();
        string searxch = "select * from Registration where Accno='" + TextBoxUpdateAccNo.Text.Trim() + "'";
        SqlCommand xcmsd = new SqlCommand(searxch, cn);

        SqlDataReader read = xcmsd.ExecuteReader();

        if (read.HasRows)
        {
            if (read.Read())
            {
                if (TextBoxUpdateAccNo.Text.Trim() == read.GetInt32(1).ToString())
                {
                 //  TextBoxAccnoUpdate.Text = read.GetInt32(1).ToString().Trim();
                 //   TextBoxNameBUpdate.Text = read.GetString(2).ToString().Trim();
                 //   TextBoxNameEUpdate.Text = read.GetString(3).ToString().Trim();
                  //  TextBoxFatherUpdate.Text = read.GetString(4).ToString().Trim();
                 //   TextBoxMotherUpdate.Text = read.GetString(5).ToString().Trim();
                    TextBoxAddressUpdate.Text = read.GetString(6).ToString().Trim();
                   // TextBoxNationalityUpdate.Text = read.GetString(7).ToString().Trim();
                  //  TextBoxIDcardUpdate.Text = read.GetString(9).ToString().Trim();
                    TextBoxCityUpdate.Text = read.GetString(10).ToString().Trim();
                  //  TextBoxBirthUpdate.Text = read.GetString(14).ToString().Trim();
                    TextBoxMobileUpdate.Text = read.GetString(13).ToString().Trim();
                    TextBoxAnswarUpdate.Text = read.GetString(16).ToString().Trim();
                    TextBoxUserDepositeUpdate.Text = read.GetInt32(18).ToString().Trim();
                    DropDownListBranchUpdate.SelectedValue = read.GetString(0).ToString().Trim();
                    DropDownListReligionUpdate.SelectedValue = read.GetString(8).ToString().Trim();
                    DropDownListStateUpdate.SelectedValue = read.GetString(11).ToString().Trim();
                    DropDownListQuestionUpdate.SelectedValue = read.GetString(15).ToString().Trim();
                  //  DropDownListAcctypeUpdate.SelectedValue = read.GetString(17).ToString().Trim();
                    RadioButtonListGenderUpdate.SelectedValue = read.GetString(12).ToString().Trim();

                }
            }
        }
        else
        {
            Response.Write("This id is invalid");
        }
        cn.Close();
    }

    protected void ButtonUpdate_Click(object sender, EventArgs e)
    {
        
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();

            string update = "update Registration set Branch='" + DropDownListBranchUpdate.SelectedItem.ToString().Replace("'", "''") + "',Address='" + TextBoxAddressUpdate.Text.Replace("'", "''") + "',Religion='" + DropDownListReligionUpdate.SelectedItem.ToString().Replace("'", "''") + "',City='" + TextBoxCityUpdate.Text.Replace("'", "''") + "',State='" + DropDownListStateUpdate.SelectedItem.ToString().Replace("'", "''") + "',Gender='" + RadioButtonListGenderUpdate.SelectedItem.ToString().Replace("'", "''") + "',Mobile='" + TextBoxMobileUpdate.Text.Replace("'", "''") + "',Question='" + DropDownListQuestionUpdate.SelectedItem.ToString().Replace("'", "''") + "',Answar='" + TextBoxAnswarUpdate.Text.Replace("'", "''") + "',Deposite='" + TextBoxUserDepositeUpdate.Text.Replace("'", "''") + "' where Accno='" + TextBoxUpdateAccNo.Text.Replace("'", "''") + "'";
          
            
            SqlCommand xcmd2 = new SqlCommand(update, cn);
            int result = xcmd2.ExecuteNonQuery();

            
            if (result>0)
            {
             Response.Write("Update successfull");
            }
            else
            {
               Response.Write("Update not successfull");
            }
         
            cn.Close();
       
       
    
    }
}