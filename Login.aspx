<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Loing" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .gradient-custom-2 {
background: #fccb90;


/*background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);*/

background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(26,26,93,0.8662815467984069) 50%, rgba(0,212,255,1) 100%);
/*background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);*/
}

@media (min-width: 768px) {
.gradient-form {
height: 100vh !important;
}
}
@media (min-width: 769px) {
.gradient-custom-2 {
border-top-right-radius: .3rem;
border-bottom-right-radius: .3rem;
}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblMessage" EnableViewState="false" />
        <section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                    <img src="images/360_F_320023239_8iVZ1sT81p4hFcImvDGOFx0twEfw81u7-removebg-preview.png" style="width: 7em; height:7em;" alt="logo" />
                    
                  <h4 class="mt-1 mb-5 pb-1">We are The Tech Valley Team</h4>
                </div>

                <form>
                  <p>Please login to your account</p>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" placeholder="UserName" />
                    <label class="form-label" for="form2Example11">Username</label>
                  </div>

                  <div class="form-outline mb-4">
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Password" />
                    <label class="form-label" for="form2Example22">Password</label>
                  </div>

                  <div class="text-center pt-1 mb-5 pb-1">
                    <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" OnClick="btnLogin_Click" />
                    <a class="text-muted" href="#!">Forgot password?</a>
                  </div>

                  <div class="d-flex align-items-center justify-content-center pb-4">
                    <p class="mb-0 me-2">Don't have an account?</p>
                    <button type="button" class="btn btn-outline-danger"><a href="signin.aspx">Create new</a></button>
                  </div>

                </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                <p class="small mb-0">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
