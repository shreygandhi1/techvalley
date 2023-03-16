<%@ Page Title="" Language="C#" MasterPageFile="~/techvalley.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <style>
        .itemcontainer {
            float:left;
            margin:20px;
        }
    </style>
    <div class="body">
    <asp:Repeater ID="rptBlogDetails" runat="server">
        <ItemTemplate>
            
            <div class="itemcontainer">
           <div class="card grid-item" style="width: 20rem; height:28rem;">
              <asp:Image runat="server" ID="imgPhotopath" class="card-img-top container-fluid mt-3" ImageUrl='<%# Eval("PhotoPath") %>' alt="Card image cap"  />
              <div class="card-body">
                <h5 class="card-title"><%#Eval("PostTitle") %></h5>
                <p class="card-text"><%#Eval("ShortDiscription") %></p>
                <a href="<%#Eval("PostUrl") %>" class="btn btn-primary">Click To Read Article</a>
  </div>
</div>
            
                </div>
        </ItemTemplate>
    </asp:Repeater>
        
        </div>

</asp:Content>

