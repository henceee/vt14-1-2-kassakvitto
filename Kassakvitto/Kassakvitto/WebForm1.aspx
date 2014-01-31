<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Kassakvitto.WebForm1" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Css/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" defaultfocus="SumTextBox">
    <div id="Calculate">

        <div id="headerdiv">
        <h1>Kassakvitto</h1>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" HeaderText="Vänligen åtgärda följande fel:" CssClass="Red" />
        <br />

        <asp:Label ID="Label1" AssociatedControlID="SumTextBox" runat="server" Text="Total Köpsumma"></asp:Label>
        <br />     
        <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
        
        <asp:Label ID="krlabel" AssociatedControlID="SumTextBox" runat="server" Text="kr" ></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SumTextBox" Text="*" ErrorMessage="Ange en total köpsumma" Display="Dynamic" CssClass="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="SumTextBox" Text="*" ErrorMessage="Ange en total köpsumma större än noll" Display="Dynamic" Operator="GreaterThan" Type="Integer" ValueToCompare="0" CssClass="Red"></asp:CompareValidator>
        <br />
        <asp:Button ID="ReceiptButton" runat="server" Text="Beräkna" Onclick="ReceiptButton_Click" />
  
        <asp:Panel ID="RecieptPanel" runat="server" Visible="false">
       
            <h1>Ellen Nu</h1>
            <p>Telefon 070812345</p>
            <asp:PlaceHolder ID="SubPlaceholder" runat="server">
            <p>Öppettider 8-17</p>
            <p>--------------------------</p>
            <p>
                <asp:Literal ID="SubLiteral" runat="server">Totalt: {0:c}</asp:Literal>
            </p>

            </asp:PlaceHolder>

             <asp:PlaceHolder ID="DiscountPlaceHolder" runat="server">
            <p>
                <asp:Literal ID="DiscountLiteral" runat="server">Rabbatsats: {0:p00}</asp:Literal>
            </p>
            
            </asp:PlaceHolder>

            <asp:PlaceHolder ID="MoneyoffPlaceHolder" runat="server">
            <p>
                <asp:Literal ID="MoneyOffLiteral" runat="server">Rabatt: {0:c}</asp:Literal>
            </p>
            
            </asp:PlaceHolder>

            <asp:PlaceHolder ID="MoneyDuePlaceHolder" runat="server">
            <p>
                <asp:Literal ID="MoneyDueLiteral" runat="server">Att betala: {0:c}</asp:Literal>
            </p>
            
            </asp:PlaceHolder>

            <p>--------------------------</p>

            <p>ORD NR 12345678910</p>
            <p>VÄLKOMMEN ÅTER</p>
            <br />
            </asp:Panel>
            
        </div>     
    </form>
    <script src="Javascript/JavaScript.js"></script>
</body>
</html>
