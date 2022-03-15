<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="boat11._default" %>

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
    <form id="form2" runat="server" style="background-color:black">
        <div >
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container " style="color: red">
                    <div class="navbar-header" style="font-size: 19px; font-weight: bolder; font-style: oblique">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand">
                            <span>
                                <a href="default.aspx" style="color: red; font-style: oblique">

                                    <img class="img-thumbnail" src="images/logo.jpg" alt="BoAt-Lifestyle" height="50" style="width: 70px; color: red" />
                                </a>
                            </span>

                        </a>
                    </div>
                    <div class="navbar-collapse collapse" >
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="default.aspx">Home</a> </li>
                            <li><a href="About.aspx">About Us</a> </li>
                            <li id="D" runat="server"><a href="About.aspx#feedback">Feedback</a> </li>


                            <li><a href="Products.aspx">Buy Now</a></li>
                            <li><a href="userhome2.aspx#productlist">User</a> </li>


                            <li id="A" runat="server"><a href="signin.aspx">Register New User</a> </li>
                            <li id="B" runat="server"><a href="Login.aspx">Login</a> </li>
                    </div>

                </div>

            </div>

            <!---image slider---->
            <div class="container" >
                <h2>Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/s1.jpg" alt="jojo " style="width: 100%;" />
                            <div class="carousel-caption">

                                <p><a class="btn btn-lg btn-primary" href="Products.aspx" role="button" style="table-layout: auto; border-collapse: separate; border-spacing: inherit; padding: 14px; margin: 12px; background-color: #FF0000; color:white; font-family: 'Kristen ITC'; font-weight: bolder; font-variant: small-caps">Shop Now</a></p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="images/s2.jpg" alt="harry potter saga" style="width: 100%;" />
                            <div class="carousel-caption">

                                <p><a class="btn btn-lg btn-primary" href="Products.aspx" role="button" style="table-layout: auto; border-collapse: separate; border-spacing: inherit; padding: 14px; margin: 12px; background-color: #FF0000; color:white; font-family: 'Kristen ITC'; font-weight: bolder; font-variant: small-caps">Shop Now</a></p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="images/s3.jpg" alt="TO ALL THE BOYS" style="width: 100%;" />
                            <div class="carousel-caption">

                                <p><a class="btn btn-lg btn-primary" href="Products.aspx" role="button" style="table-layout: auto; border-collapse: separate; border-spacing: inherit; padding: 14px; margin: 12px; background-color: #FF0000; color: #FFFFFF; font-family: 'Kristen ITC'; font-weight: bolder; font-variant: small-caps">Shop Now</a></p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/s4.jpg" alt="PREMCHAND BOOKS" style="width: 100%;" />
                            <div class="carousel-caption">

                                <p><a class="btn btn-lg btn-primary" href="Products.aspx" role="button" style="table-layout: auto; border-collapse: separate; border-spacing: inherit; padding: 14px; margin: 12px; background-color: #FF0000; color: #FFFFFF; font-family: 'Kristen ITC'; font-weight: bolder; font-variant: small-caps">Shop Now</a></p>
                            </div>
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span> </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span> </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span> </a>
                </div>
            </div>
            <!---image slider End---->
        </div>
        <hr style="color:black"/>
        <marquee direction="left"  bgcolor="black" style="height: 20px; color:white; width: 100%;box-sizing: border-box; font-family: 'Montserrat', sans-serif !important;
">
            flaunt your fitness &nbsp flaunt your fitness &nbsp flaunt your fitness&nbsp flaunt your fitness </marquee>

        

        <!---Middle COntents start---->
        <hr />
        <h2 style="text-align: center; color: white; background-color: red"> Top Sales</h2>
        <hr />
        <div class="container center ">
            <div class="row ">
                <div class="col-lg-4"style="color:white">
                    <img class="img-thumbnail " src="images/tn1.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Wired Headphones </h2>
                    <p>
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color:red">View More &raquo;</a>
                    </p>
                </div>

                <div class="col-lg-4" style="color:white">
                    <img class="img-thumbnail " src="images/tn2.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Speakers </h2>
                    <p>
                  
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                 <div class="col-lg-4" style="color:white">
                    <img class="img-thumbnail " src="images/tn4.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Soundbar </h2>
                    <p>
                     
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>

                <div class="col-lg-4" style="color:white">
                    <img class="img-thumbnail " src="images/tn3.jpeg" alt="thumb" width="250" height="250" />
                    <h2>Truely Wireless </h2>
                    <p>
                        
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4" style="color:white">
                    <img class="img-thumbnail " src="images/tn6.jpg" alt="thumb" width="250" height="250" />
                    <h2> Bluetooth Headphones </h2>
                    <p>
                        
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4" style="color:white">
                    <img class="img-thumbnail " src="images/tn5.jpg" alt="thumb" width="250" height="250" />
                    <h2> Smart Watches </h2>
                    <p>
                       
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>

            </div>

        </div>


        <hr />
        <h2 style="text-align: center; color: white; background-color: #ff0000">Join The BoAt-Lifestyle Now</h2>
        <hr />
        <div style="height: 593px">
            <video src="Videos/ad.mp4" alt="Your browser does not support HTML video."
                controls="controls" style="height: 581px; width: 96%; margin-left: 64px;" autoplay="autoplay" loop="loop" />
        </div>
        <br />

        <!---Footer COntents Start here---->
        
        <hr />
        <footer>
            <div class="container ">
                <p class="pull-right ">
                    <a href="#"style="color:white">Back to top</a></p>
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
