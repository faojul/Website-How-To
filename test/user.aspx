<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>How to</title>
    
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            font-size: larger;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: right;
            font-style: italic;
            font-size: large;
            width: 207px;
        }
        .auto-style6 {
            height: 23px;
            text-align: right;
            font-style: italic;
            font-size: large;
            width: 207px;
        }
        .auto-style7 {
        }
        .auto-style8 {
            height: 23px;
            width: 207px;
        }
        .auto-style9 {
            width: 226px;
        }
        .auto-style10 {
            height: 23px;
            width: 226px;
        }
        .auto-style11 {
            height: 23px;
            width: 123px;
        }
        .auto-style12 {
            height: 23px;
            width: 121px;
        }
        .auto-style13 {
            width: 207px;
        }
    </style>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/stylesMaster.css" type="text/css" media="screen" />
    <script src="java/jquery-2.1.4.min.js"></script>
    <script src="java/bootstrap.min.js"></script>


    <link rel="stylesheet" href="css/themes/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/light/light.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/dark/dark.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/bar/bar.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

    
     <script type="text/javascript">
         $(document).ready(function () {

             $('#TextBoxUname').keyup(function () {

                 var username = $(this).val();

                 if (username.length >= 2) {
                     $.ajax({
                         url: 'RegistrationService.asmx/UserNameExists',
                         method: 'post',
                         data: { username: username },
                         dataType: 'json',
                         success: function (data) {
                             var divElement = $('#divOutput')
                             if (data.UserNameInUSe) {
                                 divElement.text(username + ' is already in use');
                                 divElement.css('color', 'red');
                             }
                             else {
                                 divElement.text(username + ' is available');
                                 divElement.css('color', 'green');
                             }
                         },
                         error: function (err) {
                             alert(err);
                         }
                     });
                 }
             });
         });




    </script>
   
    
    </head>

<body>
    
   
   <form id="form1" runat="server"> 
     
   
   <div class = "header">
      <div class="container">

         
          <div class = "header-top row">
              <div class= "logo col-md-3">
                  <img src="images/wikihow_logo.png" class="img-responsive">
              </div>
              <div class="col-md-9">
                  <div class="row">
                      <div class="col-md-8">
             
                           <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>            
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

                                     
                         <button class="btn btn-default"   type="submit">Sign Up</button>
                              
                          <asp:Label ID="Label1" runat="server" Text="okkkk"></asp:Label>
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

         <div id="wrapper">

            <div class="slider-wrapper theme-bar">
                <div id="slider" class="nivoSlider">
                    <img src="images/BasketballFade-hp.jpg" data-thumb="images/BasketballFade-hp.jpg" alt="" />
                    <a href="http://www.wikihow.com/Make-Apple-Pie-in-an-Apple?utm_source=wikihow&utm_medium=main_page_carousel&utm_campaign=desktop"><img src="images/Applepieapple-hp.jpg" data-thumb="images/Applepieapple-hp.jpg" alt="" /></a>
                    <img src="images/Wikigarden-hp.jpg" data-thumb="images/Wikigarden-hp.jpg" alt="" data-transition="slideInLeft" />
                    <img src="images/Mandela2-hp.jpg" data-thumb="Mandela2-hp.jpg" alt=""/>
                </div>

            </div>

        </div>

        <script type="text/javascript" src="java/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="java/jquery.nivo.slider.js"></script>
       <script type="text/javascript">
           $(window).load(function () {
               $('#slider').nivoSlider({
                   effect: 'random',                 // Specify sets like: 'fold,fade,sliceDown'
                   slices: 30,                     // For slice animations
                   boxCols: 8,                     // For box animations
                   boxRows: 4,                     // For box animations
                   animSpeed: 500,                 // Slide transition speed
                   pauseTime: 3000,                 // How long each slide will show
                   startSlide: 2,                     // Set starting Slide (0 index)
                   directionNav: false,             // Next & Prev navigation
                   controlNav: true,                 // 1,2,3... navigation
                   controlNavThumbs: false,         // Use thumbnails for Control Nav
                   pauseOnHover: true,             // Stop animation while hovering
                   manualAdvance: false,             // Force manual transitions
                   prevText: 'Prev',                 // Prev directionNav text
                   nextText: 'Next',                 // Next directionNav text
                   randomStart: false,             // Start on a random slide
                   beforeChange: function () { },     // Triggers before a slide transition
                   afterChange: function () { },         // Triggers after a slide transition
                   slideshowEnd: function () { },     // Triggers after all slides have been shown
                   lastSlide: function () { },         // Triggers when last slide is shown
                   afterLoad: function () { }         // Triggers when slider has loaded
               });
           });
    </script>





        <div class="middle clearfix">
            <div class="container">
                <div class="middle-main row">
                    <div class="middle-left col-sm-8">
                        <div class="middle-first-sub row">
                            <div class="middle-first-sub col-sm-4">
                                <img src="images/Applecidermartini-hp.jpg" class="img-responsive">
                            </div>
                            <div class="middle-2nd-sub col-sm-4">
                                <img src="images/banner.JPG" class="img-responsive">
                            </div>
                            <div class="middle-3rd-sub col-sm-4">
                                <img src="images/banner.JPG" class="img-responsive">
                            </div>
                        </div>
                        <div class="middle-2nd-sub row">
                           <div class="middle-first-sub col-sm-4">
                            <img src="images/Cornonthecob-hp.jpg" class="img-responsive">
                        </div>
                        <div class="middle-2nd-sub col-sm-4">
                            <img src="images/google.jpg" class="img-responsive">
                        </div>
                        <div class="middle-3rd-sub col-sm-4">
                            <img src="images/banner.JPG" class="img-responsive">
                        </div>
                    </div>
                    <div class="middle-3rd-sub row">
                       <div class="middle-first-sub col-sm-4">
                        <img src="images/TurkeyDinner-hp.jpg" class="img-responsive">
                    </div>
                    <div class="middle-2nd-sub col-sm-4">
                        <img src="images/Love-hp.jpg" class="img-responsive">
                    </div>
                    <div class="middle-3rd-sub col-sm-4">
                        <img src="images/banner.JPG" class="img-responsive">
                    </div>
                </div>
            </div>
            <div class="middle-right col-sm-4">
                <div class="middle-right-first row">
                    <div class="Random article col-md-6">
                        <a class="btn btn-default" href="showarticle.aspx" role="button">Random Article</a>
                    </div>
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
						<p>Find us on</p>
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

  <%--  <script>
     $(document).ready(function () {
        $(".nav li").removeClass("active");//this will remove the active class from  
                                           //previously active menu item 
        $('#home').addClass('active');
        //for demo
        //$('#demo').addClass('active');
        //for sale 
        //$('#sale').addClass('active');
    });
        </script>--%>

</form>

</body>
</html>

