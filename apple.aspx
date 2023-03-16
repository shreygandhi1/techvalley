<%@ Page Title="" Language="C#" MasterPageFile="~/techvalley.master" AutoEventWireup="true" CodeFile="apple.aspx.cs" Inherits="apple" %>

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
        .background{
            
        }
        
    </style>
    <h1 class="title"><b>iPhone November Shipments to See Further Decline at Foxconn's Plant in China</b></h1>
        <div class="row">
            <div class="col-md-2" style="padding-top:38em;">
                <div class="card" style="width: 16rem;">
                    <div class="card-header">
    <b style="color:blue">HIGHLIGHTS</b>
  </div>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Foxconn's China factory is the only one that makes premium iPhone models</li>
                <li class="list-group-item">Apple shares were down 1.9 percent in late morning trade on Friday</li>
                <li class="list-group-item">Foxconn was formally known as Hon Hai Precision Industry</li>
              </ul>
</div>
                </div>
            <div class="col-md-7">

    <asp:Image runat="server" ID="imgsamsung" ImageUrl="~/assest/foxconn_blog_1669187293348.jpg" CssClass ="image" />
    <p class="para">
      Foxconn's flagship iPhone plant in China is set to see a further reduction in November shipments after the latest bout of worker unrest this week, a source with direct knowledge of the matter said on Friday, as thousands of employees quit.
    </p>
    <p class="para">
       The world's largest Apple iPhone factory has been grappling with strict COVID-19 restrictions that have fuelled discontent among workers and disrupted production ahead of Christmas and January's Lunar New Year holiday, as many workers were either put into isolation or fled the plant.
    </p>
    <p class="para">
        Following Wednesday's escalation that saw workers clash with security personnel, Foxconn could now see more than 30 percent of the site's November production affected, up from an internal estimate of up to 30 percent when the labour issues erupted in late October, the source said.
    </p>
         <p class="para">
             Foxconn, formally known as Hon Hai Precision Industry, declined to comment. Apple, which said on Thursday it had staff at the factory, did not respond to a request for comment on Friday.
         </p>
                <p class="para">
                    "The worker unrest at Foxconn's plant in China could weigh on Apple's November iPhone shipments," Victoria Scholar, head of investment at Interactive Investor said, as concerns grow over Apple's ability to deliver products for the busy holiday period.
                </p>
                <h4><b>Lower Shipments</b></h4>
                <p class="para">
                    KGI Securities analyst Christine Wang said if the current issue lasts through December, around 10 million units of iPhone production will be lost, which translates to 12 percent lower iPhone shipment in the last quarter of 2022.
                </p> 
                <p class="para">
                    Wedbush Securities estimates many Apple stores now have 25 percent to 30 percent fewer iPhone 14 Pros than normal heading into the holiday shopping season.
                </p>  
                
                <p class="para">
                    In a statement on November 7, Apple said it expected lower iPhone 14 Pro and iPhone 14 Pro Max shipments than previously anticipated.
                </p>
                <p class="para">
                    Some new recruits hired in recent weeks by Foxconn claimed they were misled over compensation benefits at the factory, and others complained about sharing dormitories with colleagues who had tested positive for COVID.
                </p>
                <p class="para">
                    Foxconn on Thursday apologised for a pay-related "technical error" when hiring and later offered CNY 10,000 (nearly Rs. 1,14,000) to protesting new recruits who agreed to resign and leave.
                </p>
                <p class="para">
                    The plant, before its troubles began, employed more than 2,00,000 staff. It has dormitories, restaurants, basketball courts and a football pitch across its sprawling roughly 1.4 million-square-metre (15 million-square-foot) facility.
                </p>
                <p class="para">
                    The source said more than 20,000 workers, mostly new hires not yet working on production lines, took the money and left. Videos posted on Chinese social media on Friday showed crowds and long lines of luggage-laden workers queuing for buses.
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

