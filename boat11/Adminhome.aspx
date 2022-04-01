<%@ Page Title="" Language="C#" MasterPageFile="~/Admihome.Master" AutoEventWireup="true" CodeFile="Adminhome.aspx.cs" Inherits="boat11.WebForm7" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <div>
        <br />
        <br />
        <br />
        <br />
        <h2>
            <asp:Label ID="lblMsg" runat="server">!!! welcome admin !!!</asp:Label>
        </h2>
        <br id="orderlist" />
        <br />
        <br />
        <hr />
        <br />
        <br />
        <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF;">Customer Details</h1>
        <br />
        <br />
        <br />

    </div>


</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:541px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="email" ForeColor="Black" AllowPaging="True" AllowSorting="True" Height="295px" Width="428px">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource ID="email" runat="server" ConnectionString="<%$ ConnectionStrings:boat11ConnectionString %>" SelectCommand="SELECT [Username], [Email] FROM [tableuser]"></asp:SqlDataSource>
    </div>
    <hr />
    <div>
     
        <br />
        <br />
        <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF;">Feedbacks</h1>
        <br />
        <p>
        </p>
        <br />
        <div style="margin-left:500px">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="fbs" ForeColor="Black" AllowPaging="True" AllowSorting="True" Height="295px" Width="573px">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Complaint" HeaderText="Complaint" SortExpression="Complaint" />
                <asp:BoundField DataField="Suggestion" HeaderText="Suggestion" SortExpression="Suggestion" />
                <asp:BoundField DataField="Other" HeaderText="Other" SortExpression="Other" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

            <asp:SqlDataSource ID="fbs" runat="server" ConnectionString="<%$ ConnectionStrings:boat11ConnectionString %>" SelectCommand="SELECT [Username], [Complaint], [Suggestion], [Other] FROM [Feedback]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:boat11ConnectionString %>" SelectCommand="SELECT [Username], [Email] FROM [tableuser]"></asp:SqlDataSource>
            <br />
    </div>

    <hr />
        <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: #FFFFFF;">Change Password</h1>
    <hr />
    <div style="margin-left: 630px">
        <asp:Button ID="Button2" runat="server" Text="Change Your Password" Width="250px" CssClass="btn-success focus" OnClick="Button2_Click"/>
    </div>
    </div>
</asp:Content>


