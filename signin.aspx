<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
    <div class="col-md-12 text-center">

        <h1>Register yourself</h1><br />
    </div>
    </div>
        <div class="row">
            <div class="col-md-2">
                UserName
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" /><br /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                Password
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtPasswordRegister" CssClass="form-control" /><br /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                Display Name
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtDisplayName" CssClass="form-control" /><br /><br />
            </div>
            </div>
        <div class="row">
            <div class="col-md-2">
                Mobile No
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtMobileNo" CssClass="form-control" /><br /><br />
            </div>
            </div>
        <div class="row">
            <div class="col-md-2">
                Email
            </div>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtEmailID" CssClass="form-control" /><br /><br />
            </div>
            </div>
         <div class="row">
            <div class="col-md-2">
                
            </div>
            <div class="col-md-6">
                <asp:Button runat="server" ID="Register" Text="Register" CssClass="btn btn-primary btn-sm" OnClick="Register_Click" />
            </div>
        </div>
    </form>
</body>
</html>
