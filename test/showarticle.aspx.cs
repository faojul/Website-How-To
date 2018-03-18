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

public partial class showarticle : System.Web.UI.Page
{
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadArticle();
        }

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
    }


   private void LoadArticle()
    {
        string constr = ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
       SqlCommand cmd = new SqlCommand("select * from Article", con);
       GridView1.DataSource = cmd.ExecuteReader();
       GridView1.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
   {
       Response.Redirect("singlearticle.aspx?ID=" + ((LinkButton)sender).Text);
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