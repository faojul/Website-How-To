using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Write_Article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];


        if (userCookie != null || Session["login"] != null)
        {
            Button4.Text = "logout";
            if (userCookie == null && Session["login"] != null)
            {
                Label1.Text = Session["login"].ToString();
            }
            else
            {
                Label1.Text = userCookie["username"];

            }





        }
        else
        {
            Button4.Text = "login";
            Label1.Visible = false;
        }


        if (userCookie != null || Session["login"] != null)
        {
            Panel2.Visible = false;
            Panel1.Visible = true;
            

           
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        try
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            //con.Open();
            //String insertQuery = "insert into Articles (Title,Article) values (@title, @article)";
            //SqlCommand com = new SqlCommand(insertQuery, con);
            //com.Parameters.AddWithValue("@title", TextBoxtitle.Text);
            //com.Parameters.AddWithValue("@article", TextBoxArticle.Text);

            //com.ExecuteNonQuery();
          
            //con.Close();

            string username = Session["login"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            con.Open();
            String insertQuery = "insert into Article (Title,Article,Username) values (@title, @article,@Username)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@title", TextBoxtitle.Text);
            com.Parameters.AddWithValue("@article", TextBoxArticle.Text);
            com.Parameters.AddWithValue("@Username", username);
            com.ExecuteNonQuery();
           
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error :" + ex.ToString());
        }

        TextBoxtitle.Text = null;
        TextBoxArticle.Text = null;
        Response.Redirect("showarticle.aspx");
        
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {


        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        if (userCookie == null && Session["login"] == null)
        {
            Response.Redirect("login_separate.aspx");
        }
        else
        {

            Session.Clear();

            if(userCookie !=null)
            {
                userCookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(userCookie);
            }

            Response.Redirect("user.aspx");

        }
    }  
}