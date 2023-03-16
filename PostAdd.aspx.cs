using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PostAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlString strPostTitle = SqlString.Null;
        SqlString strPostDescription = SqlString.Null;
        SqlString strShortDiscription = SqlString.Null;
        SqlString strPostUrl = SqlString.Null;
        SqlString strCreationDate = SqlString.Null;
        String strErrorMessage = "";

        if (txtPostTitle.Text.Trim() == "")
        {
            strErrorMessage += "Enter Post Title<br />"; 
        }
        if (txtPostDescription.Text.Trim() == "")
        {
            strErrorMessage += "Enter Post Description<br />";
        }
        if(txtShortDiscription.Text.Trim()== "")
        {
            strErrorMessage += "Enter Short Discription<br />";
        }
        if(txtPostUrl.Text.Trim() == "")
        {
            strErrorMessage += "enter URL of the post which you want to create<br />";
        }
        if (txtCreationDate.Text.Trim() == "")
        {
            strErrorMessage += "Enter Creation Date Of Post<br />";
        }
        if (strErrorMessage != "")
        {
            lblMessage.Text = strErrorMessage;
            return;
        }
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechValleyConnectionString"].ConnectionString);
        try
        {
            String PostPhoto = "";
            if(fuPostPhoto.HasFile)
            {
                PostPhoto = "~/UserContent/" + fuPostPhoto.FileName.ToString().Trim();
                fuPostPhoto.SaveAs(Server.MapPath(PostPhoto));
            }
            if (objConn.State != ConnectionState.Open)
                objConn.Open();
            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            strPostTitle = txtPostTitle.Text.Trim();
            strPostDescription = txtPostDescription.Text.Trim();
            strCreationDate = txtCreationDate.Text.Trim();
            strShortDiscription = txtShortDiscription.Text.Trim();
            strPostUrl = txtPostUrl.Text.Trim();
            objCmd.Parameters.AddWithValue("@PostTitle", strPostTitle);
            objCmd.Parameters.AddWithValue("@PhotoPath", PostPhoto);
            objCmd.Parameters.AddWithValue("@PostDiscription", strPostDescription);
            objCmd.Parameters.AddWithValue("@ShortDiscription", strShortDiscription);
            objCmd.Parameters.AddWithValue("@PostUrl", strPostUrl);
            objCmd.Parameters.AddWithValue("@CreationDate", strCreationDate);
            objCmd.CommandText = "PR_Post_Insert";
            objCmd.ExecuteNonQuery();
            txtPostTitle.Text = "";
            txtPostDescription.Text = "";
            txtCreationDate.Text = "";
            txtShortDiscription.Text = "";
            txtPostUrl.Text = "";

        }
        catch(Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            if (objConn.State == ConnectionState.Open)
                objConn.Close();
        }
    }
}