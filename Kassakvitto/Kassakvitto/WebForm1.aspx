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
        <h1>Kassakvitto</h1>
        <p>Total Köpsumma</p>
        <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="kr" ></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SumTextBox" ErrorMessage="Ange en total köpsumma" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="SumTextBox" ErrorMessage="Ange en total köpsumma större än noll" Display="Dynamic" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <asp:Button ID="ReceiptButton" runat="server" Text="Beräkna" Onclick="ReceiptButton_Click"/>
    </div>
    </form>
    <script src="Javascript/JavaScript.js"></script>
</body>
</html>
