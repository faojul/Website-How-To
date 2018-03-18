using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
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
        DataSet DS = new DataSet();
        string strPhysicalPath = Server.MapPath("countries.xml");
        DS.ReadXml(strPhysicalPath);
        DropDownCountry.DataTextField = "countryName";
        DropDownCountry.DataSource = DS;
        DropDownCountry.DataBind();

        

        
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]

    public static List<string> GetCity(string prefixText)
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["testConnectionString"].ToString();
        SqlConnection con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Article where Title like @City+'%'", con);
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
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            con.Open();
            String insertQuery = "insert into Registration (Id,Username,Email,Password,Country) values (@id, @Uname, @email, @password, @country)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@id", newGuid.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUname.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", DropDownCountry.SelectedItem.ToString());
            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error :" + ex.ToString());
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxUname.Text = "";
        TextBoxEmail.Text="";
        TextBoxPass.Text = "";
        TextBoxRPass.Text = "";
        
    }



    
}