<%@ Page Language="C#" AutoEventWireup="true" CodeFile="singlearticle.aspx.cs" Inherits="singlearticle" %>

    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>How to</title>

    <style type="text/css">

    h3{
        color:green;
    }

    
        .auto-styleWR {
            font-size: xx-large;
        }
   
</style>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="java/jquery-2.1.4.min.js"></script>
    <script src="java/bootstrap.min.js"></script>

    
<link rel="Stylesheet" href="css/ArticleStyle.css" type="text/css" />


</head>

<body>
    
   
   <form id="form1" runat="server"> 
     
   
   <div class = "header">
      <div class="container">

          <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
          <div class = "header-top row">
              <div class= "logo col-md-3">
                  <img src="images/wikihow_logo.png" class="img-responsive">
              </div>
              <div class="col-md-9">
                  <div class="row">
                      <div class="col-md-8">
                         
        <div class="form-group">
                              
                                      
      
    &nbsp;<asp:TextBox ID="txtCity" CssClass ="ta" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" CssClass="Disturb" runat="server" Text="Button" />

            <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtCity"
         MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
         ServiceMethod="GetCity" >
    </asp:AutoCompleteExtender>
                    </div>
       </div>
                     
                    <div class="col-md-4">

                                     
                         <asp:Button ID="Button4" CssClass="Disturb2" runat="server" Text="" CausesValidation="False" OnClick="Button4_Click" />

                                     
                          <a <button class="btn btn-default" href="Registration.aspx"   type="submit">Sign Up</button> </a>
                              
                          <asp:Label ID="Label50" runat="server" Text="okkkk"></asp:Label>
                        <br />
                              
                          </div>
                      
                      
                      </div>
                  </div>
              </div>
          </div>
          <nav>
            <ul class="nav nav-tabs">
                <li ><a href="Default.aspx">Home</a></li>
                <li><a href="#">Categories</a><span class="dropBottom"></span>
                    <ul>
                        <li><a href="ArtsEntertain.aspx">Arts and Entertainment</a></li>
                        <li><a href="Vehicles.aspx">Cars Other Vehicles</a></li>
                        <li><a href="ComputerElectronics.aspx">Computers and Electronics</a></li>
                        <li><a href="Education.aspx">Education and Communications</a></li>
                        <li><a href="Familylife.aspx">Family Life</a></li>
                    </ul>
                </li>
                <li><a href  ='#'>Recent Changes</a></li>
                 <li><a href='#'>Help us</a>
                    <ul>
                        <li><a href="Write_Article.aspx">Write An Article</a></li>
                        <li><a href="#">Request For An Article</a></li>
                        <li><a href="#">More Ideas</a></li>
                    </ul>
                </li>
                <li><a href='#'>Contact</a></li>
                <li><a href='#'>Blog</a></li>
            </ul>
        </nav>

        <div class="middle clearfix">
            <div class="container">
                <div class="middle-main row">
                    <div class="middle-left col-sm-8">
    
        <h2 style="font-style: italic; text-align: left"><asp:Label ID="Label10" runat="server" Text="" style="color: #009900"></asp:Label></h2>
        <h4 style="font-style: italic"><asp:Label ID="Label40" runat="server" Text="" style="color: #99CC00"></asp:Label></h4>
        <div class="article">
        <p><asp:Label ID="Label20" runat="server"  ></asp:Label></p>
        <p>&nbsp;</p>

  <p>_____________________________________________________________________________________________</p>
        </div>

      <div class="articleNew">
     <asp:TextBox ID="TextBox1" runat="server" Height="70px" TextMode="MultiLine" Width="561px"></asp:TextBox>
         <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click" />
        <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
      
           <asp:PlaceHolder ID="placeholder1" runat="server">



        </asp:PlaceHolder>
         
          </div>

  </div>
                    <div class="middle-right col-sm-4">
                <div class="middle-right-first row">
                    <div class="Random article col-md-6">
                        <a class="btn btn-default" href="showarticle.aspx" role="button">Random Article </a>       </div>
                    <div class="Write article col-md-6">
                        <a class="btn btn-default" href="Write_Article.aspx" role="button">Write An Article</a>
                    </div>
                </div>

                <div class="middle-right-2nd row">
                  <h3>Browse Categories</h3>
                  <ul id="hp_categories">
                     <li class="cat_icon cat_artsandentertainment"><a href="ArtsEntertain.aspx">Arts and Entertainment</a></li>
                      <li class="cat_icon cat_carsandothervehicles"><a href="Vehicles.aspx">Cars &amp; Other Vehicles</a></li>
                      <li class="cat_icon cat_computersandelectronics"><a href="ComputerElectronics.aspx">Computers and Electronics</a></li>
                      <li class="cat_icon cat_educationandcommunications"><a href="Education.aspx">Education and Communications</a></li>
                      <li class="cat_icon cat_familylife"><a href="Familylife.aspx">Family Life</a></li>
                      <li class="cat_icon cat_financeandbusiness"><a href="Finance.aspx">Finance and Business</a></li>
                      <li class="cat_icon cat_foodandentertaining"><a href="Food.aspx">Food and Entertaining</a></li>
                      <li class="cat_icon cat_health"><a href="Health.aspx">Health</a></li>
                      <li class="cat_icon cat_hobbiesandcrafts"><a href="Hobbies.aspx">Hobbies and Crafts</a></li>
                      <li class="cat_icon cat_holidaysandtraditions"><a href="Holidays.aspx">Holidays and Traditions</a></li>
                      <li class="cat_icon cat_homeandgarden"><a href="Home.aspx">Home and Garden</a></li>
                      <li class="cat_icon cat_personalcareandstyle"><a href="PersonalCare.aspx">Personal Care and Style</a></li>
                      <li class="cat_icon cat_petsandanimals"><a href="PetAnimal.aspx">Pets and Animals</a></li>
                      <li class="cat_icon cat_philosophyandreligion"><a href="PhilosopyReligion.aspx">Philosophy and Religion</a></li>
                      <li class="cat_icon cat_relationships"><a href="Relationship.aspx">Relationships</a></li>
                      <li class="cat_icon cat_sportsandfitness"><a href="Sports.aspx">Sports and Fitness</a></li>
                      <li class="cat_icon cat_travel"><a href="Travel.aspx">Travel</a></li>
                      <li class="cat_icon cat_wikihow"><a href="#">How To</a></li>
                      <li class="cat_icon cat_workworld"><a href="#">Work World</a></li>
                      <li class="cat_icon cat_youth"><a href="Youth.aspx">Youth</a></li>
                  </ul>
              </div>


              <div class="middle-right-3rd row">
                <h3>Recent Changes</h3>
            </div>
                    
        </div>
    </div>
                    </div>
<div class = "footer clearfix">
  <div class="container">
      <div class = "footer-bottom row">
          <div class= "home col-md-1">
              <p>Home</p>
          </div>
          <div class="col-md-3">
              <p>About This Website</p>
          </div>
          <div class  ="col-md-1">
              <p>Jobs</p>
          </div>
          <div class="col-md-2">
              <p>Terms of use</p>
          </div>
          <div class="col-md-2">
              <p>Site map</p>
          </div>
          <div class="col-md-3">
               <div class = "link">
					<div class = "link_image">
						<p>Find me on</p>
					</div>
					<div class = "link_image">
						<a href = "https://www.facebook.com/faojulahsan"><img src = "images/facebook.png" title = "Facebook"/><a>
						<a href = "https://plus.google.com"><img src = "images/google_plus.png" title = "Google Plus"/></a>
						<a href = "https://www.linkedin.com"><img src = "images/linked_in.png" title = "Linked In"></a>
					</div>
          </div>
          </div>
      </div>
  </div>
</div>
                

</form>
   
</body>
</html>
