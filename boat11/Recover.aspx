<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recover.aspx.cs" CodeFile="~/Recover.aspx.cs" Inherits="boat11.Recover" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>BoAts</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/logoup.jpg" alt="logo" />

    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous">   </script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script type="text/javascript"> </script>

</head>
<body>
    <form id="form1" runat="server">
         <div >
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" >
                <div class="container-fluid" style="color: red">
                    <div class="navbar-header" style="font-size: 20px; font-weight: bolder; font-style: oblique">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand">
                            <span>
                                <a href="default.aspx" style="color: red; font-style: oblique">

                                    <img class="img-" src="images/logo.jpg" alt="BoAt-Lifestyle" height="50" width="100" color: red" />
                                </a>
                            </span>

                        </a>
                    </div>
                    <div class="navbar-collapse collapse" >
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="default.aspx">Home</a> </li>
                            <li><a href="About.aspx">About Us</a> </li>

                            <li><a href="Products.aspx">Buy Now</a></li>
                            <li><a href="Userhome.aspx#productlist">User</a> </li>


                            <li id="A" runat="server"><a href="Signin.aspx">Register New User</a> </li>
                            <li id="B" runat="server"><a href="Login.aspx">Login</a> </li>
                            </ul>
                    </div>

                </div>

            </div>

        <!---main content Start here---->       

        <hr />
        <header>
            <div class="wrapper">
                <hr />
                <h1 style="text-align:center; background-color:#FF0000; color:white;
                font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">
                    FORGOT YOUR PASSWORD? RECOVER IT HERE 
                </h1>

                <div style= "background-color:red; align-content:center; margin-left:25%; margin-right:25%; height: 654px; margin-top:5%; width: 793px;">

                    <br />
                   
                    <div style="text-align:center; width: 382px; height: 553px; margin-left: 213px; margin-top: 33px; background-color:aliceblue"><br />
                        <asp:Label ID="Label1" runat="server" Text="Recover Password , &lt;br /&gt; create A New Password here." ForeColor="Black" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                        <br />
                        <hr />
                        <asp:Label ID="Label6" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Enter Username"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="uname1" runat="server" Height="20px" Width="229px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass0" runat="server" ControlToValidate="uname1" CssClass="Text-danger" ErrorMessage="Enter Your Username" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Create New Password"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="pass" runat="server" Height="20px" Width="229px" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" runat="server" ControlToValidate="pass" CssClass="Text-danger" ErrorMessage="Enter Your New Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Confirm New Password"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="passc" runat="server" Height="20px" Width="229px" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass1" runat="server" ControlToValidate="passc" CssClass="Text-danger" ErrorMessage="Enter Your New Password" ForeColor="Red"></asp:RequiredFieldValidator>



     
                        <br />
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ControlToCompare="passc" ControlToValidate="pass" CssClass="Text-danger" ErrorMessage="confirm password not match...try again" ForeColor="Red"></asp:CompareValidator>
                        <br />
                        <br />
                            <asp:Button ID="btn1" runat="server" class="btn btn-success" Text="Reset Password" Width="137px" OnClick="btn1_Click" />
                            <br />
                            <br />
                        <hr />
                            <br />
                        <br />
                        </div>
                    </header>

        <!---Footer COntents Start here---->       
    <hr />
          <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#"> Back to top</a></p> 
                <p>&copy;2021 E-BookS.in &middot; <a href ="default.aspx">Home</a>
                    &middot;<a href ="About.aspx">About</a>&middot;&middot;
                    <a href ="products.aspx">Products</a> </p>
            </div>

        </footer>
    <!---Footer COntents End---->
        </div>
    </form>
</body>
</html>
