<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Productview.aspx.cs" Inherits="boat11.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br />
    <br />
    
    <style>
.proauthor {
    font-size: 10px;
    font-weight: 600;
    line-height: 15px;
    text-transform: uppercase;
    font-family: sans-serif;
}

.proName {
    font-size: 13px;
    line-height: 17px;
    font-family: sans-serif;
}

.proPrice {
    font-size: 14px;
    line-height: 17px;
    font-family: sans-serif;
    font-weight: 600;
}

.proOgPrice {
    font-size: 13px;
    line-height: 17px;
    font-family: sans-serif;
    font-weight: 400;
    text-decoration: line-through;
    color: gray;
}

.proPriceDiscount {
    font-size: 13px;
    font-family: sans-serif;
    font-weight: 400;
    color: deeppink;
}

/*ProductView*/

.proNameView {
    font-size: 20px;
    line-height: 25px;
    font-family: sans-serif;
    color: #696e80;
}

.proOgPriceView {
    font-size: 15px;
    font-family: sans-serif;
    font-weight: 400;
    text-decoration: line-through;
    color: gray;
}

.proPriceDiscountView {
    font-size: 15px;
    font-family: sans-serif;
    font-weight: 400;
    color: deeppink;
}

.proPriceView {
    font-size: 16px;
    line-height: 17px;
    font-family: sans-serif;
    font-weight: 600;
    margin-top: 10px;
}

.divDet1 {
    border-bottom: 1px dashed #D5D6D8;
    margin-bottom: 20px;
}

.h5size {
    font-weight: 600;
}

.input[type=radio] {
    margin-right: 10px;
    margin-left: 10px;
}

.mainButton {
    border-radius: 3px;
    outline: 0;
    margin-top: 10px;
    min-height: 22px;
    font-size: 13px;
    min-width: 108px;
    font-weight: 500;
    background-color: #FF5722;
    padding: 10px 15px;
    border: 1px solid #FF5722;
    color: #fff;
}

#btnCart {
    margin-right: 6px;
}

.RemoveButton1 {
    border-radius: 3px;
    outline: 0;
    margin-top: 10px;
    font-size: 13px;
    min-height: 22px;
    min-width: 90px;
    font-weight: 500;
    background-color: #FF5722;
    border: 1px solid #FF5722;
    color: #fff;
}

.priceGray {
    font-size: 15px;
    font-family: sans-serif;
    font-weight: 400;
    color: dimgray;
}

.priceGreen {
    font-size: 15px;
    font-family: sans-serif;
    font-weight: 400;
    color: #20bd99;
}

.proNameViewCart {
    font-size: 15px;
    line-height: 25px;
    font-family: sans-serif;
    font-weight: 600;
    color: #696e80;
}

.buyNowbtn {
    border-radius: 3px;
    outline: 0;
    margin-top: 10px;
    margin-bottom: 20px;
    font-size: 13px;
    min-height: 22px;
    padding: 10px 15px;
    font-weight: 500;
    background-color: #14cda8;
    color: #fff;
    border: 1px solid #14cda8;
    width: 100%;
}
        </style>

    <div style="padding-top: 50px">

        <div class="container">

        <center><h1 style="font-family:'Agency FB'">PRODUCT DETAILS</h1></center>
        <hr />      
                <!----------proImage slider-------------->


                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <div class="col-md-5">
            <div style="max-width: 480px; max-height: 600px;" class="thumbnail">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>
                    <!-- Indicators -->
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImage" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
                                    <img src="images/bookimg/<%# Eval("PID")%>/<%# Eval ("Name") %><%# Eval("Extention") %> " alt="<%# Eval ("Name") %><%# Eval("Extention") %>" />

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                    <!-- Wrapper for slides -->

                    <!-- controls -->

                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>

                <!-- controls -->

                <%--   for proImage slider--%>
            </div>
        </div>


        <div class="col-md-5">

            <asp:Repeater ID="rptrProductDetails" runat="server" OnItemCommand="rptrProductDetails_ItemCommand">
                <ItemTemplate>
                    <div class="divDet1">

                        <h1 class="proBrandView"><%# Eval("PName") %></h1>
                        <h4 class="proNameView">Type: <%# Eval("PCategory") %></h4>
                        <span class="proOgPriceView"><%# Eval("PPrice","{0:c}") %></span>
                        <span class="proPriceDiscountView">Off Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %></span><p class="proPriceView"><%# Eval("PSelPrice","{0:c}") %></p>

                    </div>

                    <h5 class="h5size">About The Product</h5>
                    <p><%#Eval("PDescription") %> </p>
                    </div>

                    <div class="col-md-5">
                        <br />
                        <br />
                    </div>



                    <div class="col-md-5">
                        <a href="BuyProduct.aspx?PID=<%# Eval("PID")%>" style="text-decoration: none">
                            <br />
                            <asp:Label ID="Label2" CssClass="mainButton" runat="server" Text="BUY NOW"></asp:Label>
                            <br />
                        </a>
                    </div>
                    </div>
                    <div class="col-md-5">
                        <br />
                        <br />
                    </div>
                    <div class="col-md-5">
                        <div class="proPriceView">
                            <br />
                            <p>Available for: </p>

                            <p>✔ <%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %></p>
                            <p>✔<%# ((int)Eval("30DayRet")==1)? "30 Days Returns":""  %></p>
                            <p>✔<%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %></p>
                        </div>
                    </div>


                </ItemTemplate>

            </asp:Repeater>


        </div>

    </div>


    <br />
    <br />
    <br />
    <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
