<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Userhome.aspx.cs" Inherits="boat11.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <br />
    <br />

    <h2>
        <asp:Label ID="lblMsg" runat="server">!!! welcome user !!!</asp:Label>

    </h2>
    <br id="orderlist" />
    <br />

    <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: white">My Details</h1>
    <br />
    <div style="margin-left: 100px">
    </div>
    <div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <h1 style="text-align: center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">My Order Details</h1>
    <hr />
    <div style="margin-left: 150px">
        <div class="container">
        <div class="panel panel-default">

            <div class="panel-heading">ALL ORDERS</div>


            <asp:repeater ID="rptrcomp" runat="server">

                <headertemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                
                            </tr>

                        </thead>



                        <tbody>
                </headertemplate>


                <itemtemplate>
                    <tr>
 
                        <td><%# Eval("PaymentType") %> </td>
                        <td><%# Eval("PaymentStatus") %> </td>
                        <td><%# Eval("Email") %>   </td>
                        <td><%# Eval("PPrice") %>   </td>
                        <td><%# Eval("Name") %> </td>
                        <td><%# Eval("Quantity") %></td>
                        <td><%# Eval("OrderStatus") %> </td>
                        <td><%# Eval("DateOfPurchase") %> </td>
                        <td><%# Eval("Address") %>   </td>


                    </tr>
                </itemtemplate>


                <footertemplate>
                    </tbody>

              </table>
        
                </footertemplate>

            </asp:repeater>
        </div>


        <div>

            <center>
                <br />
                <asp:Button ID="dtlcmp" CssClass="alert-danger" runat="server" Text="DELETE ALL" OnClick="dtlcmp_Click"  />

        <br />
        </div>
    <hr />

    <h1 style="text-align: center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">User Details</h1>
    <hr />

    <div>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="53px" Width="1138px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:boat11ConnectionString %>" SelectCommand="SELECT DISTINCT [Username], [Email] FROM [tableuser] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="6" Name="Id" SessionField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <hr />
    <h1 style="text-align: center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">Change Password</h1>
    <hr />
    <div style="margin-left: 450px">
        <asp:Button ID="Button2" runat="server" Text="Change Your Password" Width="250px" CssClass="btn-success focus" OnClick="Button2_Click"/>
    </div>

    </div>
</div>
</asp:Content>

