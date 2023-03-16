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

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Register_Click(object sender, EventArgs e)
    {
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechValleyConnectionString"].ConnectionString);
        #region Local varable
        SqlString strUserName = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        SqlString strDisplayName = SqlString.Null;
        SqlString strMobileNo = SqlString.Null;
        SqlString strEmailID = SqlString.Null;
        #endregion Local varable
        #region ServerSide Validation
        String strErrorMessage1 = "";
        if (txtUserName.Text.Trim() == "")
        {
            strErrorMessage1 += "Enter UserName<br />";
        }
        if (txtPasswordRegister.Text.Trim() == "")
        {
            strErrorMessage1 += "Enter Password<br />";
        }
        if (txtDisplayName.Text.Trim() == "")
        {
            strErrorMessage1 += "Enter Display Name<br />";
        }
        if (txtMobileNo.Text.Trim() == "")
        {
            strErrorMessage1 += "Enter Mobile No<br />";
        }
        if (txtEmailID.Text.Trim() == "")
        {
            strErrorMessage1 += "Enter Email<br />";
            return;
        }
        #region gather information
        if (txtUserName.Text.Trim() != "")
        {
            strUserName = txtUserName.Text.Trim();
        }
        if (txtPasswordRegister.Text.Trim() != "") 
        {
            strPassword = txtPasswordRegister.Text.Trim();
        }
        if (txtDisplayName.Text.Trim() != "") 
        {
            strDisplayName = txtDisplayName.Text.Trim();
        }
        if (txtMobileNo.Text.Trim() != "") 
        {
            strMobileNo = txtMobileNo.Text.Trim();
        }
        if (txtEmailID.Text.Trim() != "") 
        {
            strEmailID = txtEmailID.Text.Trim();
        }
        #endregion gather information
        #endregion ServerSide Validation
        #region set connection and command
        if (objConn.State != ConnectionState.Open)
            objConn.Open();
        SqlCommand objcmd = objConn.CreateCommand();
        objcmd.CommandType = CommandType.StoredProcedure;
        objcmd.Parameters.AddWithValue("@UserName", strUserName);
        objcmd.Parameters.AddWithValue("@Password", strPassword);
        objcmd.Parameters.AddWithValue("@DisplayName", strDisplayName);
        objcmd.Parameters.AddWithValue("@MobileNo", strMobileNo);
        objcmd.Parameters.AddWithValue("@EmailID", strEmailID);
        #endregion set connecion and command
        #region InsertUser
        objcmd.CommandText = "[dbo].[PR_User_Insert]";
        objcmd.ExecuteNonQuery();
        txtUserName.Text = "";
        txtPasswordRegister.Text = "";
        txtDisplayName.Text = "";
        txtMobileNo.Text = "";
        txtEmailID.Text = "";
        #endregion InsertUser
        objConn.Close();
    }

    }