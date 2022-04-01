<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserHome2.aspx.cs" Inherits="boat11.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />


    <div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3>ORDERS</h3>
        <hr />


        <br />


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
                <asp:Button ID="dtlcmp" CssClass="button button3" runat="server" Text="DELETE ALL" OnClick="dtlcmp_Click"  />
                <hr />
                <h1 style="text-align: center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">User Details</h1>
                <hr />
                <div style="margin-left: 51px">
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="53px" Width="939px">
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
                <div style="margin-left: 0px">
                    <asp:Button ID="Button2" runat="server" CssClass="btn-success focus" OnClick="Button2_Click" Text="Change Your Password" Width="189px" />
                </div>
            </center>


        </div>



    </div></div>
</asp:Content>
