using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Configuration;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        
            HttpCookie userCookie;
            userCookie = Request.Cookies["Preferences"];

            if (userCookie == null && Session["login"] == null)
            {
                Label2.Text = "Not logged in";


                //if (!userCookie.Value.Equals(-1))
                //{
                //    Session.Clear();
                //    Session["Login"] = TextBoxUnamelogin.Text.ToString();
                //    Response.Redirect("user.aspx");


                //}
            }
            else if (userCookie == null && Session["login"] != null)
            {
                Label2.Text = Session["login"].ToString();
            }
            else
            {
                Label2.Text = userCookie["username"];

                //if (!userCookie.Value.Equals(-1))
                //{
                //    Session.Clear();
                //    Session["login"] = TextBoxUnamelogin.Text.ToString();

                //}

            }
        
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
                Label2.Text = userCookie["username"];
                
            }
            
            
            Response.Redirect("user.aspx");
        }
        reader.Close();
        con.Close();

       
        
        

    }


    
}