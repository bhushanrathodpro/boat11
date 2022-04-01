<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="BuyProduct.aspx.cs" Inherits="boat11.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!---main com=ntain here---->
    <hr />
    <header>
        <div class="wrapper">
            <hr />
            <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; color: white">Fill The Info to Confirm Your order 
            </h1>
            <div style="background-color: red; align-content: center; margin-left: 25%; margin-right: 25%; height: 1045px; margin-top: 5%; width: 793px;">

                <br />

                <div style="text-align: center; width: 433px; height: 884px; margin-left: 213px; margin-top: 33px; background-color: aliceblue">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Enter Details Below" ForeColor="Black" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>
                    <br />
                    <asp:Label ID="ibm" runat="server" CssClass="text-success "></asp:Label>
                    <hr />
                    <asp:Label ID="Label5" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Product Name"></asp:Label>
                    <br />
                    <asp:Repeater ID="rpt1" runat="server">
                        <ItemTemplate>

                            <div id="control" class="proNameView">
                                <asp:TextBox ID="BookName" runat="server" Height="20px" Width="229px" Text='<%# Eval("PName")%>' ReadOnly="true" Style="text-align: center"></asp:TextBox>
                            </div>

                            <asp:Label ID="Label3" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Original Price "></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="qty" runat="server" Height="20px" Width="121px" Text='<%# Eval("PPrice")%>' ReadOnly="true" Style="text-align: center"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Discounted Price"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="price" runat="server" Height="20px" Width="121px" Text='<%# Eval("PSelPrice")%>' ReadOnly="true" Style="text-align: center"></asp:TextBox>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:Label ID="qty1" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Choose Quantity"></asp:Label>
                    <br />
                    <br />

                    <asp:TextBox ID="txt1" runat="server" Height="30px" TextMode="Number" Width="50px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please selct quantity " ControlToValidate="Email1" CssClass="txt-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text=" Confirm Your Email Address "></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="EmailConfirm" runat="server" Height="20px" Width="229px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Confirm Your Email Address" ControlToValidate="EmailConfirm" CssClass="txt-danger" ForeColor="Red"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Enter Your Address"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="Email1" runat="server" AutoCompleteType="HomeState" Height="80px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Address" ControlToValidate="Email1" CssClass="txt-danger" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />


                    <h3>Choose Payment Mode</h3>
                    <hr />
                    <ul class="nav nav-tabs">
                        <l class="nav-item">
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cod">COD</a></li>
                    </ul>
                    <div id="cod" class="tab-pane fade">
                        <p>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COD CHOOSEN
                                    ✓
                        </p>
                    </div>
                    <br />
                    <asp:Button ID="btn1" runat="server" class="btn btn-success" Text="Buy Now" Width="90px" OnClick="btn1_Click" />
                    <br />
                    <br />
                    <hr />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </header>
</asp:Content>
