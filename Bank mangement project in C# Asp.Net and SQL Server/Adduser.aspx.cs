using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adduser : System.Web.UI.Page
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









        if (IsPostBack)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string usercheck = "select count(*) from Registration where NameE='" + TextBoxNameE.Text + "'";
            SqlCommand cmd = new SqlCommand(usercheck, cn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Response.Write("Already exists");
            }
            cn.Close();
        }
    }
    protected void ButtonRegister_Click(object sender, EventArgs e)
    {
       
        try
        {
            //Guid newGuid = Guid.NewGuid();
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringUser"].ConnectionString);
            cn.Open();
            string insert = "insert into Registration(Branch,Accno,NameB,NameE,Father,Mother,Address,Nationality,Religion,Idcard,City,State,Gender,Mobile,Birthday,Question,Answar,Acctype,Deposite)values(@Branch,@Accno,N'"+TextBoxNameB.Text+"',@NameE,@Father,@Mother,@Address,@Nationality,@Religion,@Idcard,@City,@State,@Gender,@Mobileno,@Deathofbirth,@Question,@Answar,@Acctype,@deposite)";
            SqlCommand cmd = new SqlCommand(insert, cn);
            //cmd.Parameters.AddWithValue("@id", newGuid.ToString());
           // cmd.Parameters.AddWithValue("@Question", TextBoxUN.Text);
            cmd.Parameters.AddWithValue("@Accno", TextBoxAccno.Text);
           // cmd.Parameters.AddWithValue("@NameB", TextBoxNameB.Text);
            cmd.Parameters.AddWithValue("@NameE", TextBoxNameE.Text);
            cmd.Parameters.AddWithValue("@Father", TextBoxFather.Text);
            cmd.Parameters.AddWithValue("@Mother", TextBoxMother.Text);
            cmd.Parameters.AddWithValue("@Address", TextBoxAddress.Text);
            cmd.Parameters.AddWithValue("@Nationality", TextBoxNationality.Text);
             cmd.Parameters.AddWithValue("@Idcard", TextBoxIDcard.Text);
            cmd.Parameters.AddWithValue("@City", TextBoxCity.Text);
            cmd.Parameters.AddWithValue("@Mobileno", TextBoxMobile.Text);
            cmd.Parameters.AddWithValue("@Deathofbirth", TextBoxBirth.Text);
            cmd.Parameters.AddWithValue("@Answar", TextBoxAnswar.Text);
            cmd.Parameters.AddWithValue("@deposite", TextBoxUserDeposite.Text);
            cmd.Parameters.AddWithValue("@Religion", DropDownListReligion.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Branch", DropDownListBranch.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@State", DropDownListState.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Question", DropDownListQuestion.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Acctype", DropDownListAcctype.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Gender", RadioButtonListGender.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
                Response.Write("Registration Successful");
               cn.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}