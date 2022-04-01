﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="boat11.WebForm2" %>

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

    <script type="text/javascript"> </script>
</head>
    <body>
    <form id="form2" runat="server" style="background-color:black">
        
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
                            <li><a href="default.aspx">Home</a> </li>
                            <li><a href="About.aspx">About Us</a> </li>

                            <li><a href="Products.aspx">Buy Now</a></li>
                            <li><a href="Userhome.aspx#productlist">User</a> </li>


                            <li id="A" class="active" runat="server"><a href="Signin.aspx">Register New User</a> </li>
                            <li id="B"  runat="server"><a href="Login.aspx">Login</a> </li>
                            </ul>
                    </div>

                </div>

            </div>

             <!----singin form start--->
            <hr />
        <header>
            <div class="wrapper">
                <hr />
                <h1 style="text-align:center; background-color:red; color:white;
                font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif"  >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME NEW USER 
                </h1>

                <div style= "background-color:red; align-content:center; margin-left:25%; margin-right:25%; height: 629px; margin-top:5%; width: 793px;">

                    <br />
                   
                    <div style="text-align:center; width: 382px; height: 549px; margin-left: 213px; margin-top: 33px; background-color:aliceblue">
                        &nbsp;<br />
                        <asp:Label ID="Label1" runat="server" Text="Enter Your Details Below To Register" ForeColor="Black" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>

                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Create New Username Here"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="username" runat="server" AutoCompleteType="FirstName" Height="20px" Width="229px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Create New Password Here"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="password" runat="server" AutoCompleteType="Disabled"  Height="20px" Width="229px" TextMode="Password"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Enter Your Email Here"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="email" runat="server" AutoCompleteType="Email" Height="20px" Width="229px" TextMode="Email"></asp:TextBox>

                        <br />

                        <br />

                        <br />
                        <div style="width: 191px; margin-left: 97px" >
                            <asp:Button ID="btn1" runat="server" class="btn btn-success" Text="Register" Width="90px" OnClick="btn1_Click" />
                            <br />
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>

                            <br />
                            <br />
                            <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Login.aspx">Already Have An Account? LogIn Here</asp:HyperLink>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                                 <!----singin form end--->
                    </div>     
                </div>
                </header>

             

                   <!---Footer COntents Start here---->
        
        <hr />
        <footer>
            <div class="container ">
                <p class="pull-right ">
                    <a href="#"style="color:white">Back to top top</a></p>
                <p style="color:red">
                    &copy;2022@BoAts &middot; 
                    <a href="default.aspx"style="color:white">Home</a>
                    &middot;<a href="About.aspx"style="color:white">About</a>&middot;
                    <a href="products.aspx"style="color:white">Products</a>&middot;
                </p>
            </div>

        </footer>
        <!---Footer COntents End---->

    </form>

</body>
</html>