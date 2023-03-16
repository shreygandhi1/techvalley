<%@ Page Title="" Language="C#" MasterPageFile="~/techvalley.master" AutoEventWireup="true" CodeFile="paytm.aspx.cs" Inherits="paytm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" Runat="Server">
    <style>
        .title{
            padding-top:2em;
            padding-left:10em;
        }
        .image{
            padding-top:2em;
            padding-left:4em;
        }
       .para{
           margin:2em;
           text-indent: 50px;
           text-align: justify;
           letter-spacing: 3px;
       }
       a{
            text-decoration: none;
            color: #FF0000;
       }
       .card horizontal{
                        flex-direction: row;
                    }
        .card img {
                     width: 30%;
               }
        
    </style>
    <h1 class="title"><b>Paytm to Resubmit Application for Authorisation of Payment Aggregator Services</b></h1>
        <div class="row">
            <div class="col-md-2" style="padding-top:38em;">
                <div class="card" style="width: 16rem;">
                    <div class="card-header">
    <b style="color:blue">HIGHLIGHTS</b>
  </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Paytm said that it has received a letter from the Reserve Bank of India</li>
                <li class="list-group-item">Paytm is owned by One97 Communications</li>
                <li class="list-group-item">During this process, the company will not onboard new online merchants</li>
              </ul>
</div>
                </div>
            <div class="col-md-7">

    <asp:Image runat="server" ID="imgpaytm" ImageUrl="~/assest/paytm_reuters_full_1557923782093.jpg" CssClass ="image" />
    <p class="para">
      Digital payments and financial services company Paytm has shared an update with the exchanges about its 100 percent subsidiary, Paytm Payments Services.
    </p>
    <p class="para">
       The fintech company said that it has received a letter from the<a href="paytm.aspx" target="_blank">Reserve Bank of India (RBI)</a> in response to an application from its subsidiary for the authorisation to provide payment aggregator services for online merchants.
    </p>
    <p class="para">
        The company can now resubmit the application within 120 calendar days for the payment aggregator services. Ahead of that, the company will seek necessary approval for past downward investment from Paytm into its subsidiary, to comply with foreign direct investment guidelines.
    </p>
         <p class="para">
             "We can continue to onboard new offline merchants and offer them payment services including All-in-One QR, Soundbox, Card Machines, etc. Similarly, PPSL can continue to do business with existing online merchants, for whom the services will remain unaffected," said the company in its exchange filing on Saturday.
         </p>
                <p class="para">
                    This essentially means that Paytm's strong business momentum is likely to continue, with no impact on its profitability target as the company can continue to work with its existing online merchants.
                </p>
                
                <p class="para">
                    Additionally, Paytm's growing device deployments base and increasing offline payments base will also not be impacted with this development, as it can continue to onboard new merchants.
                </p> 
                <p class="para">
                    The company specifically outlined in its filing that this has no material impact on its business and revenues since the communication from RBI is applicable only to the onboarding of new online merchants.
                </p>  
                
                <p class="para">
                    "We are hopeful of receiving the necessary approvals in a timely manner and resubmitting the application," said the company in the filing.
                </p>
                
                </div>
            <div class="col-md-3" style="padding-top:38em;">
            <div class="card" style="width: 20rem;">
                    <div class="card-header" style="background-color:red;">
    <b class="background">Other Posts</b>
  </div>
               <div class="card">
		<div class="row">
			<div class="col-md-4">
				<img src="UserContent/redmi.jpg" style="width: 8rem;"/>
			</div>
			<div class="col-md-8">
				<h2 class="card-title mt-2"><a href="redmi11.aspx">redmi note 11</a></h2>
                <p>Click to know about upcoming redmi smartphone</p>
			</div>
		</div>
	</div>
                <div class="card">
		<div class="row">
			<div class="col-md-4">
				<img src="UserContent/nothing.jpg" style="width: 7rem;"/>
			</div>
			<div class="col-md-8">
				<h2 class="card-title mt-2"><a href="redmi11.aspx">Nothing Phone 1</a></h2>
                <p>Article related to nothing phone 1</p>
			</div>
		</div>
	</div>
                 <div class="card">
		<div class="row">
			<div class="col-md-4">
				<img src="UserContent/samsung.jpg" style="width: 7rem;"/>
			</div>
			<div class="col-md-8">
				<h2 class="card-title mt-2"><a href="redmi11.aspx">Samsung Galaxy F13</a></h2>
                <p>Samsung Galaxy F13 model details</p>
			</div>
		</div>
	</div>
                <div class="card">
		<div class="row">
			<div class="col-md-4">
				<img src="UserContent/fire.jpg" style="width: 7rem;"/>
			</div>
			<div class="col-md-8">
				<h2 class="card-title mt-2"><a href="redmi11.aspx">Fire-Boltt Rage Smartwatch</a></h2>
                <p>Fire-Boltt Rage Smartwatch Features</p>
			</div>
		</div>
	</div>
                </div>
                </div>
            </div>
</asp:Content>

