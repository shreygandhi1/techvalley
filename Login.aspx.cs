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

public partial class Loing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        #region localvariable
        SqlString strUserName = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        #endregion localvariable

        #region serversidevalidation
        String strErrorMessage = "";
        if (txtUserName.Text.Trim() == "")
        {
            strErrorMessage += "- Enter UserName <br />";
        }
        if (txtPassword.Text.Trim() == "")
        {
            strErrorMessage += "-Enter Password <br />" + strErrorMessage;
            return;
        }
        #endregion serversidevalidation

        #region Assign the Value
        if (txtUserName.Text.Trim() != "")
        {
            strUserName = txtUserName.Text.Trim();
        }
        if (txtPassword.Text.Trim() != "")
        {
            strPassword = txtPassword.Text.Trim();
        }

        #endregion Assign the Value

        #region User Validation
        SqlConnection objConn = new SqlConnection(ConfigurationManager.ConnectionStrings["TechValleyConnectionString"].ConnectionString);
        try
        {
            if (objConn.State != ConnectionState.Open)
                objConn.Open();

            SqlCommand objCmd = objConn.CreateCommand();
            objCmd.CommandType = CommandType.StoredProcedure;
            objCmd.CommandText = "PR_User_SelectByUserNamePassword";
            objCmd.Parameters.AddWithValue("@UserName", strUserName);
            objCmd.Parameters.AddWithValue("@Password", strPassword);
            SqlDataReader objSDR = objCmd.ExecuteReader();
            if (objSDR.HasRows)
            {
                lblMessage.Text = "Valid User";

                while (objSDR.Read())
                {
                    if (!objSDR["UserID"].Equals(DBNull.Value))
                    {
                        Session["UserID"] = objSDR["UserID"].ToString().Trim();
                    }
                    if (!objSDR["DisplayName"].Equals(DBNull.Value))
                    {
                        Session["DisplayName"] = objSDR["DisplayName"].ToString().Trim();
                    }
                    break;
                }
                Response.Redirect("~/Home.aspx", true);
            }
            else
            {
                lblMessage.Text = "Either Username or Password is not Valid";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {

        }

        objConn.Close();
    }
        #endregion User Validation
}