using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.IO;

public partial class singlearticle : System.Web.UI.Page
{
    SqlCommand cmd;
     string constr = ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

            string idstr = Request.QueryString["ID"];
            int id = Convert.ToInt32(idstr);
            if (id == null)
                Response.Redirect("showarticle.aspx");

            SqlConnection con = new SqlConnection(constr);
            SqlCommand select = new SqlCommand();
            con.Open();
            select.Connection = con;

            select.CommandText = "select * from Article where ID = '" + id + "'";
            SqlDataReader reader = select.ExecuteReader();
            reader.Read();
            Label10.Text = reader["Title"].ToString();
            string snew=reader["Article"].ToString();
           // snew=snew.Replace(" ", "&nbsp;");
              string nsnew=snew.Replace("\n", "<br /> ");
              Label20.Text = nsnew;
             
            Label40.Text = "Author : "+reader["Username"].ToString();
            con.Close();
            LoadComment();
        }

        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];

        if (userCookie != null || Session["login"] != null)
        {
            Button4.Text = "logout";
            if (userCookie == null && Session["login"] != null)
            {
                Label50.Text = Session["login"].ToString();
            }
            else
            {
                Label50.Text = userCookie["username"];

            }





        }
        else
        {
            Button4.Text = "login";
            Label50.Visible = false;
        }
    }


    protected void LoadComment()
    {
        string idstr = Request.QueryString["ID"];
        int id = Convert.ToInt32(idstr);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        con.Open(); //
        //SELECT * FROM tblSharepost ORDER BY Id DESC
        cmd = new SqlCommand("SELECT * FROM Comment where ArticleID = '"+id+"'", con);
        SqlDataReader reader = cmd.ExecuteReader();
        int i = 1;
        while (reader.Read())
        {
            Label objLabel = new Label();
            objLabel.ID = "label" + i.ToString();

            objLabel.Text = "<a><h4 style=\"color:blue;\">" + reader["Username"].ToString() + ": </h4></a>";
            Label objLabel2 = new Label();
            objLabel2.ID = "lbl" + i.ToString();
            objLabel2.Text = "<h5>" + reader["Comment"].ToString() + "</h5>";

            
            placeholder1.Controls.Add(objLabel);
            placeholder1.Controls.Add(objLabel2);
            //placeholder1.Controls.Add(new LiteralControl("<hr />"));
            i++;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text != null && Session["login"] != null)
        {
            string idstr = Request.QueryString["ID"];
            int id = Convert.ToInt32(idstr);
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
                String insertQuery = "insert into Comment (Comment,ArticleID,Username) values (@title, @article,@Username)";
                SqlCommand com = new SqlCommand(insertQuery, con);
                com.Parameters.AddWithValue("@title", TextBox1.Text);
                com.Parameters.AddWithValue("@article", id);
                com.Parameters.AddWithValue("@Username", username);
                com.ExecuteNonQuery();

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error :" + ex.ToString());
            }
        }
        else
        {
            Label30.Text = "You are not Login. Please Log in";
        }
        
        LoadComment();
        TextBox1.Text = null;
        
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> GetCity(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Registration where Username like @City+'%'", con);
        cmd.Parameters.AddWithValue("@City", prefixText);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        List<string> CityNames = new List<string>();
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            CityNames.Add(dt.Rows[i][1].ToString());

        }
        return CityNames;
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


            if (userCookie != null)
            {
                userCookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(userCookie);
            }
            Response.Redirect("user.aspx");

        }
    }  
}