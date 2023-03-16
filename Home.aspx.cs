using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechValleyConnectionString"].ConnectionString);
        String Sqlquery = "Select * from [dbo].[Post] order by CreationDate DESC";
        objConn.Open();
        SqlCommand objCmd = new SqlCommand(Sqlquery, objConn);
        SqlDataAdapter sda = new SqlDataAdapter(objCmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        rptBlogDetails.DataSource = dt;
        rptBlogDetails.DataBind();
        objConn.Close();
    }
}