<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>How To</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <script src="java/jquery-2.1.4.min.js"></script>
    <script src="java/bootstrap.min.js"></script>

     


    

    <link rel="stylesheet" href="css/themes/default/default.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/light/light.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/dark/dark.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/themes/bar/bar.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />


    
    <!-- Custom Theme files -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <!--Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'/>
    <!--Google Fonts-->
    <script>var __links = document.querySelectorAll('a'); function __linkClick(e) { parent.window.postMessage(this.href, '*'); }; for (var i = 0, l = __links.length; i < l; i++) { if (__links[i].getAttribute('data-t') == '_blank') { __links[i].addEventListener('click', __linkClick, false); } }</script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>$(document).ready(function (c) {
    $('.sinup-close').on('click', function (c) {
        $('.setting').fadeOut('slow', function (c) {
            $('.setting').remove();
        });
    });
});
</script>




<link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />

<link href="css/custom-login.css" rel="stylesheet" type="text/css" media="all"/>


<%--<script type="text/javascript" src="java/restive.min.js"></script>
    
    <script>
        $(document).ready(function () {
            $('body').restive({
                breakpoints: ['240', '320', '480', '640', '960', '1024', '1280'],
                classes: ['css-240', 'css-320', 'css-480', 'css-640', 'css-960', 'css-1024', 'css-1280']
            });
        });
</script>--%>





</head>
<body>
    
   <div class = "header">
      <div class="container">
          <div class = "header-top row">
              <div class= "logo col-md-3">
                  <img src="images/wikihow_logo.png" class="img-responsive"/>
              </div>
              
              <div class="col-md-9">
                  <div class="row">
                      <div class="col-md-8">
                          <div class="search">
                              <form class="form-inline">
                                  <div class="form-group has-success has-feedback">
                                    <input type="text" class="form-control" id="inputSuccess4" aria-describedby="inputSuccess4Status">
                                    <button type="button" class="btn btn-primary">Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label2" runat="server" Text="" Width="100px"></asp:Label>                      
                        <!-- modal for custom login -->
                        
                        <div class="custom-login">
                            <!-- Trigger the modal with a button -->
                            <button runat="server" class="btn btn-default" data-toggle="modal" id="Button2" onclick="Login_Click" data-target="#myModal" type="submit">Log In</button>
                        <a <button class="btn btn-default" href="Registration.aspx"   type="submit">Sign Up</button> </a>

                            
                            <%--<button runat="server" class="btn btn-default" data-toggle="modal" id="login" onclick="Login_Click" data-target="#myModal" type="submit">Log In</button>--%>
                            
                            
                              
                            <form runat="server" >
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        
                                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        
                                        <div class="modal-body">
                                        <div class="login">
                                            <h2>Login</h2>
                                            
                                               
                                                <asp:TextBox ID="TextBoxUnamelogin" runat="server" input type="text" CssClass="user" placeholder="User name" class="user active" /> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUnamelogin" ErrorMessage="Please enter User name" style="font-style: italic" Display="Dynamic"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TextBoxPasslogin" runat="server" input type="password" class="lock active" placeholder="Password"  TextMode="Password"/>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPasslogin" ErrorMessage="Please enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                              <div >
                                                    
                                                    <asp:CheckBox ID="CheckBoxRemember"  runat="server" ForeColor="#db0000"   Text="Remember me"  />
                                                    

                                                </div>  
                                            <div class="forgot">
                                                 
                                                <div class="login-para">
                                                    <p><a href="#"> Forgot Password? </a></p>
                                                </div>
                                                <div class="clear"> </div>

                                            </div>
                                            <div class="login-bwn">
                                                <fieldset> 
                                                <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click"  input type="submit" Text="Log in" /> 
                                                 </fieldset>
                                                      </div>
                                            <div class="login-bottom">
                                                <h3>Login</h3>
                                                <p>With your social media account</p>
                                                <div class="social-icons">
                                                    <div class="button">
                                                        <a class="tw" href="#"> <i class="anc-tw"> </i> <span>Twitter</span>
                                                            <div class="clear"> </div></a>
                                                            <a class="fa" href="#"> <i class="anc-fa"> </i> <span>Facebook</span>
                                                                <div class="clear"> </div></a>
                                                                <a class="go" href="#"><i class="anc-go"> </i><span>Google+</span>
                                                                    <div class="clear"> </div></a>
                                                                    <div class="clear"> </div>
                                                                </div>
                                                                <h4>Don,t have an Account? <a href="Registration.aspx"> Register Now!</a></h4>
                                                                <div class="reg-bwn"><a href="Registration.aspx">REGISTER</a></div>
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                    <div style="text-align:center; margin-top:10px;">
                                                        <ins class="adsbygoogle"
                                                        style="display:block"
                                                        data-ad-client="ca-pub-8011246932591811"
                                                        data-ad-slot="9844648019"
                                                        data-ad-format="auto"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
                                                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                                    </div>
                                                </div>
                                       
                                                <div class="modal-footer">
                                                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                              </div>
                                          </div>

                                      </div>
                                    
                                  </div>
                                
                                </form>
                              </div>
                            
                              
                          </div>
                      </div>
                  </div>
                  
              </div>
          </div>
          <nav>
            <ul class="nav nav-tabs" >
                
                <li class="active" ><a href="Default.aspx">Home</a></li>
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
                <li><a href='Contact.aspx#Label_feedback'>Contact</a></li>
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



</body>
</html>
