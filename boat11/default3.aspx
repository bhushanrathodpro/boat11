<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="default3.aspx.cs" Inherits="boat11.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                <div class="col-lg-4"style="color:black">
                    <img class="img-thumbnail " src="images/tn1.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Wired Headphones </h2>
                    <p>
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color:red">View More &raquo;</a>
                    </p>
                </div>

                <div class="col-lg-4" style="color:black">
                    <img class="img-thumbnail " src="images/tn2.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Speakers </h2>
                    <p>
                  
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                 <div class="col-lg-4" style="color:black">
                    <img class="img-thumbnail " src="images/tn4.jpeg" alt="thumb" width="250" height="250" />
                    <h2> Soundbar </h2>
                    <p>
                     
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>

                <div class="col-lg-4" style="color:black">
                    <img class="img-thumbnail " src="images/tn3.jpeg" alt="thumb" width="250" height="250" />
                    <h2>Truely Wireless </h2>
                    <p>
                        
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4" style="color:black">
                    <img class="img-thumbnail " src="images/tn6.jpg" alt="thumb" width="250" height="250" />
                    <h2> Bluetooth Headphones </h2>
                    <p>
                        
                    </p>
                    <p>
                        <a class="btn btn-default " href="Products.aspx" role="button" style="border: solid; border-color: red">View More &raquo;</a>
                    </p>
                </div>
                <div class="col-lg-4" style="color:black">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
