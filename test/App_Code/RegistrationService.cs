using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for RegistrationService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class RegistrationService : System.Web.Services.WebService {

    public RegistrationService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void UserNameExists(string username)
    {

        bool userNameInUse= false;

        string cs = ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        using (SqlConnection con=new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("spUserNameExists ", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter()
            {

                ParameterName = "@Username",
                Value = username
            });

            con.Open();
            userNameInUse = Convert.ToBoolean(cmd.ExecuteScalar());
        }
        RS reg = new RS();
        reg.UserName = username;
        reg.UserNameInUSe = userNameInUse;

        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(reg));
    }
    
}
