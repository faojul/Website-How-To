using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
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

            Response.Redirect("Default.aspx");

        }
    }  


}