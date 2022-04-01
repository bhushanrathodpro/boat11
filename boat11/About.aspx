<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" codefile="~/About.aspx.cs" CodeBehind="About.aspx.cs" Inherits="boat11.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .jumbotron {
            background-color: red;
            color: #fff;
            padding: 100px 25px;
        }
        .container-fluids {
            padding: 60px 50px;
        }
        .bg-grey {
            background-color: #f6f6f6;
        }
        .logo-small {
            color: red;
            font-size: 50px;
        }
        .logo {
            color:red;
            font-size: 200px;
        }
        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[



// ]]>
    </script>
    <br />
    <div class="jumbotron text-center">
        <h1>BoAts</h1>
        <br />
        <h3>Developed By : BhuShan Rathod </h3>
        <p></p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <li style="color:black">
        "feel the beats"
      <form class="form-inline">
    </div>

    <!-- Container (About Section) -->
    <div class="container-fluids">
        <div class="row">
            <div class="col-sm-8">
                <h2>About Company Page</h2>
                <p><strong style="margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">“I declare after all there is no enjoyment like music!”- Shaan Rathod</strong></p>
                <%--<button  id="btn11" runat="server" onclick="btn11_onclick()">Get in Touch</button>--%>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-signal logo"></span>
            </div>
        </div>
    </div>

    <div class="container-fluid bg-grey">
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-globe logo"></span>
            </div>
            <div class="col-sm-8">
                <h2>Our Values</h2>
                <h4><strong>MISSION:</strong> Our mission is to create a healty environment for music lovers.</h4>
                <p><strong>VISION: </strong></p>
                <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    Dear users,
                </p>
                <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    We offer huge collection of music in diverse category of Fiction, Non-fiction, Biographies, History, Religions, Self -Help, Children. We also sell in vast collection of Investments and Management, Computers, Engineering, Medical, College and School text references books proposed by different institutes as syllabus across the country. Besides to this, we also offer a large collection of E-Books at very fair pricing.
                </p>
                <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    We attempt to extend the customer satisfaction by catering easy user-friendly search engine, quick and user-friendly payment options and quicker delivery systems. Upside to all of this, we are disposed to provide exciting offers and pleasant discounts on our books.
                </p>
                <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    As well, we humbly invite all the sellers around the country to partner with us. We will surely provide you the platform for many sparkling domains and grow the “BooksWagon” family.We would like to thank you for shopping with us. You can write us for any new thoughts at “email-id” helping us to improvise for the reader satisfaction
                </p>
            </div>
        </div>
    </div>

    <!-- Container (Services Section) -->
    <div class="container-fluids text-center">
        <h2>WORDS FROM DEVELOPER</h2>
        <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            “I have been vibing on music from a young age. I have listene to music at every stage of my life and there has never been a time when I have not enjoyed it. I feel it is the most diligent teachers and pedantic counselors who help you throughout your life. They are the nicest friend, quietest and faithful. I feel the joy, the peace in music and wanted to divvy up the joy with others. I trust the boAtheads to help me grow the BoAt Family.”
        </p>
        <p style="margin: 0px 0px 10px; padding: 0px; line-height: 16px; color: rgb(64, 64, 64); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            “My passion for reading roots from my curious neural wiring that viscerally relates non-fictitious and fictitious world resulting into a genial interdisciplinary approach. Over the years I have made myself a mini library in my house. For me books are a narcotic. I believe this avenue has many sparkling domains to offer at its resort for the readers and also for the sellers. Like Erasmus said- When I have a little money, I buy books; and if I have left any then I buy food and clothes.”
        </p>
        <h4>&nbsp;</h4>
        <br>

        <footer class="container-fluids text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <p>Made By <a href="https://www.instagram.com/b.shaan_online/?hl=en" title="Bhushan">Bhushan Rathod</a></p>

            <p>subscribe on  <a href="https://www.youtube.com/channel/UCwvkieEcGgKcR-xwqI7unCA" title="Visit w3schools">youtube</a></p>

            <p>contact us <a href="https://wa.link/q0uhc8" title="Visit w3schools">whatsapp</a></p>

            <br id="feedback" />
            <br />
            <hr />

            <div>
                <h1 style="text-align: center; background-color: red; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">Feedback Form</h1>
                <div style="background-color: red; align-content: center; margin-left: 24%; margin-right: 25%; height: 668px; margin-top: 2%; width: 793px;">

                    <br />
                    <div style="text-align: center; width: 382px; height: 546px; margin-left: 213px; margin-top: 33px; background-color: aliceblue">

                        <asp:Label ID="Label1" runat="server" Text="Thank You giving your precious review.&lt;br/&gt; " ForeColor="Black" Font-Bold="True" Font-Names="Arial Narrow" Font-Size="Medium"></asp:Label>

                        <hr />
                        <asp:Label ID="Label2" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="Enter Your Username"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="username" runat="server" Height="20px" Width="229px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:CheckBox ID="cb1" runat="server" Text="Go Anonymos" OnCheckedChanged="cb1_CheckedChanged" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="is ur feedback :"></asp:Label>
                        <br />
                        <div>
                            <h4>
                            <input id="Radio1" type="radio" Text="Suggestion" name="same" runat="server"/>Suggestion
                            <br />
                            <input id="Radio2" type="radio" Text="Suggestion" name="same" runat="server"/>Complain
                            <br />
                            <input id="Radio3" type="radio" Text="Suggestion" name="same" runat="server" /> other
                            </h4>
                            
                        </div>
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB" Font-Size="Large" Font-Strikeout="False" Text="write your feedback below"></asp:Label>
                        <br />
                        <br />
                   <asp:TextBox ID="fbtext" TextMode ="MultiLine"  CssClass ="form-control" runat="server"></asp:TextBox>
                        <br />
                        <div style="width: 191px; margin-left: 97px; height: 34px;">
                            <asp:Button ID="submit" runat="server" class="btn btn-success" Text="Submit Form" Width="103px" Height="34px" OnClick="submit_Click"/>

                            <br />
                            <asp:Label ID="lblMsg" CssClass="text-success" runat="server"></asp:Label>

                        </div>
                    </div>
                    </div>
                </div>
            <form>
        </form>
</asp:Content>
