<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"  %>

  

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

        <div class="middle clearfix">
            <div class="container">
                <div class="middle-main row">
                    <div class="middle-left col-sm-8">
                        <div>
                 <%--new--%>
                            <div class="auto-style1">
    
        <em style="font-size: xx-large; color: #008000; text-align: center">
        <br />
        <br />
        </em><span class="auto-style2"><em style="color: #008000; text-align: center">Registration From</em></span><em style="font-size: xx-large; color: #008000; text-align: center"><br />
        <br />
        </em>
    
    </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style5" style="font-style: italic; color: #008000; font-size: large; text-align: right">User name&nbsp; </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxUname" runat="server" Height="32px" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUname" ErrorMessage="User name is required !" style="font-style: italic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-style: italic; color: #008000; font-size: large; text-align: right">&nbsp;</td>
                <td class="auto-style9" colspan="2">

                    <div id="divOutput"></div>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-style: italic; color: #008000; font-size: large; text-align: right">Email&nbsp; </td>
                <td class="auto-style10" colspan="2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Height="32px" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email id is required !" style="font-style: italic" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid email id !" style="font-style: italic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-style: italic; color: #008000; font-size: large; text-align: right">Password&nbsp; </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxPass" runat="server" Height="32px" TextMode="Password" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required !" style="font-style: italic" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxPass" Display="Dynamic" ErrorMessage="password must be at least 5 character!" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{5,30}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-style: italic; color: #008000; font-size: large; text-align: right">Confirm Password&nbsp; </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxRPass" runat="server" Height="32px" TextMode="Password" Width="300px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="Confirmation is required !" style="font-style: italic" Display="Dynamic"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both password should be same !" style="font-style: italic" Display="Dynamic"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-style: italic; color: #008000; font-size: large; text-align: right">Country&nbsp; </td>
                <td class="auto-style9" colspan="2">
                    <asp:DropDownList ID="DropDownCountry" runat="server" Width="300px" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownCountry" ErrorMessage="Select a country " style="font-style: italic" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9" colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" CausesValidation="False"  />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="4"><span style="color: rgb(0, 128, 0); font-family: Helvetica, arial, sans-serif; font-size: 12.8px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(246, 245, 244);"><em>By creating an account, you confirm that you are at least 13 years old and agree to How To’s Terms of use.</em></span></td>
            </tr>
        </table>
                    <%--new--%>

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
</div>

</form>
   
</body>
</html>









    
   <%-- <script type="text/javascript">
        $(document).ready(function () {

            $('#TextBoxUname').keyup(function () {

                var username = $(this).val();

                if(username.length>=3)
                {
                    $.ajax({
                        url: 'RegistrationService.asmx/UserNameExists',
                        method: 'post',
                        data: { username: username },
                        dataType: 'json',
                        success: function (data) {
                            var divElement = $('#divOutput')
                            if(data.UserNameInUSe)
                            {
                                divElement.text(username + 'is already in use');
                                divElement.css('color', 'red');
                            }
                            else
                            {
                                divElement.text(username + ' is available');
                                divElement.css('color', 'green');
                            }
                        },
                        error : function(err)
                        {
                            alert(err);
                        }
                    });
                }
            });
        });
       



    </script>--%>
   
    

    
   
   