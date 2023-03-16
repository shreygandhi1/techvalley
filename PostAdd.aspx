<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostAdd.aspx.cs" Inherits="PostAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
    <div class="col-md-12">
        <h1>Post Add</h1><br />
    </div>
    </div>
        <div class="row">
            <div class="col-md-12">
                <asp:Label runat="server" ID="lblMessage" EnableViewState="false" />
            </div>
        </div>
        <div class="row">
        <div class="col-md-4">
            Post Title
        </div>
         <div class="col-md-4">
             <asp:TextBox runat="server" ID="txtPostTitle" CssClass="form-control" /><br />
        </div>
    </div>
        <div class="row">
            <div class="col-md-4">
                Post Photo
            </div>
            <div class="col-md-4">
                <asp:FileUpload ID="fuPostPhoto" runat="server" />
            </div>
        </div><br />
        <div class="row">
            <div class="col-md-4">
                Post Description
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtPostDescription" CssClass="form-control" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Short Discription
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtShortDiscription" CssClass="form-control" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                PostURL
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtPostUrl" CssClass="form-control" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Creation Date
            </div>
            <div class="col-md-4">
                <asp:TextBox runat="server" ID="txtCreationDate" CssClass="form-control" type="Date" /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-4">
                <asp:Button runat="server" ID="btnSave" CssClass="btn btn-sm btn-primary" Text="Save" OnClick="btnSave_Click" />
            </div>
        </div>
    </form>
</body>
</html>
