<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" CodeFile="~/Products.aspx.cs" Inherits="boat11.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
    <br />
    <h3>
        <asp:Label ID="Label1" runat="server" Text="Showing All Products"></asp:Label></h3>
    <br />
    <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server" 
              placeholder="Search Products..." AutoPostBack="true" 
              ontextchanged="txtFilterGrid1Record_TextChanged" ></asp:TextBox>
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>

                <div class=" col-sm-3 col-md-3">

                    <a href="productview.aspx?PID=<%# Eval("PID")%>" style="text-decoration: none">

                        <div class="thumbnail">
                            <img src="images/bookimg/<%# Eval("PID")%>/<%# Eval ("ImageName") %><%# Eval("Extention") %> " alt="<%# Eval ("Name") %><%# Eval("Extention") %>" />
                            <div class="caption">
                                <div class="proName"><%# Eval ("PCat") %></div>
                                <div class="procat"><%# Eval ("PName") %></div>
                                <div class="proPrice">
                                    <span class="proOgPrice">Rs.<%# Eval ("PPrice","{0:0,00}") %></span><span class="proPriceDiscount">(Rs.<%# Eval("DiscAmount","{0:,0}") %>off)</span>
                                    <br />
                                    Rs.<%# Eval ("PSelPrice","{0:c}") %></div>
                            </div>
                        </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <br />
    <br />
</asp:Content>
