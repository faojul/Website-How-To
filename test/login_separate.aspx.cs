using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;


public partial class login_separate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select Username from Registration where Username = '" + TextBoxUnamelogin.Text.ToString() + "' and Password = '" + TextBoxPasslogin.Text.ToString() + "' ";
        SqlDataReader reader = select.ExecuteReader();
        if (reader.Read())
        {
            Session["login"] = TextBoxUnamelogin.Text.ToString();
            if (CheckBoxRemember.Checked)
            {

                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie["username"] = TextBoxUnamelogin.Text;
                    userCookie.Expires = DateTime.Now.AddMinutes(30);

                    Response.Cookies.Add(userCookie);
                }
                

            }


            Response.Redirect("user.aspx");
        }
        reader.Close();
        con.Close();
    }
   
}