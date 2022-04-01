<%@ Page Title="" Language="C#" MasterPageFile="~/Admihome.Master" AutoEventWireup="true" CodeBehind="Deleteproduct.aspx.cs" Inherits="boat11.WebForm11" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <div>
        <br />
        <br />
        <hr />
        <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF;">Add Products</h1>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: inherit; border: thin outset #000000; text-align: center; width: 382px; height: 699px; margin-left: 213px; margin-top: 33px; background-color: #FFCCFF; margin-left: 550px; color: #000000; table-layout: auto;">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
            <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Product Type"></asp:Label>
            <asp:TextBox ID="txtCat" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
        </div>


        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="SellingPrice"></asp:Label>
            <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Upload Image"></asp:Label>
            <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label13" runat="server" Text="Upload Image"></asp:Label>
            <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label16" runat="server" Text="Free Delivery"></asp:Label>
            <asp:CheckBox ID="chFD" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label17" runat="server" Text="30 Days Return"></asp:Label>
            <asp:CheckBox ID="ch30Ret" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="Label18" runat="server" Text="COD"></asp:Label>
            <asp:CheckBox ID="cbCOD" runat="server" />
        </div>
        <asp:Button ID="btnAdd" CssClass="btn btn-success " runat="server" Text="ADD Product" OnClick="btnAdd_Click" />
        <br />
    </div>
</asp:Content>
